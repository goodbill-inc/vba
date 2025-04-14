# Vba::SecurityAreaOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_area_override_key** | **Integer** | The ‘Overrides’ tab currently has no functionality. |  |
| **override_all** | **Boolean** | The ‘Overrides’ tab currently has no functionality. |  |
| **override_exclude** | **Boolean** | The ‘Overrides’ tab currently has no functionality. |  |
| **override_field** | **String** | The ‘Overrides’ tab currently has no functionality. | [optional] |
| **override_value** | **String** | The ‘Overrides’ tab currently has no functionality. Name of the Group that the Override will be applied to. | [optional] |
| **security_area** | **String** | The ‘Overrides’ tab currently has no functionality. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityAreaOverride.new(
  security_area_override_key: null,
  override_all: null,
  override_exclude: null,
  override_field: null,
  override_value: null,
  security_area: null
)
```

