# Vba::WorkflowType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_type** | **String** | Name of the workflow type. |  |
| **description** | **String** | Description of the workflow type. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **workflow_criteria_data_object** | **String** | Data object that the workflow type must point to. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowType.new(
  workflow_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null,
  workflow_criteria_data_object: null
)
```

