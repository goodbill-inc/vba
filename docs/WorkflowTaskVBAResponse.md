# Vba::WorkflowTaskVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**WorkflowTask**](WorkflowTask.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowTaskVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

