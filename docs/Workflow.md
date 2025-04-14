# Vba::Workflow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_key** | **Integer** | Identifier of the workflow. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **criteria_key** | **Integer** | Identifies the criteria associated with the workflow. | [optional] |
| **criteria_sql** | **String** | The SQL used to determine which claims fall under this workflow | [optional] |
| **description** | **String** | Description of the workflow. | [optional] |
| **disabled** | **Boolean** | Disables the selected workflow. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **last_execute_date** | **Time** | Last time this Workflow was checked | [optional] |
| **prerequisite_workflow_key** | **Integer** | Identifies the workflow step that preceeds the selected step. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **workflow_type** | **String** | Identifies the service area associated with the workflow. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Workflow.new(
  workflow_key: null,
  criteria_key: null,
  criteria_sql: null,
  description: null,
  disabled: null,
  entry_date: null,
  entry_user: null,
  last_execute_date: null,
  prerequisite_workflow_key: null,
  update_date: null,
  update_user: null,
  workflow_type: null
)
```

