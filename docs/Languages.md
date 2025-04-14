# Vba::Languages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language_id** | **String** | Identifier for the language |  |
| **description** | **String** | Description string for the language used in reports | [optional] |
| **display** | **String** | Display string for the language used in lists | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Languages.new(
  language_id: null,
  description: null,
  display: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

