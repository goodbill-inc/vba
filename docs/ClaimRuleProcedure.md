# Vba::ClaimRuleProcedure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_rule_key** | **Integer** |  |  |
| **from_procedure** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **exclude** | **Boolean** |  |  |
| **thru_procedure** | **String** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimRuleProcedure.new(
  claim_rule_key: null,
  from_procedure: null,
  entry_date: null,
  entry_user: null,
  exclude: null,
  thru_procedure: null,
  update_date: null,
  update_user: null
)
```

