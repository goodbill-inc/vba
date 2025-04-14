# Vba::ProcedureGroupListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProcedureGroup&gt;**](ProcedureGroup.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProcedureGroupListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

