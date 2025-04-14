# Vba::CostContainZelisPoll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cost_contain_zelis_poll_key** | **Integer** |  |  |
| **batch_claim** | **Integer** |  |  |
| **batch_number** | **Integer** |  |  |
| **claim_queue_processor_key** | **Integer** |  | [optional] |
| **error_description** | **String** |  | [optional] |
| **poll_date** | **Time** |  | [optional] |
| **status** | **String** |  | [optional] |
| **transaction_id** | **String** |  |  |
| **zelis_result** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CostContainZelisPoll.new(
  cost_contain_zelis_poll_key: null,
  batch_claim: null,
  batch_number: null,
  claim_queue_processor_key: null,
  error_description: null,
  poll_date: null,
  status: null,
  transaction_id: null,
  zelis_result: null
)
```

