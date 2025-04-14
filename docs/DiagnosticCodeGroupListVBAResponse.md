# Vba::DiagnosticCodeGroupListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;DiagnosticCodeGroup&gt;**](DiagnosticCodeGroup.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DiagnosticCodeGroupListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

