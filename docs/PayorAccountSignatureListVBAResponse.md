# Vba::PayorAccountSignatureListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;PayorAccountSignature&gt;**](PayorAccountSignature.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PayorAccountSignatureListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

