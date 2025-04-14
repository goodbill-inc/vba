# Vba::ProcedureCodeSetListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProcedureCodeSet&gt;**](ProcedureCodeSet.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProcedureCodeSetListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

