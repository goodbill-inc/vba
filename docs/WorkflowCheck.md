# Vba::WorkflowCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_key** | **Integer** |  | [optional] |
| **workflow_task_key** | **Integer** |  | [optional] |
| **check_id** | **Integer** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **assign_user_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowCheck.new(
  workflow_key: null,
  workflow_task_key: null,
  check_id: null,
  user_id: null,
  assign_user_id: null
)
```

