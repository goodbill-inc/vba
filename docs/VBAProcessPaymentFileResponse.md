# Vba::VBAProcessPaymentFileResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_created_count** | **Integer** |  | [optional] |
| **invoice_payment_posted_count** | **Integer** |  | [optional] |
| **invoice_closed_count** | **Integer** |  | [optional] |
| **invoice_left_open_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAProcessPaymentFileResponse.new(
  payment_created_count: null,
  invoice_payment_posted_count: null,
  invoice_closed_count: null,
  invoice_left_open_count: null
)
```

