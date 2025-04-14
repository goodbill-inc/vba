# Vba::ClaimQueuePriority

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **queue_priority** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueuePriority.new(
  queue_priority: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

