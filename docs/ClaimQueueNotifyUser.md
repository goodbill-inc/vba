# Vba::ClaimQueueNotifyUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_queue_key** | **Integer** |  |  |
| **user_id** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueueNotifyUser.new(
  claim_queue_key: null,
  user_id: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

