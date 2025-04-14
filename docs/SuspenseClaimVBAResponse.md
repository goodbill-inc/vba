# Vba::SuspenseClaimVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**SuspenseClaim**](SuspenseClaim.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SuspenseClaimVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

