# Vba::NotePriority

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note_priority** | **String** | Name of the &#39;Note Priority&#39;. |  |
| **description** | **String** | Description of the &#39;Note Priority&#39;. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **priority_order** | **Integer** | Identifies the hierarchy of the note. Notes will be assigned based on priority in ascending order (1 being highest priority). | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NotePriority.new(
  note_priority: null,
  description: null,
  entry_date: null,
  entry_user: null,
  priority_order: null,
  update_date: null,
  update_user: null
)
```

