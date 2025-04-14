# Vba::GetPlanMaxClaimDetailResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_number** | **Integer** |  | [optional] |
| **claim_seq** | **String** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **benefit_code** | **String** |  | [optional] |
| **provider_id** | **String** |  | [optional] |
| **visit** | **Integer** |  | [optional] |
| **invalid_visit** | **Integer** |  | [optional] |
| **service_date** | **Time** |  | [optional] |
| **month_service_date** | **Integer** |  | [optional] |
| **year_service_date** | **Integer** |  | [optional] |
| **procedure_code** | **String** |  | [optional] |
| **units** | **Float** |  | [optional] |
| **service_days** | **Integer** |  | [optional] |
| **tooth_number** | **Integer** |  | [optional] |
| **co_b_savings** | **Float** |  | [optional] |
| **co_b_savings_used** | **Float** |  | [optional] |
| **billed_price** | **Float** |  | [optional] |
| **plan_price** | **Float** |  | [optional] |
| **co_pay_amt** | **Float** |  | [optional] |
| **co_ins_amt** | **Float** |  | [optional] |
| **deductible_amt** | **Float** |  | [optional] |
| **not_covered_amt** | **Float** |  | [optional] |
| **paid_amt** | **Float** |  | [optional] |
| **oo_p_amt** | **Float** |  | [optional] |
| **valid_visits** | **Integer** |  | [optional] |
| **network_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GetPlanMaxClaimDetailResult.new(
  claim_number: null,
  claim_seq: null,
  plan_id: null,
  benefit_code: null,
  provider_id: null,
  visit: null,
  invalid_visit: null,
  service_date: null,
  month_service_date: null,
  year_service_date: null,
  procedure_code: null,
  units: null,
  service_days: null,
  tooth_number: null,
  co_b_savings: null,
  co_b_savings_used: null,
  billed_price: null,
  plan_price: null,
  co_pay_amt: null,
  co_ins_amt: null,
  deductible_amt: null,
  not_covered_amt: null,
  paid_amt: null,
  oo_p_amt: null,
  valid_visits: null,
  network_id: null
)
```

