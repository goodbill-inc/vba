# Vba::PlanBenefitsDiagnosis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefits.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefits.Benefit_Code value in parent table. |  |
| **diagnostic_code_type** | **String** | Specifies the numbering system used for the selected Diagnosis Codes. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **diagnostic_code** | **String** | First Diagnosis Code for the specified range. This allows the User to apply the specified Ex Code to any claims containing a diagnosis code within the defined range. |  |
| **diagnostic_code_thru** | **String** | Last Diagnosis Code for the specified range. This allows the User to apply the specified Ex Code to any claims containing a diagnosis code within the defined range. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | This is the Ex Code that will be applied to any claims containing a diagnosis code within the defined range. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitsDiagnosis.new(
  plan_id: null,
  benefit_code: null,
  diagnostic_code_type: null,
  diagnostic_code: null,
  diagnostic_code_thru: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  update_date: null,
  update_user: null
)
```

