# Vba::ClaimAuditResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audit_result** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **fail_result** | **Boolean** |  |  |
| **pass_result** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAuditResult.new(
  audit_result: null,
  description: null,
  entry_date: null,
  entry_user: null,
  fail_result: null,
  pass_result: null,
  update_date: null,
  update_user: null
)
```

