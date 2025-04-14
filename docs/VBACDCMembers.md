# Vba::VBACDCMembers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **relationship** | **String** |  | [optional] |
| **birth_date** | **Time** |  | [optional] |
| **date_enrolled** | **Time** |  | [optional] |
| **disenroll_date** | **Time** |  | [optional] |
| **sex** | **String** |  | [optional] |
| **adult_child** | **String** |  | [optional] |
| **other_insurance** | **Boolean** |  | [optional] |
| **adult_dependent** | **Boolean** |  | [optional] |
| **notes** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **alternate_id** | **String** |  | [optional] |
| **vi_p_flag** | **String** |  | [optional] |
| **pend_flag** | **String** |  | [optional] |
| **pend_ex_code** | **String** |  | [optional] |
| **other_name** | **String** |  | [optional] |
| **pre_exist** | **String** |  | [optional] |
| **pre_exist_end** | **Time** |  | [optional] |
| **pre_exist_ex_code** | **String** |  | [optional] |
| **student** | **String** |  | [optional] |
| **date_of_death** | **Time** |  | [optional] |
| **marital_status** | **String** |  | [optional] |
| **ethnicity_code** | **String** |  | [optional] |
| **middle_name** | **String** |  | [optional] |
| **name_suffix** | **String** |  | [optional] |
| **salutation** | **String** |  | [optional] |
| **ssn** | **String** |  | [optional] |
| **unique_id** | **String** |  | [optional] |
| **access_code** | **String** |  | [optional] |
| **student_end** | **Time** |  | [optional] |
| **adult_dependent_end** | **Time** |  | [optional] |
| **height** | **Integer** |  | [optional] |
| **weight** | **Integer** |  | [optional] |
| **continue_coverage** | **Boolean** |  | [optional] |
| **continue_coverage_ex_code** | **String** |  | [optional] |
| **continue_coverage_end_date** | **Time** |  | [optional] |
| **credible_coverage** | **Integer** |  | [optional] |
| **coverage_type** | **String** |  | [optional] |
| **use_member_plan_year** | **Boolean** |  | [optional] |
| **plan_year_frequency** | **Integer** |  | [optional] |
| **plan_year_frequency_type** | **String** |  | [optional] |
| **creditable_coverage_start** | **Time** |  | [optional] |
| **creditable_coverage_end** | **Time** |  | [optional] |
| **initial_volume_salary_pct** | **Boolean** |  | [optional] |
| **initial_volume** | **Float** |  | [optional] |
| **smoker** | **Boolean** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBACDCMembers.new(
  subscriber_id: null,
  member_seq: null,
  last_name: null,
  first_name: null,
  relationship: null,
  birth_date: null,
  date_enrolled: null,
  disenroll_date: null,
  sex: null,
  adult_child: null,
  other_insurance: null,
  adult_dependent: null,
  notes: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null,
  alternate_id: null,
  vi_p_flag: null,
  pend_flag: null,
  pend_ex_code: null,
  other_name: null,
  pre_exist: null,
  pre_exist_end: null,
  pre_exist_ex_code: null,
  student: null,
  date_of_death: null,
  marital_status: null,
  ethnicity_code: null,
  middle_name: null,
  name_suffix: null,
  salutation: null,
  ssn: null,
  unique_id: null,
  access_code: null,
  student_end: null,
  adult_dependent_end: null,
  height: null,
  weight: null,
  continue_coverage: null,
  continue_coverage_ex_code: null,
  continue_coverage_end_date: null,
  credible_coverage: null,
  coverage_type: null,
  use_member_plan_year: null,
  plan_year_frequency: null,
  plan_year_frequency_type: null,
  creditable_coverage_start: null,
  creditable_coverage_end: null,
  initial_volume_salary_pct: null,
  initial_volume: null,
  smoker: null
)
```

