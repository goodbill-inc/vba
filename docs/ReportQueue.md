# Vba::ReportQueue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_queue_key** | **Integer** | ID of the report queue. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **queue_date** | **Time** | Date of the Queue. | [optional] |
| **queue_end** | **Time** | End of the Queue. | [optional] |
| **queue_printer** | **String** | Printer of the Queue. | [optional] |
| **queue_priority** | **Integer** | Priority of the Queue. | [optional] |
| **queue_start** | **Time** | Start of the Queue. | [optional] |
| **queue_status** | **String** | Status of the Queue. | [optional] |
| **queue_type** | **String** | Type of the Queue. | [optional] |
| **queue_user** | **String** | User of the Queue. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportQueue.new(
  report_queue_key: null,
  entry_date: null,
  entry_user: null,
  queue_date: null,
  queue_end: null,
  queue_printer: null,
  queue_priority: null,
  queue_start: null,
  queue_status: null,
  queue_type: null,
  queue_user: null,
  update_date: null,
  update_user: null
)
```

