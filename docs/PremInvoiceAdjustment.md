# Vba::PremInvoiceAdjustment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_adjustment_key** | **Integer** |  |  |
| **adjustment_amount** | **Float** |  | [optional] |
| **adjustment_comment** | **String** |  | [optional] |
| **adjustment_prem_rate_key** | **Integer** |  | [optional] |
| **adjustment_reason** | **Integer** |  | [optional] |
| **adjustment_received** | **Float** |  | [optional] |
| **auto_adjust** | **Boolean** |  |  |
| **avoid_retro** | **Boolean** |  |  |
| **division_id** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **invoice_key** | **Integer** |  | [optional] |
| **min_max_adjust** | **Boolean** |  |  |
| **negative_adjustment** | **Boolean** |  |  |
| **prem_rate_key** | **Integer** |  | [optional] |
| **retro_adjustment_invoice_key** | **Integer** |  | [optional] |
| **self_admin_adj** | **Boolean** |  |  |
| **subscriber_id** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **use_premium** | **Boolean** |  |  |
| **volume** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceAdjustment.new(
  invoice_adjustment_key: null,
  adjustment_amount: null,
  adjustment_comment: null,
  adjustment_prem_rate_key: null,
  adjustment_reason: null,
  adjustment_received: null,
  auto_adjust: null,
  avoid_retro: null,
  division_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  invoice_key: null,
  min_max_adjust: null,
  negative_adjustment: null,
  prem_rate_key: null,
  retro_adjustment_invoice_key: null,
  self_admin_adj: null,
  subscriber_id: null,
  update_date: null,
  update_user: null,
  use_premium: null,
  volume: null
)
```

