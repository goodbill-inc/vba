# Vba::WorkflowTypeTaskOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_type** | **String** | Identifies the workflow type that options are displayed for. |  |
| **workflow_task_option** | **String** | Identifies the available task option for the identified workflow type. |  |
| **description** | **String** | Description of the task option. | [optional] |
| **display** | **String** | Name of the task option. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **system_process_option** | **Boolean** | If this option is set to 1, the system will automatically process claims assigned to this workflow task. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowTypeTaskOption.new(
  workflow_type: null,
  workflow_task_option: null,
  description: null,
  display: null,
  entry_date: null,
  entry_user: null,
  system_process_option: null,
  update_date: null,
  update_user: null
)
```

