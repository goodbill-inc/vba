# Vba::PremInvoiceAdjReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_invoice_adj_received_key** | **Integer** |  |  |
| **adjustment_received** | **Float** |  | [optional] |
| **adjustment_received_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **invoice_adjustment_key** | **Integer** |  | [optional] |
| **prem_payment_key** | **Integer** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceAdjReceived.new(
  prem_invoice_adj_received_key: null,
  adjustment_received: null,
  adjustment_received_date: null,
  entry_date: null,
  entry_user: null,
  invoice_adjustment_key: null,
  prem_payment_key: null,
  update_date: null,
  update_user: null
)
```

