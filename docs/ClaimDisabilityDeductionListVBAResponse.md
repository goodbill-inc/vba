# Vba::ClaimDisabilityDeductionListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimDisabilityDeduction&gt;**](ClaimDisabilityDeduction.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimDisabilityDeductionListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

