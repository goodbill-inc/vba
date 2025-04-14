# Vba::ProviderSuffixListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProviderSuffix&gt;**](ProviderSuffix.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderSuffixListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

