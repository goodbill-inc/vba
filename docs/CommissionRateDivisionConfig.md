# Vba::CommissionRateDivisionConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **division_id** | **String** |  | [optional] |
| **division_name** | **String** |  | [optional] |
| **plan_configs** | [**Array&lt;CommissionRatePlanConfig&gt;**](CommissionRatePlanConfig.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionRateDivisionConfig.new(
  division_id: null,
  division_name: null,
  plan_configs: null
)
```

