# Vba::CaseAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_attachment_key** | **Integer** | Identifier for the Case Attachment  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **attachment** | **String** | Where the Attachment is stored within the database | [optional] |
| **attachment_file** | **String** | the File Name for the Case Attachment | [optional] |
| **attachment_path** | **String** | The Path for the Case Attachment | [optional] |
| **case_attachment_type** | **String** | What type of Attachment this is | [optional] |
| **case_key** | **Integer** | Identifier of the case. This is the Case that has the attachment  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **comment** | **String** | User Managed field that displays the Comment for this Attachment | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CaseAttachment.new(
  case_attachment_key: null,
  attachment: null,
  attachment_file: null,
  attachment_path: null,
  case_attachment_type: null,
  case_key: null,
  comment: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

