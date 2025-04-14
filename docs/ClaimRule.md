# Vba::ClaimRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_rule_key** | **Integer** |  |  |
| **claim_rule_object** | **String** |  | [optional] |
| **claim_rule_result** | **String** |  | [optional] |
| **debug** | **Boolean** |  |  |
| **description** | **String** |  | [optional] |
| **display** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **error_code** | **String** |  | [optional] |
| **error_type** | **String** |  | [optional] |
| **ex_code** | **String** |  | [optional] |
| **process_if_error** | **Boolean** |  |  |
| **process_if_override** | **Boolean** |  |  |
| **required** | **Boolean** |  |  |
| **system_rule** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimRule.new(
  claim_rule_key: null,
  claim_rule_object: null,
  claim_rule_result: null,
  debug: null,
  description: null,
  display: null,
  entry_date: null,
  entry_user: null,
  error_code: null,
  error_type: null,
  ex_code: null,
  process_if_error: null,
  process_if_override: null,
  required: null,
  system_rule: null,
  update_date: null,
  update_user: null
)
```

