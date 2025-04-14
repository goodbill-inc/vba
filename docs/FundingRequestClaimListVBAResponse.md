# Vba::FundingRequestClaimListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;FundingRequestClaim&gt;**](FundingRequestClaim.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingRequestClaimListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

