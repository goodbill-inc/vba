# Vba::ReportQueueLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_queue_log_key** | **Integer** | Key field identifying a specific report queue log entry  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **log_action** | **String** | Identifier of the action that was performed for a report or for queue maintenance | [optional] |
| **log_date** | **Time** | Date of the action that was performed for a report or for queue maintenance | [optional] |
| **log_message** | **String** | Message associated with the action that was performed for a report or for queue maintenance | [optional] |
| **log_result** | **String** | Result of the action that was performed for a report or for queue maintenance | [optional] |
| **report_queue_detail_key** | **Integer** | ID of the report queue detail  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **shared_object_id** | **Integer** | Allows the logging of IDs for any shared objects for the report. Not normally used.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportQueueLog.new(
  report_queue_log_key: null,
  entry_date: null,
  entry_user: null,
  log_action: null,
  log_date: null,
  log_message: null,
  log_result: null,
  report_queue_detail_key: null,
  shared_object_id: null,
  update_date: null,
  update_user: null
)
```

