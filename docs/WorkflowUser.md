# Vba::WorkflowUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_key** | **Integer** | Identifier of the workflow. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **user_id** | **String** | ID of the User who is assigned to the workflow. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowUser.new(
  workflow_key: null,
  user_id: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

