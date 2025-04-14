# Vba::SuspenseClaimListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;SuspenseClaim&gt;**](SuspenseClaim.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SuspenseClaimListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

