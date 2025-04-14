# Vba::CareUnitCareManager

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_unit_key** | **Integer** |  |  |
| **care_manager_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **factor** | **Float** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareUnitCareManager.new(
  care_unit_key: null,
  care_manager_key: null,
  entry_date: null,
  entry_user: null,
  factor: null,
  update_date: null,
  update_user: null
)
```

