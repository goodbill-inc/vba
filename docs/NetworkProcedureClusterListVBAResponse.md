# Vba::NetworkProcedureClusterListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;NetworkProcedureCluster&gt;**](NetworkProcedureCluster.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NetworkProcedureClusterListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

