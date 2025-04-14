# Vba::ReportDefinitionListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ReportDefinition&gt;**](ReportDefinition.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportDefinitionListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

