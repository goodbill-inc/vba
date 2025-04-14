# Vba::DuplicateSetColumn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duplicate_set_key** | **Integer** |  |  |
| **duplicate_column_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **hard_duplicate** | **Boolean** |  |  |
| **soft_duplicate** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DuplicateSetColumn.new(
  duplicate_set_key: null,
  duplicate_column_key: null,
  entry_date: null,
  entry_user: null,
  hard_duplicate: null,
  soft_duplicate: null,
  update_date: null,
  update_user: null
)
```

