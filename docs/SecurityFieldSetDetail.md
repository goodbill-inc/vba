# Vba::SecurityFieldSetDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_field_set_id** | **String** | Unique identifier for the Security Field Set entry. |  |
| **security_field_id** | **String** | Unique identifier for the Security Field entry. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **field_access** | **String** | Type of Field access that is applied.  Only two values:  VIEW or VIEW_MASK.  VIEW locks the field down but shows the information in the field.  VIEW_MASK allow the field to be viewed only but also the information is masked. | [optional] |
| **field_mask** | **String** | Identifies the type of Mask applied to this feild.  For now, only two values apply:  SSN or ALL.  SSN applies a standard mask of xxx-xx-9977 vs a mask of ALL which sets the field to ***** regardless of value being stored. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityFieldSetDetail.new(
  security_field_set_id: null,
  security_field_id: null,
  entry_date: null,
  entry_user: null,
  field_access: null,
  field_mask: null,
  update_date: null,
  update_user: null
)
```

