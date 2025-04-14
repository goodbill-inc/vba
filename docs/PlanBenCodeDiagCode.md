# Vba::PlanBenCodeDiagCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefits.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefits.Benefit_Code value in parent table. |  |
| **diagnostic_code_type** | **String** | Specifies the numbering system used for the selected Diagnosis Codes. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **from_diag_code** | **String** | First Diagnosis Code for the specified range. This range allows the User to apply additional codes on top of the system-wide definition of codes for this benefit. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exclude** | **Boolean** | Indicates whether the specified range of codes is Included or Excluded. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **thru_diag_code** | **String** | Last Diagnosis Code for the specified range. This range allows the User to apply additional codes on top of the system-wide definition of codes for this benefit. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenCodeDiagCode.new(
  plan_id: null,
  benefit_code: null,
  diagnostic_code_type: null,
  from_diag_code: null,
  entry_date: null,
  entry_user: null,
  exclude: null,
  thru_diag_code: null,
  update_date: null,
  update_user: null
)
```

