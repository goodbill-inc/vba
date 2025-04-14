# Vba::ClaimAuditListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimAudit&gt;**](ClaimAudit.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAuditListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

