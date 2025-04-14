# Vba::CarePlanScore

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_plan_score_key** | **Integer** |  |  |
| **care_plan_score_seq** | **Integer** |  |  |
| **care_plan_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **from_score** | **Float** |  | [optional] |
| **score_description** | **String** |  | [optional] |
| **score_operator** | **String** |  | [optional] |
| **thru_score** | **Float** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CarePlanScore.new(
  care_plan_score_key: null,
  care_plan_score_seq: null,
  care_plan_key: null,
  entry_date: null,
  entry_user: null,
  from_score: null,
  score_description: null,
  score_operator: null,
  thru_score: null,
  update_date: null,
  update_user: null
)
```

