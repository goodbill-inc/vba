# Vba::ClaimQueueProcessTrack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** |  |  |
| **process_in_flight_count** | **Integer** |  | [optional] |
| **process_status** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueProcessTrack.new(
  subscriber_id: null,
  process_in_flight_count: null,
  process_status: null
)
```

