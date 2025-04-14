# Vba::CareManagerCarePlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_manager_key** | **Integer** |  |  |
| **care_plan_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareManagerCarePlan.new(
  care_manager_key: null,
  care_plan_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

