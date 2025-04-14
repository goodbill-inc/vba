# Vba::SecurityUserRestrictionListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;SecurityUserRestriction&gt;**](SecurityUserRestriction.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityUserRestrictionListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

