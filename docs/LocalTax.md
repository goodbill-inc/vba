# Vba::LocalTax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **local_tax_code** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::LocalTax.new(
  local_tax_code: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

