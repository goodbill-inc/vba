# Vba::EDICustomFieldListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;EDICustomField&gt;**](EDICustomField.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EDICustomFieldListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

