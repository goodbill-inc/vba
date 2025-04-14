# Vba::CommissionRateNested

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **division_configs** | [**Array&lt;CommissionRateDivisionConfig&gt;**](CommissionRateDivisionConfig.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionRateNested.new(
  group_id: null,
  group_name: null,
  division_configs: null
)
```

