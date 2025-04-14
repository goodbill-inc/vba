# Vba::CarePlanCustomValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_plan_custom_value_key** | **Integer** |  |  |
| **care_plan_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **i_d_code** | **String** |  |  |
| **required** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CarePlanCustomValue.new(
  care_plan_custom_value_key: null,
  care_plan_key: null,
  entry_date: null,
  entry_user: null,
  i_d_code: null,
  required: null,
  update_date: null,
  update_user: null
)
```

