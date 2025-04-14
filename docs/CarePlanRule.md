# Vba::CarePlanRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_plan_rule_key** | **Integer** |  |  |
| **care_plan_key** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CarePlanRule.new(
  care_plan_rule_key: null,
  care_plan_key: null,
  description: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

