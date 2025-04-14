# Vba::DuplicateSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duplicate_set_key** | **Integer** |  |  |
| **check_claim** | **Boolean** |  |  |
| **claim_type** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **hard_duplicate_ex_code** | **String** |  | [optional] |
| **no_dupe_on_denied** | **Boolean** |  |  |
| **soft_dupe_on_denied** | **Boolean** |  |  |
| **soft_duplicate_ex_code** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DuplicateSet.new(
  duplicate_set_key: null,
  check_claim: null,
  claim_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  hard_duplicate_ex_code: null,
  no_dupe_on_denied: null,
  soft_dupe_on_denied: null,
  soft_duplicate_ex_code: null,
  update_date: null,
  update_user: null
)
```

