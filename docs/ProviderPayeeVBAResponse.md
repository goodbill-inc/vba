# Vba::ProviderPayeeVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ProviderPayee**](ProviderPayee.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderPayeeVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

