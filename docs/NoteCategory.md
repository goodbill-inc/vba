# Vba::NoteCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note_category** | **String** | Name of the &#39;Note Category&#39;. |  |
| **allow_note_alert** | **Boolean** | Checking this option allows the system to generate alerts for this &#39;Note Category&#39;. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the &#39;Note Category&#39;. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **key_column** | **String** | Internal use only.  This is a comma separated list of fields used to create the NoteSource record for a new or existing note. | [optional] |
| **location** | **String** | Identifier of the location for the &#39;Note Category&#39;. | [optional] |
| **navigate_object** | **String** | Internal use only.  Holds the navigation object used when navigating through the VBASoftware application. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NoteCategory.new(
  note_category: null,
  allow_note_alert: null,
  description: null,
  entry_date: null,
  entry_user: null,
  key_column: null,
  location: null,
  navigate_object: null,
  update_date: null,
  update_user: null
)
```

