# Vba::ReinsContractTransClaimDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_trans_claim_detail_key** | **Integer** | Unique identifer for each claim reinsurance level. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_code** | **String** | The benefit codes on the associated claim that are part of this reinsurance level. | [optional] |
| **claim_number** | **Integer** | The claim that is part of this reinsurance level. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **deductible_pct** | **Float** | The reinsurance level deductible percent applied on this specific claim. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **paid_amt** | **Float** | The paid amount of the claim. | [optional] |
| **reins_contract_trans_key** | **Integer** | References the ReinsContract.ReinsContract_Key on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **reins_level_from** | **Float** | The reinsurance level range. | [optional] |
| **reins_level_thru** | **Float** | The reinsurance level range. | [optional] |
| **reins_paid** | **Float** | The amount reinsurance has paid for this claim at this reinsurance level. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractTransClaimDetail.new(
  reins_contract_trans_claim_detail_key: null,
  benefit_code: null,
  claim_number: null,
  deductible_pct: null,
  entry_date: null,
  entry_user: null,
  paid_amt: null,
  reins_contract_trans_key: null,
  reins_level_from: null,
  reins_level_thru: null,
  reins_paid: null,
  update_date: null,
  update_user: null
)
```

