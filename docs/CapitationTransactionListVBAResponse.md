# Vba::CapitationTransactionListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;CapitationTransaction&gt;**](CapitationTransaction.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CapitationTransactionListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

