# Vba::WorkflowTaskOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_key** | **Integer** | Identifier of the workflow. |  |
| **workflow_task_seq** | **Integer** | Identifies the order of the associated task. |  |
| **workflow_task_option** | **String** | Identifies the option to be used by the selected workflow task. These options will be specific to the workflow&#39;s &#39;Type&#39;. |  |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowTaskOption.new(
  workflow_key: null,
  workflow_task_seq: null,
  workflow_task_option: null
)
```

