# Vba::GeneratePremInvoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **group_division_captive** | **String** |  | [optional] |
| **bill_from** | **Time** |  | [optional] |
| **bill_thru** | **Time** |  | [optional] |
| **invoice_date** | **Time** |  | [optional] |
| **due_date** | **Time** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **regenerate** | **Boolean** |  | [optional] |
| **input_date** | **Time** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GeneratePremInvoice.new(
  invoice_key: null,
  group_id: null,
  division_id: null,
  subscriber_id: null,
  group_division_captive: null,
  bill_from: null,
  bill_thru: null,
  invoice_date: null,
  due_date: null,
  user_id: null,
  regenerate: null,
  input_date: null
)
```

