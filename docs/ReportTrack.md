# Vba::ReportTrack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_track_key** | **Integer** | ID of the report tracking.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **priority** | **String** | Identifies the priority of the report. | [optional] |
| **received_date** | **Time** | Date when the report was received. | [optional] |
| **received_status** | **String** | Identifies the &#39;Receieved Status&#39; of the report. | [optional] |
| **received_user** | **String** | ID of the User who received the report. | [optional] |
| **report_queue_detail_key** | **Integer** | ID of the report queue detail.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **sent_date** | **Time** | Identifies the date when the report was sent. | [optional] |
| **sent_status** | **String** | Identifies the sent status of the report. | [optional] |
| **sent_to** | **String** | Identifies the &#39;Sent To&#39; subject of the report. | [optional] |
| **sent_user** | **String** | ID of the User who sent the report. | [optional] |
| **tracking_status** | **String** | Identifies the tracking status of the report. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportTrack.new(
  report_track_key: null,
  entry_date: null,
  entry_user: null,
  priority: null,
  received_date: null,
  received_status: null,
  received_user: null,
  report_queue_detail_key: null,
  sent_date: null,
  sent_status: null,
  sent_to: null,
  sent_user: null,
  tracking_status: null,
  update_date: null,
  update_user: null
)
```

