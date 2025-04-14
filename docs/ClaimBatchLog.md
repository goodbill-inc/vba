# Vba::ClaimBatchLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_batch_log_key** | **Integer** | No longer in use.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **batch_claim** | **Integer** | No longer in use.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **batch_number** | **Integer** | No longer in use.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | No longer in use. | [optional] |
| **entry_user** | **String** | No longer in use. | [optional] |
| **job_key** | **Integer** | No longer in use.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **log_action** | **String** | No longer in use. | [optional] |
| **log_date** | **Time** | No longer in use. | [optional] |
| **log_message** | **String** | No longer in use. | [optional] |
| **log_result** | **String** | No longer in use. | [optional] |
| **update_date** | **Time** | No longer in use. | [optional] |
| **update_user** | **String** | No longer in use. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimBatchLog.new(
  claim_batch_log_key: null,
  batch_claim: null,
  batch_number: null,
  entry_date: null,
  entry_user: null,
  job_key: null,
  log_action: null,
  log_date: null,
  log_message: null,
  log_result: null,
  update_date: null,
  update_user: null
)
```

