# Vba::CareCaseMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_key** | **Integer** |  |  |
| **subscriber_id** | **String** |  |  |
| **member_seq** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseMember.new(
  case_key: null,
  subscriber_id: null,
  member_seq: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

