# Vba::TaxonomyGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_group_id** | **String** | Identifier for the taxonomy group |  |
| **description** | **String** | Description of the taxonomy group |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **taxonomy_type** | **String** | Type of taxonomy included in the taxonomy group |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::TaxonomyGroup.new(
  taxonomy_group_id: null,
  description: null,
  entry_date: null,
  entry_user: null,
  taxonomy_type: null,
  update_date: null,
  update_user: null
)
```

