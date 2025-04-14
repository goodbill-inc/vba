# Vba::PlanBenefitCascade

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | Unique identifier assigned to the Plan. |  |
| **parent_benefit_code** | **String** | Originating Benefit Code of the cascading benefit. |  |
| **cascade_benefit_code** | **String** | Target Benefit Code of the cascading benefit. |  |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitCascade.new(
  plan_id: null,
  parent_benefit_code: null,
  cascade_benefit_code: null
)
```

