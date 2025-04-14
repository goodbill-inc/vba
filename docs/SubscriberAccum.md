# Vba::SubscriberAccum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Subscribers.Subscriber_ID value on the parent record. |  |
| **group_id** | **String** | Identifier assigned to the Group associated with this Prior Accumulator. |  |
| **plan_year** | **String** | Plan Year associated with this Subscriber Accumulator. |  |
| **plan_type** | **String** | Plan Type associated with this Subscriber Accumulator. |  |
| **benefit_code** | **String** | Benefit Code associated with this Subscriber Accumulator. |  |
| **added_accum** | **String** | Identifies that this Accumulator is an Added Accumulator. | [optional] |
| **allowed_amt** | **Float** | Total Allowed amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **allowed_amt_net** | **Float** | Allowed amount that has been used In Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **allowed_amt_oon** | **Float** | Allowed amount that has been used Out of Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_used** | **Float** | Total amount of benefit that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_used_net** | **Float** | Net amount of benefit that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_used_oon** | **Float** | Amount of benefit that has been used Out of Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **billed_amt** | **Float** | Amount that has been billed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **billed_amt_net** | **Float** | Amount that has been billed In Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **billed_amt_oon** | **Float** | Amount that has been billed Out of Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_b_amt** | **Float** | Total Coordination of Benefits amount that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_b_amt_net** | **Float** | Net Coordination of Benefits amount that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_b_amt_oon** | **Float** | Coordination of Benefits amount that has been used Out of Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **coins_amt** | **Float** | Total amount of Coinsurance that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **coins_amt_net** | **Float** | Net amount of Coinsurance that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **coins_amt_oon** | **Float** | Amount of Coinsurance that has been used Out of Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **copay_amt** | **Float** | Total amount of Copay that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **copay_amt_net** | **Float** | Net amount of Copay that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **copay_amt_oon** | **Float** | Amount of Copay that has been used Out of Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_credit_oon_used** | **Float** | Amount of deductible credit that has been used Out of Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_credit_ppo_used** | **Float** | Net amount of deductible credit that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_credit_used** | **Float** | Total amount of deductible credit that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_ppo_used** | **Float** | Net amount of deductible that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **deductible_used** | **Float** | Total amount of deductible that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **deductible_used_oon** | **Float** | Amount of deductible that has been used Out of Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **not_covered_amt** | **Float** | Total amount that is not covered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **not_covered_amt_net** | **Float** | Net amount that is not covered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **not_covered_oon** | **Float** | Out of Network amount that is not covered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **out_of_pocket** | **Float** | Total Out of Pocket amount that has been used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **out_of_pocket_net** | **Float** | Amount of Out of Pocket that has been used In Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **out_of_pocket_oon** | **Float** | Amount of Out of Pocket that has been used Out of Network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberAccum.new(
  subscriber_id: null,
  group_id: null,
  plan_year: null,
  plan_type: null,
  benefit_code: null,
  added_accum: null,
  allowed_amt: null,
  allowed_amt_net: null,
  allowed_amt_oon: null,
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
  ded_credit_oon_used: null,
  ded_credit_ppo_used: null,
  ded_credit_used: null,
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

