# Vba::WorkflowProcessing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_user_id** | **String** |  | [optional] |
| **assign_user_id** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **workflow_claims** | [**Array&lt;WorkflowClaim&gt;**](WorkflowClaim.md) |  | [optional] |
| **workflow_auths** | [**Array&lt;WorkflowAuth&gt;**](WorkflowAuth.md) |  | [optional] |
| **workflow_checks** | [**Array&lt;WorkflowCheck&gt;**](WorkflowCheck.md) |  | [optional] |
| **workflow_enrollments** | [**Array&lt;WorkflowEnrollment&gt;**](WorkflowEnrollment.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowProcessing.new(
  current_user_id: null,
  assign_user_id: null,
  message: null,
  workflow_claims: null,
  workflow_auths: null,
  workflow_checks: null,
  workflow_enrollments: null
)
```

