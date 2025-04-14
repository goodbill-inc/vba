# Vba::ClaimAuditClauseListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ClaimAuditClause&gt;**](ClaimAuditClause.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAuditClauseListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

