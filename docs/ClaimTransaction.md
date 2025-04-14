# Vba::ClaimTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_transaction_key** | **Integer** |  |  |
| **batch_claim** | **Integer** |  | [optional] |
| **batch_number** | **Integer** |  | [optional] |
| **claim_status_category_code** | **String** |  | [optional] |
| **claim_status_code** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **transaction_batch_claim** | **Integer** |  | [optional] |
| **transaction_batch_number** | **Integer** |  | [optional] |
| **transaction_claim_status** | **String** |  | [optional] |
| **transaction_date** | **Time** |  |  |
| **transaction_type** | **String** |  | [optional] |
| **transaction_user** | **String** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimTransaction.new(
  claim_transaction_key: null,
  batch_claim: null,
  batch_number: null,
  claim_status_category_code: null,
  claim_status_code: null,
  entry_date: null,
  entry_user: null,
  transaction_batch_claim: null,
  transaction_batch_number: null,
  transaction_claim_status: null,
  transaction_date: null,
  transaction_type: null,
  transaction_user: null,
  update_date: null,
  update_user: null
)
```

