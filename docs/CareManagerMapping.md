# Vba::CareManagerMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_care_manager_key** | **Integer** |  |  |
| **child_care_manager_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareManagerMapping.new(
  parent_care_manager_key: null,
  child_care_manager_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

