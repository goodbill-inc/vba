# Vba::PremInvoiceSubscriberDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** |  |  |
| **group_id** | **String** |  |  |
| **division_id** | **String** |  |  |
| **subscriber_id** | **String** |  |  |
| **prem_rate_key** | **Integer** |  |  |
| **dist_volume** | **Float** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **payee_id** | **String** |  | [optional] |
| **premium** | **Float** |  | [optional] |
| **premium_received** | **Float** |  | [optional] |
| **premium_waived** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **volume** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceSubscriberDetail.new(
  invoice_key: null,
  group_id: null,
  division_id: null,
  subscriber_id: null,
  prem_rate_key: null,
  dist_volume: null,
  entry_date: null,
  entry_user: null,
  payee_id: null,
  premium: null,
  premium_received: null,
  premium_waived: null,
  update_date: null,
  update_user: null,
  volume: null
)
```

