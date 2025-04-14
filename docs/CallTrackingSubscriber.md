# Vba::CallTrackingSubscriber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_key** | **Integer** | ID assigned to the call. |  |
| **subscriber_id** | **String** | ID of the Subscriber associated with the call. |  |
| **member_seq** | **String** | Sequential identifier of the Member associated with the call. |  |

## Example

```ruby
require 'vba'

instance = Vba::CallTrackingSubscriber.new(
  call_key: null,
  subscriber_id: null,
  member_seq: null
)
```

