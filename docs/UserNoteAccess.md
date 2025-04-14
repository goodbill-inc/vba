# Vba::UserNoteAccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_note_access_key** | **Integer** | ID of the User note access. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **note_access** | **Integer** | Identifies the access level that will be applied to the selected note type. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **note_type** | **String** | Identifies the note type that the selected level of access will be applied to. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **user_id** | **String** | ID of the User to whom the note access will be applied. |  |

## Example

```ruby
require 'vba'

instance = Vba::UserNoteAccess.new(
  user_note_access_key: null,
  entry_date: null,
  entry_user: null,
  note_access: null,
  note_type: null,
  update_date: null,
  update_user: null,
  user_id: null
)
```

