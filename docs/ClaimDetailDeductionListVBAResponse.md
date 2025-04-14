# Vba::ClaimDetailDeductionListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimDetailDeduction&gt;**](ClaimDetailDeduction.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimDetailDeductionListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

