# Vba::GroupVolumeNested

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **division_configs** | [**Array&lt;GroupVolumeDivisionConfig&gt;**](GroupVolumeDivisionConfig.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupVolumeNested.new(
  group_id: null,
  group_name: null,
  division_configs: null
)
```

