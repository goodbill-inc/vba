# Vba::CommissionTransactionListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;CommissionTransaction&gt;**](CommissionTransaction.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionTransactionListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

