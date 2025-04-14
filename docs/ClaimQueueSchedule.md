# Vba::ClaimQueueSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_queue_schedule_key** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **queue_event_id** | **Integer** |  | [optional] |
| **queue_sql** | **String** |  | [optional] |
| **queue_type** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueSchedule.new(
  claim_queue_schedule_key: null,
  description: null,
  entry_date: null,
  entry_user: null,
  queue_event_id: null,
  queue_sql: null,
  queue_type: null,
  update_date: null,
  update_user: null
)
```

