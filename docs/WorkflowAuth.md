# Vba::WorkflowAuth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_key** | **Integer** |  | [optional] |
| **workflow_task_key** | **Integer** |  | [optional] |
| **auth_number** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **assign_user_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowAuth.new(
  workflow_key: null,
  workflow_task_key: null,
  auth_number: null,
  user_id: null,
  assign_user_id: null
)
```

