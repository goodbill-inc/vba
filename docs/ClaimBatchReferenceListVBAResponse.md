# Vba::ClaimBatchReferenceListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimBatchReference&gt;**](ClaimBatchReference.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimBatchReferenceListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

