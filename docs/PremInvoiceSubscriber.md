# Vba::PremInvoiceSubscriber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** |  |  |
| **group_id** | **String** |  |  |
| **division_id** | **String** |  |  |
| **subscriber_id** | **String** |  |  |
| **dependent_count** | **Integer** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **member_count** | **Integer** |  | [optional] |
| **premium_waived** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceSubscriber.new(
  invoice_key: null,
  group_id: null,
  division_id: null,
  subscriber_id: null,
  dependent_count: null,
  entry_date: null,
  entry_user: null,
  member_count: null,
  premium_waived: null,
  update_date: null,
  update_user: null
)
```

