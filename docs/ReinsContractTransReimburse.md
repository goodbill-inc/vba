# Vba::ReinsContractTransReimburse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_trans_reimburse_key** | **Integer** | Unique identifier for each funding item used to reimburse claims on this reinsurance transaction. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **funding_key** | **Integer** | References the Funding.Funding_Key for this reimbursement. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **reins_contract_trans_key** | **Integer** | References the ReinsContractTrans.ReinsContractTrans_Key on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractTransReimburse.new(
  reins_contract_trans_reimburse_key: null,
  entry_date: null,
  entry_user: null,
  funding_key: null,
  reins_contract_trans_key: null,
  update_date: null,
  update_user: null
)
```

