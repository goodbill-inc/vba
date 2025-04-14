# Vba::DiagnosticCodeTypeListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;DiagnosticCodeType&gt;**](DiagnosticCodeType.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DiagnosticCodeTypeListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

