# Vba::SearchResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_config_id** | **String** | Identifier for the search that was performed. |  |
| **criteria_key** | **Integer** | Identifier for the criteria used against this search. |  |
| **search_sql_statement** | **String** | SQL Statement used to generate the search results. |  |
| **field_mapping** | [**Array&lt;FieldMap&gt;**](FieldMap.md) | Headers that describe the results contained within the Rows. |  |
| **results** | **Array&lt;Array&lt;Object&gt;&gt;** | All of the rows returned in the search results. |  |

## Example

```ruby
require 'vba'

instance = Vba::SearchResult.new(
  search_config_id: null,
  criteria_key: null,
  search_sql_statement: null,
  field_mapping: null,
  results: null
)
```

