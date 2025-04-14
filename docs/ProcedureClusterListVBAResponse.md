# Vba::ProcedureClusterListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProcedureCluster&gt;**](ProcedureCluster.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProcedureClusterListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

