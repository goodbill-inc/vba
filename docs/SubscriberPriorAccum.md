# Vba::SubscriberPriorAccum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Subscribers.Subscriber_ID value on the parent record. |  |
| **group_id** | **String** | Identifier assigned to the Group associated with this Prior Accumulator. |  |
| **division_id** | **String** | Identifier assigned to the Division associated with this Prior Accumulator. |  |
| **plan_year** | **String** | Plan Year tied to this Prior Accumulator. |  |
| **plan_type** | **String** | Plan Type tied to this Prior Accumulator. |  |
| **benefit_code** | **String** | Benefit Code associated with this Prior Accumulator. |  |
| **added_accum** | **String** | Identifies that this Accumulator is an Added Accumulator. | [optional] |
| **allowed_amt** | **Float** | Total Allowed amount. |  |
| **allowed_amt_net** | **Float** | Allowed amount that has been used In Network. |  |
| **allowed_amt_oon** | **Float** | Allowed amount that has been used Out of Network. |  |
| **auto_generated** | **Boolean** | Identifies that the associated prior accumulator was automatically generated. |  |
| **benefit_used** | **Float** | Total amount of benefit that has been used. |  |
| **benefit_used_net** | **Float** | Amount of benefit that has been used In Network. |  |
| **benefit_used_oon** | **Float** | Amount of benefit that has been used Out of Network. |  |
| **billed_amt** | **Float** | Amount that has been billed. |  |
| **billed_amt_net** | **Float** | Amount that has been billed In Network. |  |
| **billed_amt_oon** | **Float** | Amount that has been billed Out of Network. |  |
| **co_b_amt** | **Float** | Total Coordination of Benefits amount that has been used. |  |
| **co_b_amt_net** | **Float** | Coordination of Benefits amount that has been used In Network. |  |
| **co_b_amt_oon** | **Float** | Coordination of Benefits amount that has been used Out of Network. |  |
| **coins_amt** | **Float** | Total amount of Coinsurance that has been used. |  |
| **coins_amt_net** | **Float** | Amount of Coinsurance that has been used In Network. |  |
| **coins_amt_oon** | **Float** | Amount of Coinsurance that has been used Out of Network. |  |
| **copay_amt** | **Float** | Total amount of Copay that has been used. |  |
| **copay_amt_net** | **Float** | Amount of Copay that has been used In Network. |  |
| **copay_amt_oon** | **Float** | Amount of Copay that has been used Out of Network. |  |
| **currency_id** | **String** | Indicates the currency used for this Accumulator. | [optional] |
| **ded_ppo_used** | **Float** | Amount of deductible that has been used In Network. |  |
| **deductible_used** | **Float** | Total amount of deductible that has been used. |  |
| **deductible_used_oon** | **Float** | Amount of deductible that has been used Out of Network. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **not_covered_amt** | **Float** | Total amount that is not covered. |  |
| **not_covered_amt_net** | **Float** | In Network amount that is not covered. |  |
| **not_covered_oon** | **Float** | Out of Network amount that is not covered. |  |
| **out_of_pocket** | **Float** | Total Out of Pocket amount that has been used. |  |
| **out_of_pocket_net** | **Float** | Amount of Out of Pocket that has been used In Network. |  |
| **out_of_pocket_oon** | **Float** | Amount of Out of Pocket that has been used Out of Network. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberPriorAccum.new(
  subscriber_id: null,
  group_id: null,
  division_id: null,
  plan_year: null,
  plan_type: null,
  benefit_code: null,
  added_accum: null,
  allowed_amt: null,
  allowed_amt_net: null,
  allowed_amt_oon: null,
  auto_generated: null,
  benefit_used: null,
  benefit_used_net: null,
  benefit_used_oon: null,
  billed_amt: null,
  billed_amt_net: null,
  billed_amt_oon: null,
  co_b_amt: null,
  co_b_amt_net: null,
  co_b_amt_oon: null,
  coins_amt: null,
  coins_amt_net: null,
  coins_amt_oon: null,
  copay_amt: null,
  copay_amt_net: null,
  copay_amt_oon: null,
  currency_id: null,
  ded_ppo_used: null,
  deductible_used: null,
  deductible_used_oon: null,
  entry_date: null,
  entry_user: null,
  not_covered_amt: null,
  not_covered_amt_net: null,
  not_covered_oon: null,
  out_of_pocket: null,
  out_of_pocket_net: null,
  out_of_pocket_oon: null,
  update_date: null,
  update_user: null
)
```

