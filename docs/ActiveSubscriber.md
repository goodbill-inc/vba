# Vba::ActiveSubscriber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **birth_date** | **Time** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **plan_description** | **String** |  | [optional] |
| **tier_description** | **String** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ActiveSubscriber.new(
  subscriber_id: null,
  member_seq: null,
  birth_date: null,
  first_name: null,
  last_name: null,
  plan_description: null,
  tier_description: null,
  start_date: null,
  end_date: null
)
```

