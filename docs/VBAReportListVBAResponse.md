# Vba::VBAReportListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;VBAReport&gt;**](VBAReport.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAReportListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

