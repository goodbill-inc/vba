# Vba::SecurityField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_field_id** | **String** | Unique identifier for the Security Field entry. |  |
| **column_name** | **String** | Name of the Column, without table, containing values for the Security Field entry. | [optional] |
| **display** | **String** | This is what the user sees on the front-end for this field entry. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **table_name** | **String** | Name of Table containing values for the Security Field entry. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityField.new(
  security_field_id: null,
  column_name: null,
  display: null,
  entry_date: null,
  entry_user: null,
  table_name: null,
  update_date: null,
  update_user: null
)
```

