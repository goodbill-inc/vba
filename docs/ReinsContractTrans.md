# Vba::ReinsContractTrans

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_trans_key** | **Integer** | Unique identifier for each transaction being generated on this contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | The description of this transaction. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system | [optional] |
| **entry_user** | **String** | Date record was first added to the system | [optional] |
| **member_seq** | **String** | The member on this transaction. | [optional] |
| **reins_contract_key** | **Integer** | References the ReinsContract.ReinsContract_Key on parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **submitted_date** | **Time** | The date the reinsurance claims (transaction) was submitted to the reinsurance carrier. | [optional] |
| **subscriber_id** | **String** | The member on this transaction. | [optional] |
| **transaction_amount** | **Float** | The total amount of the claims attached to this transaction. | [optional] |
| **transaction_claim_number** | **String** | The transaction ID associated with this reinsurance claim. | [optional] |
| **transaction_date** | **Time** | The date the transaction was generated. | [optional] |
| **transaction_status** | **String** | The status of this transaction as it is in the process of being reimbursed. | [optional] |
| **transaction_type** | **String** | The type of transaction being created. This is a spec transaction or agg transaction. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system | [optional] |
| **update_user** | **String** | Date the record was last updated in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractTrans.new(
  reins_contract_trans_key: null,
  description: null,
  entry_date: null,
  entry_user: null,
  member_seq: null,
  reins_contract_key: null,
  submitted_date: null,
  subscriber_id: null,
  transaction_amount: null,
  transaction_claim_number: null,
  transaction_date: null,
  transaction_status: null,
  transaction_type: null,
  update_date: null,
  update_user: null
)
```

