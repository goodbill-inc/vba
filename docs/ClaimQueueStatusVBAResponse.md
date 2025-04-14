# Vba::ClaimQueueStatusVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ClaimQueueStatus**](ClaimQueueStatus.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueStatusVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

