# Vba::PlanBenefitPBM

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefits.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefits.Benefit_Code value in parent table. |  |
| **pb_m_type** | **String** | User-defined type of pharmacy benefit copay. This information is pulled into the Member SPD matrix on the Member screen. |  |
| **co_pay_amount** | **Float** | Amount of Copay that the Member is responsible for. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitPBM.new(
  plan_id: null,
  benefit_code: null,
  pb_m_type: null,
  co_pay_amount: null
)
```

