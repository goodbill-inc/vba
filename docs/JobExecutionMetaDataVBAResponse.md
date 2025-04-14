# Vba::JobExecutionMetaDataVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**JobExecutionMetaData**](JobExecutionMetaData.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::JobExecutionMetaDataVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

