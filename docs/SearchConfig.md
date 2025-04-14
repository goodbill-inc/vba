# Vba::SearchConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the SearchConfig. Use this value when creating a search Criteria. |  |
| **functional_area** | **String** | The FunctionalArea for which the SearchConfig belongs. |  |
| **description** | **String** | Description of the SearchConfig |  |
| **table_configs** | [**Array&lt;TableConfig&gt;**](TableConfig.md) | List of Tables and Columns that are accessible to this SearchConfig. |  |

## Example

```ruby
require 'vba'

instance = Vba::SearchConfig.new(
  id: null,
  functional_area: null,
  description: null,
  table_configs: null
)
```

