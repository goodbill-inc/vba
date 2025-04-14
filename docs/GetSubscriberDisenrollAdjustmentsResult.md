# Vba::GetSubscriberDisenrollAdjustmentsResult

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
| **rate_type** | **String** |  | [optional] |
| **rate_description** | **String** |  | [optional] |
| **invoice_days** | **Integer** |  | [optional] |
| **pro_rate_days** | **Integer** |  | [optional] |
| **invoice_amount** | **Float** |  | [optional] |
| **invoice_received** | **Float** |  | [optional] |
| **invoice_amount_per_day** | **Float** |  | [optional] |
| **pro_rate_amount** | **Float** |  | [optional] |
| **adjustment_amount** | **Float** |  | [optional] |
| **auto_adjust** | **Integer** |  | [optional] |
| **assign_invoice_key** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GetSubscriberDisenrollAdjustmentsResult.new(
  selected: null,
  invoice_key: null,
  invoice_number: null,
  invoice_date: null,
  billing_from: null,
  billing_thru: null,
  group_id: null,
  division_id: null,
  prem_rate_key: null,
  rate_type: null,
  rate_description: null,
  invoice_days: null,
  pro_rate_days: null,
  invoice_amount: null,
  invoice_received: null,
  invoice_amount_per_day: null,
  pro_rate_amount: null,
  adjustment_amount: null,
  auto_adjust: null,
  assign_invoice_key: null
)
```

