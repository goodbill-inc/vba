# Vba::DiagnosticCodeTypeVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**DiagnosticCodeType**](DiagnosticCodeType.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DiagnosticCodeTypeVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

