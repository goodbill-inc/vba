# Vba::ClaimQueueDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_queue_key** | **Integer** |  |  |
| **batch_number** | **Integer** |  |  |
| **batch_claim** | **Integer** |  |  |
| **claim_queue_processor_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **queue_result** | **String** |  | [optional] |
| **queue_result_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueDetail.new(
  claim_queue_key: null,
  batch_number: null,
  batch_claim: null,
  claim_queue_processor_key: null,
  entry_date: null,
  entry_user: null,
  queue_result: null,
  queue_result_date: null,
  update_date: null,
  update_user: null
)
```

