# Vba::ErrorCategoryType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_category** | **String** | Identifier of the error category. |  |
| **error_type** | **String** | Type of errors specified in this category |  |
| **error_code** | **String** | Code of the specific error that is contained in the category |  |
| **description** | **String** | Description of the specific error | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **error_severity** | **Integer** | Severity of the specific error  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ErrorCategoryType.new(
  error_category: null,
  error_type: null,
  error_code: null,
  description: null,
  entry_date: null,
  entry_user: null,
  error_severity: null,
  update_date: null,
  update_user: null
)
```

