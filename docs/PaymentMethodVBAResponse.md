# Vba::PaymentMethodVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PaymentMethodVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

