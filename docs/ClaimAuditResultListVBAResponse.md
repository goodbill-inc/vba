# Vba::ClaimAuditResultListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimAuditResult&gt;**](ClaimAuditResult.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAuditResultListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

