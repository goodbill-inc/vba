# Vba::ClaimQueueProcessorVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ClaimQueueProcessor**](ClaimQueueProcessor.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueProcessorVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

