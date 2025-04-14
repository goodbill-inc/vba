# Vba::WorkflowTaskUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_key** | **Integer** | Identifier of the workflow. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **workflow_task_seq** | **Integer** | Identifies the order of the associated task. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **user_id** | **String** | ID of the User who is assigned to the selected &#39;Workflow Task&#39;. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **set_complete** | **Boolean** | Allows the associated User to set workflow items to &#39;Complete&#39;. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **set_process** | **Boolean** | Allows the associated User to set workflow items to &#39;Process&#39;. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **set_reject** | **Boolean** | Allows the associated User to set workflow items to &#39;Reject&#39;. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowTaskUser.new(
  workflow_key: null,
  workflow_task_seq: null,
  user_id: null,
  entry_date: null,
  entry_user: null,
  set_complete: null,
  set_process: null,
  set_reject: null,
  update_date: null,
  update_user: null
)
```

