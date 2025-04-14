# Vba::ProviderCredTerminationListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProviderCredTermination&gt;**](ProviderCredTermination.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredTerminationListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

