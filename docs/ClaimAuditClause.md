# Vba::ClaimAuditClause

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_audit_clause_key** | **Integer** |  |  |
| **audit_clause** | **String** |  | [optional] |
| **audit_count** | **Integer** |  | [optional] |
| **audit_percent** | **Boolean** |  |  |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAuditClause.new(
  claim_audit_clause_key: null,
  audit_clause: null,
  audit_count: null,
  audit_percent: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

