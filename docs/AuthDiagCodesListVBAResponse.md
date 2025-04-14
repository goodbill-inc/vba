# Vba::AuthDiagCodesListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AuthDiagCodes&gt;**](AuthDiagCodes.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthDiagCodesListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

