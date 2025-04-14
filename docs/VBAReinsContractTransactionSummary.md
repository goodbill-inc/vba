# Vba::VBAReinsContractTransactionSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_trans_key** | **Integer** |  | [optional] |
| **reins_contract_key** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **transaction_type** | **String** |  | [optional] |
| **transaction_status** | **String** |  | [optional] |
| **transaction_claim_number** | **String** |  | [optional] |
| **transaction_amount** | **Float** |  | [optional] |
| **transaction_date** | **Time** |  | [optional] |
| **submitted_date** | **Time** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **initial_transaction** | **Boolean** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAReinsContractTransactionSummary.new(
  reins_contract_trans_key: null,
  reins_contract_key: null,
  description: null,
  subscriber_id: null,
  member_seq: null,
  transaction_type: null,
  transaction_status: null,
  transaction_claim_number: null,
  transaction_amount: null,
  transaction_date: null,
  submitted_date: null,
  first_name: null,
  last_name: null,
  initial_transaction: null
)
```

