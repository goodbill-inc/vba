# Vba::ClaimQueueProcessor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_queue_processor_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **processor_batch_claim** | **Integer** |  | [optional] |
| **processor_batch_number** | **Integer** |  | [optional] |
| **processor_check_in** | **Time** |  | [optional] |
| **processor_so_count** | **Integer** |  | [optional] |
| **processor_status** | **String** |  | [optional] |
| **processor_subscriber_id** | **String** |  | [optional] |
| **processor_timer** | **Integer** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueProcessor.new(
  claim_queue_processor_key: null,
  entry_date: null,
  entry_user: null,
  processor_batch_claim: null,
  processor_batch_number: null,
  processor_check_in: null,
  processor_so_count: null,
  processor_status: null,
  processor_subscriber_id: null,
  processor_timer: null,
  update_date: null,
  update_user: null
)
```

