# Vba::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **Integer** | ID of the event. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_audit_event** | **Boolean** | Flag to indicate if the event triggers a Claim Audit. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **completion_date** | **Time** | Date the Event was Completed. | [optional] |
| **completion_percent** | **Float** | Current Percentage that the Event has Completed | [optional] |
| **due_date** | **Time** | Due Date of the Event | [optional] |
| **end_date** | **Time** | End Date of the Event | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **event_processor** | **String** | Object used when processing the event | [optional] |
| **event_type** | **String** | Identifier for the type of event | [optional] |
| **meta_data** | **String** | Meta data pertaining to the overall event | [optional] |
| **next_scheduled_date** | **Time** | Date when the &#39;Assigned User&#39; will receive the next event reminder. | [optional] |
| **next_scheduled_time** | **Time** | Date when the event is due. | [optional] |
| **priority** | **String** | Indicates the level of priority being assigned to the event. | [optional] |
| **process_automation_event** | **Boolean** | Flag to indicate if the event triggers a Report Series. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **reminder** | **Boolean** | Indicates that the &#39;Assigned User&#39; should receive a reminder regarding the event. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **reminder_event_id** | **Integer** | Event ID of the Reminder | [optional] |
| **report_series_key** | **Integer** | The key of the Report Series this Event trigger. | [optional] |
| **start_date** | **Time** | Start Date of the Event | [optional] |
| **status** | **String** | Identifies the current status of the event. | [optional] |
| **subject** | **String** | Description of the event subject. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **user_group_key** | **Integer** | Key value identifying the User Group to whom the event is assigned | [optional] |
| **user_id** | **String** | ID of the User to whom the event is assigned. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Event.new(
  event_id: null,
  claim_audit_event: null,
  completion_date: null,
  completion_percent: null,
  due_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  event_processor: null,
  event_type: null,
  meta_data: null,
  next_scheduled_date: null,
  next_scheduled_time: null,
  priority: null,
  process_automation_event: null,
  reminder: null,
  reminder_event_id: null,
  report_series_key: null,
  start_date: null,
  status: null,
  subject: null,
  update_date: null,
  update_user: null,
  user_group_key: null,
  user_id: null
)
```

