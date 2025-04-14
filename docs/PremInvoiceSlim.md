# Vba::PremInvoiceSlim

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** | Unique identifier for the Invoice | [optional] |
| **invoice_number** | **String** | Number assigned to this Invoice | [optional] |
| **invoice_date** | **Time** | Date of the Invoice | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceSlim.new(
  invoice_key: null,
  invoice_number: null,
  invoice_date: null
)
```

