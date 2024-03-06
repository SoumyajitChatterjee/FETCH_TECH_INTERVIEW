import pandas as pd
import pandera as pa


class RewardReceiptValidator:
    def __init__(self, receipts, users, brands):
        self.receipts_df = pd.read_json(receipts, lines = True)
        self.users_df = pd.read_json(users, lines = True)
        self.brands_df = pd.read_json(brands, lines = True)

    def flatten_receipts(self, receipt_df):
        receipts_df_exploded = receipt_df.explode("rewardsReceiptItemList")
        df_without_rewards = receipts_df_exploded.drop('rewardsReceiptItemList', axis=1)
        df_rewardsReceiptItemList = pd.json_normalize(receipts_df_exploded['rewardsReceiptItemList'])
        result = pd.concat([df_without_rewards.reset_index(drop=True),df_rewardsReceiptItemList.reset_index(drop=True)], axis=1)
        return result

    def count_missing_barcodes(self):
        flatten_receipts_df = self.flatten_receipts(self.receipts_df)
        print(f"Number of records with missing barcodes in receipts are :{flatten_receipts_df['barcode'].isnull().sum()}")

    def count_duplicate_users(self):
        duplicated_users = self.users_df['_id'].duplicated().sum()
        print(f"Number of duplicated user ids are: {duplicated_users}")
    
    def validate_barcode_mapping_accuracy(self):
        flattened_receipt_df = self.flatten_receipts(self.receipts_df)
        self.brands_df['barcode'] = self.brands_df['barcode'].astype(str)
        flattened_receipt_df['barcode'] = flattened_receipt_df['barcode'].astype(str)
        barcodes_df = pd.merge(flattened_receipt_df,self.brands_df, on='barcode', how='left')
        print(f"Number of records with no barcode mapping: {barcodes_df['name'].isna().sum()}")
        
def main():
    data_validator = RewardReceiptValidator("receipts.json", "users.json", "brands.json")
    data_validator.count_missing_barcodes()
    data_validator.validate_barcode_mapping_accuracy()
    data_validator.count_duplicate_users()
    

if __name__ == '__main__':
    main()




    