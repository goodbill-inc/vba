# Vba::USERFIELDSECURITY

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **column_name** | **String** |  | [optional] |
| **field_access** | **String** |  | [optional] |
| **field_mask** | **String** |  | [optional] |
| **field_privilege_level** | **Integer** |  | [optional] |
| **security_field_id** | **String** |  |  |
| **table_name** | **String** |  | [optional] |
| **user_id** | **String** |  |  |

## Example

```ruby
require 'vba'

instance = Vba::USERFIELDSECURITY.new(
  column_name: null,
  field_access: null,
  field_mask: null,
  field_privilege_level: null,
  security_field_id: null,
  table_name: null,
  user_id: null
)
```

