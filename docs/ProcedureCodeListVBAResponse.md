# Vba::ProcedureCodeListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProcedureCode&gt;**](ProcedureCode.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProcedureCodeListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

