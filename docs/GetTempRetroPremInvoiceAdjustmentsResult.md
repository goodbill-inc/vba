# Vba::GetTempRetroPremInvoiceAdjustmentsResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected** | **Integer** |  | [optional] |
| **invoice_key** | **Integer** |  | [optional] |
| **invoice_number** | **String** |  | [optional] |
| **invoice_date** | **Time** |  | [optional] |
| **billing_from** | **Time** |  | [optional] |
| **billing_thru** | **Time** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **prem_rate_key** | **Integer** |  | [optional] |
| **rate_description** | **String** |  | [optional] |
| **new_invoice_amount** | **Float** |  | [optional] |
| **current_invoice_amount** | **Float** |  | [optional] |
| **unassigned_adjustment_amount** | **Float** |  | [optional] |
| **adjustment_amount** | **Float** |  | [optional] |
| **reason_id** | **Integer** |  | [optional] |
| **volume** | **Float** |  | [optional] |
| **auto_adjust** | **Boolean** |  | [optional] |
| **assign_invoice_key** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GetTempRetroPremInvoiceAdjustmentsResult.new(
  selected: null,
  invoice_key: null,
  invoice_number: null,
  invoice_date: null,
  billing_from: null,
  billing_thru: null,
  group_id: null,
  division_id: null,
  prem_rate_key: null,
  rate_description: null,
  new_invoice_amount: null,
  current_invoice_amount: null,
  unassigned_adjustment_amount: null,
  adjustment_amount: null,
  reason_id: null,
  volume: null,
  auto_adjust: null,
  assign_invoice_key: null
)
```

