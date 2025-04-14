# Vba::PremInvoicePayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** |  |  |
| **prem_payment_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **payment_posted** | **Float** |  | [optional] |
| **payment_posted_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoicePayment.new(
  invoice_key: null,
  prem_payment_key: null,
  entry_date: null,
  entry_user: null,
  payment_posted: null,
  payment_posted_date: null,
  update_date: null,
  update_user: null
)
```

