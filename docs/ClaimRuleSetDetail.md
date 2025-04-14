# Vba::ClaimRuleSetDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_rule_set_header_key** | **Integer** |  |  |
| **claim_rule_key** | **Integer** |  |  |
| **claim_rule_sequence** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimRuleSetDetail.new(
  claim_rule_set_header_key: null,
  claim_rule_key: null,
  claim_rule_sequence: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

