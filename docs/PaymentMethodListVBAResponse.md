# Vba::PaymentMethodListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PaymentMethodListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

