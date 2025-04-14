# Vba::ClaimQueueProcessorListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimQueueProcessor&gt;**](ClaimQueueProcessor.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueProcessorListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

