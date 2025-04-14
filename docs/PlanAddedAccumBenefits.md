# Vba::PlanAddedAccumBenefits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanAddedAccum.Plan_ID for this Added Accumulator. |  |
| **accum_name** | **String** | References the PlanAddedAccum.Accum_Name for this Added Accumulator. |  |
| **benefit_code** | **String** | References the BenefitCodes.Benefit_Code for this Added Accumulator. |  |

## Example

```ruby
require 'vba'

instance = Vba::PlanAddedAccumBenefits.new(
  plan_id: null,
  accum_name: null,
  benefit_code: null
)
```

