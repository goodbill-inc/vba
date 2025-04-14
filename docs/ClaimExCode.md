# Vba::ClaimExCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **batch_claim** | **Integer** |  |  |
| **ex_code** | **String** |  |  |
| **claim_rule_key** | **Integer** |  | [optional] |
| **cleared** | **Boolean** |  |  |
| **comment** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **ex_code_source** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimExCode.new(
  batch_number: null,
  batch_claim: null,
  ex_code: null,
  claim_rule_key: null,
  cleared: null,
  comment: null,
  entry_date: null,
  entry_user: null,
  ex_code_source: null,
  update_date: null,
  update_user: null
)
```

