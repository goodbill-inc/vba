# Vba::DiagnosticCodeListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;DiagnosticCode&gt;**](DiagnosticCode.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DiagnosticCodeListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

