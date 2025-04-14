# Vba::ClaimBatchPlanListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimBatchPlan&gt;**](ClaimBatchPlan.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimBatchPlanListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

