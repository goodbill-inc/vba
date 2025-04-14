# Vba::SecurityFieldSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_field_set_id** | **String** | Unique identifier for the Security Field Set entry. |  |
| **description** | **String** | Description of the Security Field Set. | [optional] |
| **display** | **String** | Display name of the Security Field Set. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityFieldSet.new(
  security_field_set_id: null,
  description: null,
  display: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

