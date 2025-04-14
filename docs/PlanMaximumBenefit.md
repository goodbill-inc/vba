# Vba::PlanMaximumBenefit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanMaximum.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanMaximum.Benefit_Code value in parent table. |  |
| **max_id** | **String** | References the PlanMaximum.Max_ID value in the parent table. |  |
| **included_benefit_code** | **String** | Additional Benefit Code included in the Maximum. |  |

## Example

```ruby
require 'vba'

instance = Vba::PlanMaximumBenefit.new(
  plan_id: null,
  benefit_code: null,
  max_id: null,
  included_benefit_code: null
)
```

