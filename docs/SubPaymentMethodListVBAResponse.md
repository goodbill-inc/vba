# Vba::SubPaymentMethodListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;SubPaymentMethod&gt;**](SubPaymentMethod.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubPaymentMethodListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

