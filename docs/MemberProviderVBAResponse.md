# Vba::MemberProviderVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**MemberProvider**](MemberProvider.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberProviderVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

