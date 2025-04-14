# Vba::TableConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the table that this SearchConfig may access. |  |
| **fields** | [**Array&lt;Field&gt;**](Field.md) | List of fields within the table that this SearcConfig may access. |  |

## Example

```ruby
require 'vba'

instance = Vba::TableConfig.new(
  name: null,
  fields: null
)
```

