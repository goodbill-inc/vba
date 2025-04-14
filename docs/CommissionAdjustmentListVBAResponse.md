# Vba::CommissionAdjustmentListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;CommissionAdjustment&gt;**](CommissionAdjustment.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionAdjustmentListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

