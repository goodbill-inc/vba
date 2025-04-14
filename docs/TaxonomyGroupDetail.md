# Vba::TaxonomyGroupDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_group_detail_key** | **Integer** | Key value identifying the range of taxonomies in the taxonomy group Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **from_value** | **String** | Taxonomy code value for the first taxonomy in the range |  |
| **taxonomy_group_id** | **String** | Identifier for the taxonomy group |  |
| **thru_value** | **String** | Taxonomy code value for the last taxonomy in the range | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::TaxonomyGroupDetail.new(
  taxonomy_group_detail_key: null,
  entry_date: null,
  entry_user: null,
  from_value: null,
  taxonomy_group_id: null,
  thru_value: null,
  update_date: null,
  update_user: null
)
```

