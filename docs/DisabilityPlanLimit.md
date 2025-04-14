# Vba::DisabilityPlanLimit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disability_plan_limit_key** | **Integer** | Unique Identifier for the DisabilityPlanLimit table. |  |
| **age_from** | **Integer** | Starting Age the plan limit applies to. | [optional] |
| **age_thru** | **Integer** | Ending Age the plan limit applies to. | [optional] |
| **age_type** | **String** | Age Type the plan limit applies to. | [optional] |
| **disability_type** | **String** | Identifies the type of disability (injury or illness). | [optional] |
| **limit** | **Integer** | Plan limit to apply. | [optional] |
| **limit_type** | **String** | Type of plan limit. | [optional] |
| **limit_type_from** | **String** | Starting value the plan limit applies to. | [optional] |
| **plan_id** | **String** | Plan ID of the plan to limit. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DisabilityPlanLimit.new(
  disability_plan_limit_key: null,
  age_from: null,
  age_thru: null,
  age_type: null,
  disability_type: null,
  limit: null,
  limit_type: null,
  limit_type_from: null,
  plan_id: null
)
```

