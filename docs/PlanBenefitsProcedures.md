# Vba::PlanBenefitsProcedures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefitsPlace.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefitsPlace.Benefit_Code value in parent table. |  |
| **procedure_code** | **String** | References the PlanBenefitsPlace.Place_Code value in parent table. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **pend_ex_code** | **String** | Ex Code that will be applied to the designated range of procedure codes. |  |
| **procedure_code_thru** | **String** | End of the range of procedure codes that the selected Ex Code will apply to. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitsProcedures.new(
  plan_id: null,
  benefit_code: null,
  procedure_code: null,
  entry_date: null,
  entry_user: null,
  pend_ex_code: null,
  procedure_code_thru: null,
  update_date: null,
  update_user: null
)
```

