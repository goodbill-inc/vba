# Vba::PremInvoiceGenerateSelfAdminInvList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected** | **Integer** |  | [optional] |
| **invoice_level_sort** | **Integer** |  | [optional] |
| **invoice_level_id** | **String** |  | [optional] |
| **invoice_level** | **String** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **division_name** | **String** |  | [optional] |
| **bill_cycle** | **String** |  | [optional] |
| **last_bill_thru** | **Time** |  | [optional] |
| **invoice_date** | **Time** |  | [optional] |
| **bill_from** | **Time** |  | [optional] |
| **bill_thru** | **Time** |  | [optional] |
| **inv_date_bill_from** | **Time** |  | [optional] |
| **inv_date_bill_thru** | **Time** |  | [optional] |
| **bill_date_option** | **Integer** |  | [optional] |
| **subscribers** | **Integer** |  | [optional] |
| **dependents** | **Integer** |  | [optional] |
| **members** | **Integer** |  | [optional] |
| **invoice_key** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceGenerateSelfAdminInvList.new(
  selected: null,
  invoice_level_sort: null,
  invoice_level_id: null,
  invoice_level: null,
  group_id: null,
  group_name: null,
  division_id: null,
  division_name: null,
  bill_cycle: null,
  last_bill_thru: null,
  invoice_date: null,
  bill_from: null,
  bill_thru: null,
  inv_date_bill_from: null,
  inv_date_bill_thru: null,
  bill_date_option: null,
  subscribers: null,
  dependents: null,
  members: null,
  invoice_key: null
)
```

