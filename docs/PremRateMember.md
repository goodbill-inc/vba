# Vba::PremRateMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_rate_key** | **Integer** |  |  |
| **subscriber_id** | **String** |  |  |
| **member_seq** | **String** |  |  |
| **effective_date** | **Time** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **rate_override** | **Float** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremRateMember.new(
  prem_rate_key: null,
  subscriber_id: null,
  member_seq: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  rate_override: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

