# Vba::ClaimAuditDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_audit_detail_key** | **Integer** |  |  |
| **appeal** | **Boolean** |  |  |
| **appeal_date** | **Time** |  | [optional] |
| **appeal_overturn** | **Boolean** |  |  |
| **appeal_overturn_date** | **Time** |  | [optional] |
| **appeal_overturn_reason** | **String** |  | [optional] |
| **appeal_reason** | **String** |  | [optional] |
| **appeal_result** | **String** |  | [optional] |
| **audit_discrepancy** | **Float** |  | [optional] |
| **batch_claim** | **Integer** |  |  |
| **batch_number** | **Integer** |  |  |
| **claim_audit_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAuditDetail.new(
  claim_audit_detail_key: null,
  appeal: null,
  appeal_date: null,
  appeal_overturn: null,
  appeal_overturn_date: null,
  appeal_overturn_reason: null,
  appeal_reason: null,
  appeal_result: null,
  audit_discrepancy: null,
  batch_claim: null,
  batch_number: null,
  claim_audit_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

