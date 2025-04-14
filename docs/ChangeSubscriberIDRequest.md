# Vba::ChangeSubscriberIDRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user for which this request is executed on behalf of. |  |
| **current_subscriber_id** | **String** | The current Subscriber_ID that will be changed. |  |
| **new_subscriber_id** | **String** | The new Subscriber_ID |  |

## Example

```ruby
require 'vba'

instance = Vba::ChangeSubscriberIDRequest.new(
  user_id: null,
  current_subscriber_id: null,
  new_subscriber_id: null
)
```

