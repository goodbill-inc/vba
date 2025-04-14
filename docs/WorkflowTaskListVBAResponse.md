# Vba::WorkflowTaskListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;WorkflowTask&gt;**](WorkflowTask.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowTaskListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

