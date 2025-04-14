# Vba::PayeeAccountListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;PayeeAccount&gt;**](PayeeAccount.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PayeeAccountListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

