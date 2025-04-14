# Vba::PlanBenCodeProcCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefits.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefits.Benefit_Code value in parent table. |  |
| **from_procedure** | **String** | First Procedure Code for the specified range. This range allows the User to apply additional codes on top of the system-wide definition of codes for this benefit. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exclude** | **Boolean** | Indicates whether the specified range of codes is included or excluded. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_from_procedure** | **String** | No longer in use. | [optional] |
| **override_thru_procedure** | **String** | No longer in use. | [optional] |
| **thru_procedure** | **String** | Last Procedure Code for the specified range. This range allows the User to apply additional codes on top of the system-wide definition of codes for this benefit. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenCodeProcCode.new(
  plan_id: null,
  benefit_code: null,
  from_procedure: null,
  entry_date: null,
  entry_user: null,
  exclude: null,
  override_from_procedure: null,
  override_thru_procedure: null,
  thru_procedure: null,
  update_date: null,
  update_user: null
)
```

