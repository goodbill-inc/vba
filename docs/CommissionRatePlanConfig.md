# Vba::CommissionRatePlanConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** |  | [optional] |
| **plan_description** | **String** |  | [optional] |
| **rates** | [**Array&lt;CommissionRateRate&gt;**](CommissionRateRate.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionRatePlanConfig.new(
  plan_id: null,
  plan_description: null,
  rates: null
)
```

