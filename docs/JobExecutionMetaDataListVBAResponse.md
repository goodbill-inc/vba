# Vba::JobExecutionMetaDataListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;JobExecutionMetaData&gt;**](JobExecutionMetaData.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::JobExecutionMetaDataListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

