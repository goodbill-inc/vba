# Vba::JobExecutionMetaData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_execution_key** | **Integer** | Key value identifying an instance of the execution of the job Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **job_execution_attribute** | **String** | Attribute or parameter used by the job during execution |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **job_execution_attribute_value** | **String** | Value of the attribute or parameter used by the job during execution | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::JobExecutionMetaData.new(
  job_execution_key: null,
  job_execution_attribute: null,
  entry_date: null,
  entry_user: null,
  job_execution_attribute_value: null,
  update_date: null,
  update_user: null
)
```

