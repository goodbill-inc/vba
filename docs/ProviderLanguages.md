# Vba::ProviderLanguages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Unique idenfitier assigned to the Proivider record. |  |
| **language_id** | **String** | Name of the language. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **language_skill_level** | **String** | Indicates the fluency of the Provider in the selected language. | [optional] |
| **primary_language** | **Boolean** | Indicates that the selected language is the Provider&#39;s primary language. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **secondary_language** | **Boolean** | Indicates that the selected language is a secondary language for the Provider. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderLanguages.new(
  provider_id: null,
  language_id: null,
  entry_date: null,
  entry_user: null,
  language_skill_level: null,
  primary_language: null,
  secondary_language: null,
  update_date: null,
  update_user: null
)
```

