# Vba::DisenrollLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disenroll_log_key** | **Integer** | ID for the specific disenroll log record Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **coverage_start** | **Time** | Coverage start date of the enrollment in effect at the time fo the disenroll | [optional] |
| **disenroll_date** | **Time** | Date when the disenroll is effective Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **division_id** | **String** | Division ID of the enrollment in effect at the time fo the disenroll | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | Group ID of the enrollment in effect at the time fo the disenroll | [optional] |
| **member_seq** | **String** | Sequential identifier assigned to the Member |  |
| **plan_id** | **String** | Holds the plan the patient is enrolled in and that benefits are assigned. | [optional] |
| **reason_id** | **Integer** | ID for the disenroll reason code | [optional] |
| **subscriber_id** | **String** | Unique system assigned number for the Subscriber |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DisenrollLog.new(
  disenroll_log_key: null,
  coverage_start: null,
  disenroll_date: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  member_seq: null,
  plan_id: null,
  reason_id: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

