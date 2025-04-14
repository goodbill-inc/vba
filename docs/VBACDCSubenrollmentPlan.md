# Vba::VBACDCSubenrollmentPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **group_coverage_start** | **Time** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **plan_start** | **Time** |  | [optional] |
| **plan_end** | **Time** |  | [optional] |
| **tier** | **String** |  | [optional] |
| **dollar_amount** | **Float** |  | [optional] |
| **use_volume_scale** | **Boolean** |  | [optional] |
| **paid_through** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **reason_id** | **Integer** |  | [optional] |
| **lt_c_daily_benefit_amount** | **Float** |  | [optional] |
| **lt_c_monthly_benefit_amount** | **Float** |  | [optional] |
| **lt_c_lifetime_max_days** | **Integer** |  | [optional] |
| **lt_c_lifetime_max_years** | **Integer** |  | [optional] |
| **lt_c_lifetime_max_amount** | **Float** |  | [optional] |
| **writing_commission_agency_rep_key** | **Integer** |  | [optional] |
| **application_received_date** | **Time** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBACDCSubenrollmentPlan.new(
  subscriber_id: null,
  group_id: null,
  division_id: null,
  group_coverage_start: null,
  start_date: null,
  plan_id: null,
  plan_start: null,
  plan_end: null,
  tier: null,
  dollar_amount: null,
  use_volume_scale: null,
  paid_through: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null,
  reason_id: null,
  lt_c_daily_benefit_amount: null,
  lt_c_monthly_benefit_amount: null,
  lt_c_lifetime_max_days: null,
  lt_c_lifetime_max_years: null,
  lt_c_lifetime_max_amount: null,
  writing_commission_agency_rep_key: null,
  application_received_date: null
)
```

