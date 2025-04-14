# Vba::FeeSchedProcedureGroupAdjust

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_sched_procedure_group_adjust_key** | **Integer** | Unique identifier assigned to the procedure group adjustment.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **adjust_pct** | **Float** | Percentage that the service line will be adjusted after it has been priced by the ‘Fee Schedule’. | [optional] |
| **adjust_repeat** | **Integer** | Number of times the associated rule will be applied before moving onto the next sequence. | [optional] |
| **adjust_rule** | **String** | [doesn&#39;t exist] | [optional] |
| **adjust_seq** | **Integer** | Sequential identifier that determines the order of adjudication for each rule. (Seq. 01 will be applied first and so forth.)  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **effective_date** | **Time** | Date when the adjustment will begin/began applying to claims. This date will be compared to the date of service on the claim. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **fee_sched** | **String** | Unique name given to the Fee Scheudle. |  |
| **procedure_code1** | **Boolean** | Identifies which procedure code field within the claim that adjudication should attempt to match.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **procedure_code2** | **Boolean** | Identifies which procedure code field within the claim that adjudication should attempt to match.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **procedure_group** | **Integer** | Identifies the procedure group to which the associated rule will be applied.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FeeSchedProcedureGroupAdjust.new(
  fee_sched_procedure_group_adjust_key: null,
  adjust_pct: null,
  adjust_repeat: null,
  adjust_rule: null,
  adjust_seq: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  fee_sched: null,
  procedure_code1: null,
  procedure_code2: null,
  procedure_group: null,
  update_date: null,
  update_user: null
)
```

