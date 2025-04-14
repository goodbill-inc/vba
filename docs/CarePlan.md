# Vba::CarePlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_plan_key** | **Integer** |  |  |
| **care_type** | **String** |  | [optional] |
| **care_weight** | **Float** |  | [optional] |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CarePlan.new(
  care_plan_key: null,
  care_type: null,
  care_weight: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

