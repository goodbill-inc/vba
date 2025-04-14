# Vba::CommissionParameterListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;CommissionParameter&gt;**](CommissionParameter.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionParameterListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

