# Vba::ClaimRuleProviderType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_rule_key** | **Integer** |  |  |
| **provider_type** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **exclude** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimRuleProviderType.new(
  claim_rule_key: null,
  provider_type: null,
  entry_date: null,
  entry_user: null,
  exclude: null,
  update_date: null,
  update_user: null
)
```

