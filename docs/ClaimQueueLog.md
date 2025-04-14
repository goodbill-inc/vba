# Vba::ClaimQueueLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_queue_log_key** | **Integer** |  |  |
| **batch_claim** | **Integer** |  |  |
| **batch_number** | **Integer** |  |  |
| **claim_queue_processor_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **log_action** | **String** |  | [optional] |
| **log_date** | **Time** |  | [optional] |
| **log_message** | **String** |  | [optional] |
| **log_result** | **String** |  | [optional] |
| **shared_object_id** | **Integer** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueLog.new(
  claim_queue_log_key: null,
  batch_claim: null,
  batch_number: null,
  claim_queue_processor_key: null,
  entry_date: null,
  entry_user: null,
  log_action: null,
  log_date: null,
  log_message: null,
  log_result: null,
  shared_object_id: null,
  update_date: null,
  update_user: null
)
```

