# Vba::Filter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **filter_description** | **String** |  | [optional] |
| **filter_type** | **String** |  | [optional] |
| **filter_value** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Filter.new(
  filter_key: null,
  entry_date: null,
  entry_user: null,
  filter_description: null,
  filter_type: null,
  filter_value: null,
  update_date: null,
  update_user: null
)
```

