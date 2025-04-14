# Vba::ClaimQueueNotifyGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_queue_key** | **Integer** |  |  |
| **user_group_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueNotifyGroup.new(
  claim_queue_key: null,
  user_group_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

