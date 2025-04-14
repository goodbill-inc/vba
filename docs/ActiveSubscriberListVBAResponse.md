# Vba::ActiveSubscriberListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ActiveSubscriber&gt;**](ActiveSubscriber.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ActiveSubscriberListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

