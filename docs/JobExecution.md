# Vba::JobExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_execution_key** | **Integer** | Key value identifying an instance of the execution of the job Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **job_execute_date** | **Time** | Date the job was executed | [optional] |
| **job_execute_user** | **String** | User that executed this instance of the job | [optional] |
| **job_id** | **String** | Identifier for the specific job that is run |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **vb_a_execute_end** | **Time** | Date and time the instance of execution ended | [optional] |
| **vb_a_execute_result** | **String** | Result of the instance of execution | [optional] |
| **vb_a_execute_result_message** | **String** | Messages or files that were captured from the instance of execution | [optional] |
| **vb_a_execute_start** | **Time** | Date and time the instance of execution started | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::JobExecution.new(
  job_execution_key: null,
  entry_date: null,
  entry_user: null,
  job_execute_date: null,
  job_execute_user: null,
  job_id: null,
  update_date: null,
  update_user: null,
  vb_a_execute_end: null,
  vb_a_execute_result: null,
  vb_a_execute_result_message: null,
  vb_a_execute_start: null
)
```

