# Vba::DiagnosticCodeGroupVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**DiagnosticCodeGroup**](DiagnosticCodeGroup.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DiagnosticCodeGroupVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

