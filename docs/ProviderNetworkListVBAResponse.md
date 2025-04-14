# Vba::ProviderNetworkListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProviderNetwork&gt;**](ProviderNetwork.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderNetworkListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

