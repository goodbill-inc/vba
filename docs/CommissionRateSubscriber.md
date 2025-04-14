# Vba::CommissionRateSubscriber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_rate_key** | **Integer** |  |  |
| **subscriber_id** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionRateSubscriber.new(
  commission_rate_key: null,
  subscriber_id: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

