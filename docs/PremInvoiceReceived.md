# Vba::PremInvoiceReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_invoice_received_key** | **Integer** |  |  |
| **division_id** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **group_id** | **String** |  |  |
| **invoice_key** | **Integer** |  |  |
| **prem_payment_key** | **Integer** |  |  |
| **prem_rate_key** | **Integer** |  |  |
| **premium_received** | **Float** |  | [optional] |
| **premium_received_date** | **Time** |  | [optional] |
| **subscriber_id** | **String** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceReceived.new(
  prem_invoice_received_key: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  invoice_key: null,
  prem_payment_key: null,
  prem_rate_key: null,
  premium_received: null,
  premium_received_date: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

