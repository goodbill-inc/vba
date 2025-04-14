# Vba::Taxonomy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_key** | **Integer** | Key value identifying a specific provider taxonomy Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **classification** | **String** | Classification associated with the provider taxonomy | [optional] |
| **definition** | **String** | Definition of the provider taxonomy | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **grouping** | **String** | Grouping associated with the provider taxonomy | [optional] |
| **notes** | **String** | Additional notes about the provider taxonomy | [optional] |
| **specialization** | **String** | Specialization associated with the provider taxonomy | [optional] |
| **taxonomy_code** | **String** | Code value identifying a specific provider taxonomy |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Taxonomy.new(
  taxonomy_key: null,
  classification: null,
  definition: null,
  entry_date: null,
  entry_user: null,
  grouping: null,
  notes: null,
  specialization: null,
  taxonomy_code: null,
  update_date: null,
  update_user: null
)
```

