# Vba::ClaimAuditAppealReason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appeal_reason** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **overturn_reason** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAuditAppealReason.new(
  appeal_reason: null,
  description: null,
  entry_date: null,
  entry_user: null,
  overturn_reason: null,
  update_date: null,
  update_user: null
)
```

