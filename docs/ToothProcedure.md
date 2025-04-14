# Vba::ToothProcedure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tooth_procedure_key** | **Integer** | Key value identifying a specfic dental procedure code range and action Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date the procedure code range and tooth action relationship become effective | [optional] |
| **end_date** | **Time** | Date the procedure code range and tooth action relationship terminate | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **from_procedure** | **String** | First procedure code on the range covered by the tooth action | [optional] |
| **thru_procedure** | **String** | Last procedure code on the range covered by the tooth action | [optional] |
| **tooth_action** | **String** | Code identifying the action taken on a tooth, including cleaning, filling, bridge, crown, extraction, prosthesis or root canal | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ToothProcedure.new(
  tooth_procedure_key: null,
  effective_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  from_procedure: null,
  thru_procedure: null,
  tooth_action: null,
  update_date: null,
  update_user: null
)
```

