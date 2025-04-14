# Vba::DisabilityEventField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_name** | **String** | Name of the Field for the Event. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **field_display** | **String** | Display name of the Field for the Event. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DisabilityEventField.new(
  field_name: null,
  entry_date: null,
  entry_user: null,
  field_display: null,
  update_date: null,
  update_user: null
)
```

