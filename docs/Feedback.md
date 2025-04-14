# Vba::Feedback

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **screen** | **String** | Represents the specific screen from which feedback is submitted. This attribute serves as a contextual identifier, aiding in the precise location of user feedback within the application. |  |
| **issue_type** | **String** | Categorizes the type of the issue or feedback being reported. It provides valuable context regarding the specific problem or concern encountered. |  |
| **description** | **String** | Provides a textual representation of the feedback or issue reported. It allows users to elaborate on their experiences, providing essential details, observations, or suggestions related to the reported concern. |  |
| **logs** | **String** | Refers to any relevant log files or records associated with the reported issue or feedback. These logs provide valuable technical data and context, aiding in the investigation and resolution of complex issues. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Feedback.new(
  screen: null,
  issue_type: null,
  description: null,
  logs: null
)
```

