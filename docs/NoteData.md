# Vba::NoteData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note_key** | **Integer** | Key value used to identify a specific note |  |
| **effective_date** | **Time** | Date the information in the note goes into effect | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **note_alert** | **Boolean** | Flag identifying if there is an alert associated with the note |  |
| **note_alert_end** | **Time** | Date the alert associated with a note terminates | [optional] |
| **note_category** | **String** | Identifies the &#39;Category&#39; of note. Note &#39;Category&#39; are configured within &#39;Note Configuration&#39;. | [optional] |
| **note_data** | **String** | Text data of the note. | [optional] |
| **note_priority** | **String** | Identifies the &#39;Priority&#39; of note. Note &#39;Priority&#39; are configured within &#39;Note Configuration&#39;. | [optional] |
| **note_subject** | **String** | Description of the note&#39;s subject. | [optional] |
| **note_type** | **String** | Identifies the &#39;Type&#39; of note. Note &#39;Types&#39; are configured within &#39;Note Configuration&#39;. | [optional] |
| **term_date** | **Time** | Date the information in the note terminates | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NoteData.new(
  note_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  note_alert: null,
  note_alert_end: null,
  note_category: null,
  note_data: null,
  note_priority: null,
  note_subject: null,
  note_type: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

