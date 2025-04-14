# Vba::PremRatePlanConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** |  | [optional] |
| **plan_description** | **String** |  | [optional] |
| **category_configs** | [**Array&lt;PremRateCategoryConfig&gt;**](PremRateCategoryConfig.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremRatePlanConfig.new(
  plan_id: null,
  plan_description: null,
  category_configs: null
)
```

