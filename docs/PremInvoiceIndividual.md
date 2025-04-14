# Vba::PremInvoiceIndividual

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected** | **Integer** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **subscriber_name** | **String** |  | [optional] |
| **bill_cycle** | **String** |  | [optional] |
| **last_bill_thru** | **Time** |  | [optional] |
| **invoice_date** | **Time** |  | [optional] |
| **bill_from** | **Time** |  | [optional] |
| **bill_thru** | **Time** |  | [optional] |
| **inv_date_bill_from** | **Time** |  | [optional] |
| **inv_date_bill_thru** | **Time** |  | [optional] |
| **bill_date_option** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceIndividual.new(
  selected: null,
  group_id: null,
  division_id: null,
  subscriber_id: null,
  subscriber_name: null,
  bill_cycle: null,
  last_bill_thru: null,
  invoice_date: null,
  bill_from: null,
  bill_thru: null,
  inv_date_bill_from: null,
  inv_date_bill_thru: null,
  bill_date_option: null
)
```

