# Vba::VBACDCSubenrollmentRider

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
| **benefit_code** | **String** |  | [optional] |
| **from_date** | **Time** |  | [optional] |
| **thru_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **volume** | **Float** |  | [optional] |
| **employee_contribution** | **Float** |  | [optional] |
| **employee_contribution_pct** | **Boolean** |  | [optional] |
| **external_id** | **String** |  | [optional] |
| **use_volume_scale** | **Boolean** |  | [optional] |
| **billing_member_seq_override** | **String** |  | [optional] |
| **initial_volume** | **Float** |  | [optional] |
| **initial_volume_salary_pct** | **Boolean** |  | [optional] |
| **use_employee_age** | **Boolean** |  | [optional] |
| **original_commission_agency_rep_key** | **Integer** |  | [optional] |
| **new_commission_agency_rep_key** | **Integer** |  | [optional] |
| **use_gi_volume_min_max** | **Boolean** |  | [optional] |
| **lt_c_daily_benefit_amount** | **Float** |  | [optional] |
| **lt_c_monthly_benefit_amount** | **Float** |  | [optional] |
| **lt_c_lifetime_max_days** | **Integer** |  | [optional] |
| **lt_c_lifetime_max_years** | **Integer** |  | [optional] |
| **lt_c_lifetime_max_amount** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBACDCSubenrollmentRider.new(
  subscriber_id: null,
  group_id: null,
  division_id: null,
  group_coverage_start: null,
  start_date: null,
  plan_id: null,
  plan_start: null,
  benefit_code: null,
  from_date: null,
  thru_date: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null,
  volume: null,
  employee_contribution: null,
  employee_contribution_pct: null,
  external_id: null,
  use_volume_scale: null,
  billing_member_seq_override: null,
  initial_volume: null,
  initial_volume_salary_pct: null,
  use_employee_age: null,
  original_commission_agency_rep_key: null,
  new_commission_agency_rep_key: null,
  use_gi_volume_min_max: null,
  lt_c_daily_benefit_amount: null,
  lt_c_monthly_benefit_amount: null,
  lt_c_lifetime_max_days: null,
  lt_c_lifetime_max_years: null,
  lt_c_lifetime_max_amount: null
)
```

