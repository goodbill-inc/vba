# Vba::ClaimQueueResultListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimQueueResult&gt;**](ClaimQueueResult.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueResultListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

