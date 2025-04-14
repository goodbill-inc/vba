# Vba::CredPracticeType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cred_practice_type_key** | **Integer** | Unique Identity Key associated with this table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_practice_category_key** | **Integer** | Unique Identity Key associated with this table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the practice type. | [optional] |
| **display** | **String** | Name of the practice type. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CredPracticeType.new(
  cred_practice_type_key: null,
  cred_practice_category_key: null,
  description: null,
  display: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

