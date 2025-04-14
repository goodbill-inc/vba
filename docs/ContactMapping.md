# Vba::ContactMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_contact_key** | **Integer** |  |  |
| **child_contact_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ContactMapping.new(
  parent_contact_key: null,
  child_contact_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

