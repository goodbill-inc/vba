# Vba::ProviderTaxonomy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_taxonomy_key** | **Integer** | Unique identifier for each taxonomy value for this Provider. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **provider_id** | **String** | Unique idenfitier assigned to the Proivider record. |  |
| **taxonomy_code** | **String** | Taxonomy Code assigned to this Provider. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderTaxonomy.new(
  provider_taxonomy_key: null,
  entry_date: null,
  entry_user: null,
  provider_id: null,
  taxonomy_code: null,
  update_date: null,
  update_user: null
)
```

