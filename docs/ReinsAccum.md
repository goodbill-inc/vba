# Vba::ReinsAccum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_key** | **Integer** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **subscriber_id** | **String** | No longer in use. |  |
| **member_seq** | **String** | No longer in use. |  |
| **claim_number** | **Integer** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **batch_claim** | **Integer** | No longer in use. | [optional] |
| **batch_number** | **Integer** | No longer in use. | [optional] |
| **billed_price** | **Float** | No longer in use. | [optional] |
| **co_ins_amt** | **Float** | No longer in use. | [optional] |
| **co_pay_amt** | **Float** | No longer in use. | [optional] |
| **deductible_amt** | **Float** | No longer in use. | [optional] |
| **entry_date** | **Time** | No longer in use. | [optional] |
| **entry_user** | **String** | No longer in use. | [optional] |
| **not_covered_amt** | **Float** | No longer in use. | [optional] |
| **paid_amt** | **Float** | No longer in use. | [optional] |
| **plan_price** | **Float** | No longer in use. | [optional] |
| **reins_criteria_type** | **String** | No longer in use. | [optional] |
| **running_total** | **Float** | No longer in use. | [optional] |
| **update_date** | **Time** | No longer in use. | [optional] |
| **update_user** | **String** | No longer in use. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsAccum.new(
  reins_contract_key: null,
  subscriber_id: null,
  member_seq: null,
  claim_number: null,
  batch_claim: null,
  batch_number: null,
  billed_price: null,
  co_ins_amt: null,
  co_pay_amt: null,
  deductible_amt: null,
  entry_date: null,
  entry_user: null,
  not_covered_amt: null,
  paid_amt: null,
  plan_price: null,
  reins_criteria_type: null,
  running_total: null,
  update_date: null,
  update_user: null
)
```

