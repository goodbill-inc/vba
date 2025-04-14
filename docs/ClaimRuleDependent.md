# Vba::ClaimRuleDependent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_rule_key** | **Integer** |  |  |
| **dependent_claim_rule_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimRuleDependent.new(
  claim_rule_key: null,
  dependent_claim_rule_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

