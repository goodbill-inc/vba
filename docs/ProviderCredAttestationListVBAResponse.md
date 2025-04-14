# Vba::ProviderCredAttestationListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProviderCredAttestation&gt;**](ProviderCredAttestation.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredAttestationListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

