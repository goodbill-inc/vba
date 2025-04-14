# Vba::ProviderAlternate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Unique idenfitier assigned to the Proivider record. |  |
| **alternate_provider_id** | **String** | Identifier for the Alternate Provider. |  |
| **effective_date** | **Time** | Date when the Alternate Provider status becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **term_date** | **Time** | Date when the Alternate Provider status expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderAlternate.new(
  provider_id: null,
  alternate_provider_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

