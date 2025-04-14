# Vba::ClaimAuditDetailResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_audit_detail_result_key** | **Integer** |  |  |
| **audit_result** | **String** |  |  |
| **claim_audit_detail_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAuditDetailResult.new(
  claim_audit_detail_result_key: null,
  audit_result: null,
  claim_audit_detail_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

