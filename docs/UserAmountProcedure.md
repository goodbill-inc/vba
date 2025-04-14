# Vba::UserAmountProcedure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_amount_procedure_key** | **Integer** | ID of the amount procedure. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **procedure_from** | **String** | Identifies the starting procedure code of the acceptable procedure code range. ‘Amount Limits’ can be further defined by a range of procedure codes. Selecting an ‘Amount Limits’ line will populate any existing procedure code limits for that line within this area. | [optional] |
| **procedure_thru** | **String** | Identifies the ending procedure code of the acceptable procedure code range. ‘Amount Limits’ can be further defined by a range of procedure codes. Selecting an ‘Amount Limits’ line will populate any existing procedure code limits for that line within this area. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **user_amount_key** | **Integer** | ID of the User amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::UserAmountProcedure.new(
  user_amount_procedure_key: null,
  entry_date: null,
  entry_user: null,
  procedure_from: null,
  procedure_thru: null,
  update_date: null,
  update_user: null,
  user_amount_key: null
)
```

