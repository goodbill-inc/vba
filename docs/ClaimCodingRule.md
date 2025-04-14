# Vba::ClaimCodingRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_coding_rule_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **procedure_cluster** | **String** |  | [optional] |
| **rule_description** | **String** |  | [optional] |
| **rule_ex_code** | **String** |  | [optional] |
| **rule_name** | **String** |  | [optional] |
| **rule_range** | **Integer** |  | [optional] |
| **rule_range_type** | **String** |  | [optional] |
| **rule_type** | **String** |  | [optional] |
| **rule_type_net** | **String** |  | [optional] |
| **rule_type_quantity** | **Float** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimCodingRule.new(
  claim_coding_rule_key: null,
  entry_date: null,
  entry_user: null,
  procedure_cluster: null,
  rule_description: null,
  rule_ex_code: null,
  rule_name: null,
  rule_range: null,
  rule_range_type: null,
  rule_type: null,
  rule_type_net: null,
  rule_type_quantity: null,
  update_date: null,
  update_user: null
)
```

