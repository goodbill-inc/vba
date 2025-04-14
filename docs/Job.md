# Vba::Job

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** | Identifier for the specific job that will be run |  |
| **criteria_object** | **String** | Criteria object used with the job to supply the paramters when it is run | [optional] |
| **description** | **String** | Description for the job that will be run | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **job_type** | **String** | Identifier for the type of job | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Job.new(
  job_id: null,
  criteria_object: null,
  description: null,
  entry_date: null,
  entry_user: null,
  job_type: null,
  update_date: null,
  update_user: null
)
```

