# Vba::NoteAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachment_key** | **Integer** | Key value identifying an attachment to a note  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **attachment** | **String** | Attachment data assocaited with a note | [optional] |
| **attachment_file** | **String** | Name of the file that has been uploaded as an attachment. | [optional] |
| **attachment_path** | **String** | Path of the file that has been uploaded as an attachment. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **note_key** | **Integer** | Key value identifying the note that attachment is associated with  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NoteAttachment.new(
  attachment_key: null,
  attachment: null,
  attachment_file: null,
  attachment_path: null,
  entry_date: null,
  entry_user: null,
  note_key: null,
  update_date: null,
  update_user: null
)
```

