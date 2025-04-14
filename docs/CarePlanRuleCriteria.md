# Vba::CarePlanRuleCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_plan_rule_criteria_key** | **Integer** |  |  |
| **care_plan_rule_key** | **Integer** |  |  |
| **criteria_care_plan_detail_key** | **Integer** |  | [optional] |
| **criteria_from_date** | **Time** |  | [optional] |
| **criteria_from_decimal** | **Float** |  | [optional] |
| **criteria_from_number** | **Integer** |  | [optional] |
| **criteria_from_string** | **String** |  | [optional] |
| **criteria_operator** | **String** |  | [optional] |
| **criteria_thru_date** | **Time** |  | [optional] |
| **criteria_thru_decimal** | **Float** |  | [optional] |
| **criteria_thru_number** | **Integer** |  | [optional] |
| **criteria_thru_string** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **question_care_plan_detail_key** | **Integer** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CarePlanRuleCriteria.new(
  care_plan_rule_criteria_key: null,
  care_plan_rule_key: null,
  criteria_care_plan_detail_key: null,
  criteria_from_date: null,
  criteria_from_decimal: null,
  criteria_from_number: null,
  criteria_from_string: null,
  criteria_operator: null,
  criteria_thru_date: null,
  criteria_thru_decimal: null,
  criteria_thru_number: null,
  criteria_thru_string: null,
  entry_date: null,
  entry_user: null,
  question_care_plan_detail_key: null,
  update_date: null,
  update_user: null
)
```

