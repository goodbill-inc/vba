# Vba::PlanProcedureAgeModifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_procedure_age_modifier_key** | **Integer** | Unique identifier for each Procedure Age Modifier rule. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **modifier1** | **String** | The first modifier being applied to the age restriction. | [optional] |
| **modifier2** | **String** | The second modifier being applied to the age restriction. | [optional] |
| **modifier3** | **String** | The third modifier being applied to the age restriction. | [optional] |
| **modifier4** | **String** | The fourth modifier being applied to the age restriction. | [optional] |
| **no_modifier** | **Boolean** | Identifies that the age restriction has no modifier. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **procedure_age_key** | **Integer** | References the PlanProcedureAge.PlanProcedureAge_Key value in parent table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanProcedureAgeModifier.new(
  plan_procedure_age_modifier_key: null,
  entry_date: null,
  entry_user: null,
  modifier1: null,
  modifier2: null,
  modifier3: null,
  modifier4: null,
  no_modifier: null,
  procedure_age_key: null,
  update_date: null,
  update_user: null
)
```

