# Vba::UnitConversion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_unit** | **String** |  |  |
| **to_unit** | **String** |  |  |
| **conv_factor** | **Float** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::UnitConversion.new(
  from_unit: null,
  to_unit: null,
  conv_factor: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

