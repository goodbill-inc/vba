# Vba::ClaimInvoicePaymentListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimInvoicePayment&gt;**](ClaimInvoicePayment.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimInvoicePaymentListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

