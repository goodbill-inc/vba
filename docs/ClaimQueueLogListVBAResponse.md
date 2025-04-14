# Vba::ClaimQueueLogListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimQueueLog&gt;**](ClaimQueueLog.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueLogListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

