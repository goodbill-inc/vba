# Vba::GroupVolumePlanConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** |  | [optional] |
| **plan_description** | **String** |  | [optional] |
| **benefit_configs** | [**Array&lt;GroupVolumeBenefitConfig&gt;**](GroupVolumeBenefitConfig.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupVolumePlanConfig.new(
  plan_id: null,
  plan_description: null,
  benefit_configs: null
)
```

