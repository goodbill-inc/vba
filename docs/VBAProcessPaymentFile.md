# Vba::VBAProcessPaymentFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_file_format_key** | **Integer** | Used in both Rate Copy and Rate Change | [optional] |
| **payment_file** | **String** | This MUST be a .csv file with the following columns (Include Headers with field name):          &lt;div&gt;  Payment_Type - Use a value from the PremPaymentType table (can be null)  Payment_Batch - Source system indicator for the payment batch (can be null)  Payment_Batch_Seq - Source system indicator for the payment batch sequence (can be null)  Payment_Account - The name of the account that the payment is being made from - required  Payment_ID - The unique identifier for the payment - required  Payment_Date - The date the payment was made in YYYY-MM-DD format - required  Payment_Amount - The amount of the payment - required  Payment_Name - The name of the person or entity making the payment - required  Group_ID - If this payment is for the entire group, this should be the Group_ID - can be null  Division_ID - If this payment is for the entire division, this should be the Division_ID - can be null  Subscriber_ID - If this payment is for a specific subscriber, this should be the Subscriber_ID - can be null  Payor_ID - The Payor_ID to be set on the created payments - required  Account_Key - The Account_Key to be set on the created payments - required  Invoice_Key - If this payment is to be applied to a specific invoice, this should be the Invoice_Key - can be null  PremRate_Key - If this payment is to be applied to a specific rate, this should be the PremRate_Key - can be null  PremPayment_Key - If this payment is to be applied to a specific payment, this should be the PremPayment_Key - can be null&lt;/div&gt; | [optional] |
| **payor_id** | **String** | The Payor to be set on the created payments | [optional] |
| **account_key** | **Integer** | The Account to be set on the created payments | [optional] |
| **create_invoice_payments** | **Boolean** | Indicates that payments should be created from the payment file | [optional] |
| **apply_payments** | **Boolean** | Indicates that payments should be applied to invoices | [optional] |
| **close_invoices** | **Boolean** | Indicates that invoices should be closed after payment is applied | [optional] |
| **only_close_satisfied_invoices** | **Boolean** | Indicates that only fully satisfied invoices should be closed | [optional] |
| **user_id** | **String** | User ID performing the Payment File import | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAProcessPaymentFile.new(
  payment_file_format_key: null,
  payment_file: null,
  payor_id: null,
  account_key: null,
  create_invoice_payments: null,
  apply_payments: null,
  close_invoices: null,
  only_close_satisfied_invoices: null,
  user_id: null
)
```

