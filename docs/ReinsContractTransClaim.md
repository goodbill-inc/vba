# Vba::ReinsContractTransClaim

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_trans_key** | **Integer** | References the ReinsContractTrans.ReinsContractTrans_Key on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_number** | **Integer** | The claim (Claim.Claim_Number) that is part of this reinsurance transaction. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **agg_spec_ded_reimbursed** | **Float** | The amount of this claim being applied to the aggregating spec deductible if any. | [optional] |
| **claim_transaction_not_covered** | **Float** | The amount of this claim not covered by the reinsurance carrier. | [optional] |
| **claim_transaction_reimbursed** | **Float** | The amount of this claim being reimbursed. | [optional] |
| **claim_transaction_status** | **String** | The status of this claim on the transaction. | [optional] |
| **claim_paid_amount_on_trans** | **Float** | The paid amount of the claim. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system | [optional] |
| **entry_user** | **String** | Date record was first added to the system | [optional] |
| **spec_ded_reimbursed** | **Float** | The amount of this claim being applied to the spec deductible if any. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system | [optional] |
| **update_user** | **String** | Date the record was last updated in the system | [optional] |
| **domestic_claim** | **Boolean** |  | [optional] |
| **criteria_key** | **Integer** |  | [optional] |
| **domestic_reduction_pct** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractTransClaim.new(
  reins_contract_trans_key: null,
  claim_number: null,
  agg_spec_ded_reimbursed: null,
  claim_transaction_not_covered: null,
  claim_transaction_reimbursed: null,
  claim_transaction_status: null,
  claim_paid_amount_on_trans: null,
  entry_date: null,
  entry_user: null,
  spec_ded_reimbursed: null,
  update_date: null,
  update_user: null,
  domestic_claim: null,
  criteria_key: null,
  domestic_reduction_pct: null
)
```

