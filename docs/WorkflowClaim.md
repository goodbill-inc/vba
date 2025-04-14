# Vba::WorkflowClaim

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_key** | **Integer** |  | [optional] |
| **workflow_task_key** | **Integer** |  | [optional] |
| **batch_number** | **Integer** |  | [optional] |
| **batch_claim** | **Integer** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **assign_user_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowClaim.new(
  workflow_key: null,
  workflow_task_key: null,
  batch_number: null,
  batch_claim: null,
  user_id: null,
  assign_user_id: null
)
```

