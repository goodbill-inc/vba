# Vba::ElectronicStatement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | The unique ID of the Debit/Credit being submitted.  For a debit it would be the Check # or ACH Trans ID and for a credit it would be the Deposit ID. | [optional] |
| **transaction_type** | **String** | For Checks set this value to \&quot;DEBIT\&quot;, for Deposits set this value to \&quot;CREDIT\&quot;. | [optional] |
| **transaction_date** | **Time** | The Check Date or Deposit date depending on Transaction_Type | [optional] |
| **transaction_amount** | **Float** | The Check Amount or Deposit Amount depending on Transaction_Type | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ElectronicStatement.new(
  transaction_id: null,
  transaction_type: null,
  transaction_date: null,
  transaction_amount: null
)
```

