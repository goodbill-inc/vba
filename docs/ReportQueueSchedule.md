# Vba::ReportQueueSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_queue_schedule_key** | **Integer** | Key field identifying a specific report queue schedule  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **email_address** | **String** | Optional field for storing the associated email address | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **event_id** | **Integer** | ID of the report event that will be performed  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **report_queue_key** | **Integer** | ID of the report queue.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **save_location** | **String** | Optional field for storing the location where the report will be saved | [optional] |
| **schedule_type** | **String** | Optional field for storing the type of report schedule | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportQueueSchedule.new(
  report_queue_schedule_key: null,
  email_address: null,
  entry_date: null,
  entry_user: null,
  event_id: null,
  report_queue_key: null,
  save_location: null,
  schedule_type: null,
  update_date: null,
  update_user: null
)
```

