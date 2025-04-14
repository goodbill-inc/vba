# Vba::FieldMap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table_name** | **String** | Name of the table from which this value originates, |  |
| **column_name** | **String** | Column name from which this value originates. |  |
| **column_index** | **Integer** | Pointer to this value within each of the returned Rows. |  |

## Example

```ruby
require 'vba'

instance = Vba::FieldMap.new(
  table_name: null,
  column_name: null,
  column_index: null
)
```

