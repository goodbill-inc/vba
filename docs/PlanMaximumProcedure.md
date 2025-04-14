# Vba::PlanMaximumProcedure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanMaximum.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanMaximum.Benefit_Code value in parent table. |  |
| **max_id** | **String** | References the PlanMaximum.Max_ID value in the parent table. |  |
| **from_procedure** | **String** | Beginning of the range of procedure codes that are applied to the Plan Maximum. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **procedure_code1** | **Boolean** | Indicates whether the Procedure Code range applies to the primary procedure on any claim that this maximum is applied to. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **procedure_code2** | **Boolean** | Indicates whether the Procedure Code range applies to the secondary procedure on any claim that this maximum is appled to. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **thru_procedure** | **String** | End of the range of procedure codes that are applied to the Plan Maximum. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanMaximumProcedure.new(
  plan_id: null,
  benefit_code: null,
  max_id: null,
  from_procedure: null,
  entry_date: null,
  entry_user: null,
  procedure_code1: null,
  procedure_code2: null,
  thru_procedure: null,
  update_date: null,
  update_user: null
)
```

