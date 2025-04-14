# Vba::ClaimAudit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_audit_key** | **Integer** |  |  |
| **audit_clause** | **String** |  | [optional] |
| **audit_count** | **Integer** |  | [optional] |
| **audit_date** | **Time** |  | [optional] |
| **audit_percent** | **Boolean** |  |  |
| **audit_status** | **String** |  | [optional] |
| **audit_user** | **String** |  | [optional] |
| **auditor_user** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **event_id** | **Integer** |  | [optional] |
| **process_date_lookback** | **Integer** |  | [optional] |
| **process_date_lookback_type** | **String** |  | [optional] |
| **suspend_audit** | **Boolean** |  |  |
| **suspense_type** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAudit.new(
  claim_audit_key: null,
  audit_clause: null,
  audit_count: null,
  audit_date: null,
  audit_percent: null,
  audit_status: null,
  audit_user: null,
  auditor_user: null,
  description: null,
  entry_date: null,
  entry_user: null,
  event_id: null,
  process_date_lookback: null,
  process_date_lookback_type: null,
  suspend_audit: null,
  suspense_type: null,
  update_date: null,
  update_user: null
)
```

