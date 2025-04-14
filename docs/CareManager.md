# Vba::CareManager

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_manager_key** | **Integer** |  |  |
| **accepting_cases** | **Boolean** |  |  |
| **access_co_worker** | **Integer** |  | [optional] |
| **access_i_report_to** | **Integer** |  | [optional] |
| **access_report_to_me** | **Integer** |  | [optional] |
| **access_same_care_unit** | **Integer** |  | [optional] |
| **care_manager_type** | **String** |  | [optional] |
| **care_plan_all_fg** | **Boolean** |  |  |
| **care_type_all_fg** | **Boolean** |  |  |
| **case_threshold** | **Integer** |  | [optional] |
| **case_weight_threshold** | **Float** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareManager.new(
  care_manager_key: null,
  accepting_cases: null,
  access_co_worker: null,
  access_i_report_to: null,
  access_report_to_me: null,
  access_same_care_unit: null,
  care_manager_type: null,
  care_plan_all_fg: null,
  care_type_all_fg: null,
  case_threshold: null,
  case_weight_threshold: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null,
  user_id: null
)
```

