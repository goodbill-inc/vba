# Vba::GroupNetworkCriteriaColumn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_network_criteria_column_key** | **Integer** | Unique identifier for each column that can be selected for network criteria selection (provider zip, subscriber zip, etc.) |  |
| **data_type** | **String** | The datatype of the criteria column used for network criteria. | [optional] |
| **description** | **String** | Description of the Criteria. | [optional] |
| **search_object** | **String** | If there is an application object being used for lookup purposes, this would reference that object (developer field). | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupNetworkCriteriaColumn.new(
  group_network_criteria_column_key: null,
  data_type: null,
  description: null,
  search_object: null
)
```

