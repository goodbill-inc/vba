# Vba::CheckBatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_batch** | **Integer** | ID of the check batch.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **check_batch_date** | **Time** | Date when the check batch was created. |  |
| **check_batch_exported** | **Boolean** | Indicates that the check batch has been exported.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **check_batch_exported_date** | **Time** | Date when the check batch was exported. | [optional] |
| **description** | **String** | Description of the check batch. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CheckBatch.new(
  check_batch: null,
  check_batch_date: null,
  check_batch_exported: null,
  check_batch_exported_date: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

