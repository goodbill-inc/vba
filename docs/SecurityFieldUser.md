# Vba::SecurityFieldUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_field_user_key** | **Integer** | Unique identifier for the Security Field User entry. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **field_access** | **String** | Type of Field access that is applied.  Only two values:  VIEW or VIEW_MASK.  VIEW locks the field down but shows the information in the field.  VIEW_MASK allow the field to be viewed only but also the information is masked. | [optional] |
| **field_mask** | **String** | Identifies the type of Mask applied to this feild.  For now, only two values apply:  SSN or ALL.  SSN applies a standard mask of xxx-xx-9977 vs a mask of ALL which sets the field to ***** regardless of value being stored. | [optional] |
| **security_field_set_id** | **String** | Unique identifier for the Security Field Set entry. | [optional] |
| **security_field_id** | **String** | Unique identifier for the Security Field entry. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **user_id** | **String** | ID of the User whom the level is being set for. |  |

## Example

```ruby
require 'vba'

instance = Vba::SecurityFieldUser.new(
  security_field_user_key: null,
  entry_date: null,
  entry_user: null,
  field_access: null,
  field_mask: null,
  security_field_set_id: null,
  security_field_id: null,
  update_date: null,
  update_user: null,
  user_id: null
)
```

