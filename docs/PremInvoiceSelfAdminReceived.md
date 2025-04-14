# Vba::PremInvoiceSelfAdminReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_invoice_self_admin_received_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **prem_invoice_self_admin_key** | **Integer** |  |  |
| **prem_payment_key** | **Integer** |  | [optional] |
| **premium_received** | **Float** |  | [optional] |
| **premium_received_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceSelfAdminReceived.new(
  prem_invoice_self_admin_received_key: null,
  entry_date: null,
  entry_user: null,
  prem_invoice_self_admin_key: null,
  prem_payment_key: null,
  premium_received: null,
  premium_received_date: null,
  update_date: null,
  update_user: null
)
```

