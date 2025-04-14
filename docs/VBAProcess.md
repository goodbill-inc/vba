# Vba::VBAProcess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vba_process_key** | **Integer** | Unique Identifier for the VBAProcess table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_process_type** | **String** | Type used to determine the process that triggers. |  |
| **description** | **String** | Description of the process. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **process_end** | **Time** | Date and time the process ended. | [optional] |
| **process_result** | **String** | Result of the process. | [optional] |
| **process_start** | **Time** | Date and time the process started. | [optional] |
| **process_user** | **String** | User that started the process. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAProcess.new(
  vba_process_key: null,
  vba_process_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  process_end: null,
  process_result: null,
  process_start: null,
  process_user: null,
  update_date: null,
  update_user: null
)
```

