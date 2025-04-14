# Vba::ClaimBatchReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original_batch_number** | **Integer** | When one claim must reference another claim, this holds the pointer to the original batch/claim.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **original_batch_claim** | **Integer** | When one claim must reference another claim, this holds the pointer to the original batch/claim.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **referenced_batch_number** | **Integer** | When one claim must reference another claim, this holds the pointer to the referenced batch/claim.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **referenced_batch_claim** | **Integer** | When one claim must reference another claim, this holds the pointer to the referenced batch/claim.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **reference_type** | **String** | When one claim must reference another claim, this holds the type of reference being created. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **reference_date** | **Time** | When one claim must reference another claim, this holds the date of that reference being made. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimBatchReference.new(
  original_batch_number: null,
  original_batch_claim: null,
  referenced_batch_number: null,
  referenced_batch_claim: null,
  reference_type: null,
  entry_date: null,
  entry_user: null,
  reference_date: null,
  update_date: null,
  update_user: null
)
```

