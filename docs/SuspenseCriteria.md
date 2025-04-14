# Vba::SuspenseCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **suspense_criteria_key** | **Integer** |  |  |
| **adjustment_suspense** | **Boolean** |  |  |
| **claim_audit_key** | **Integer** |  | [optional] |
| **criteria_key** | **Integer** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **suspense_clause** | **String** |  | [optional] |
| **suspense_description** | **String** |  | [optional] |
| **suspense_option** | **Integer** |  | [optional] |
| **suspense_type** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **use_reins_adj_thresh** | **Boolean** |  |  |
| **use_reins_loss_thresh** | **Boolean** |  |  |
| **zelis_suspense** | **Boolean** |  |  |

## Example

```ruby
require 'vba'

instance = Vba::SuspenseCriteria.new(
  suspense_criteria_key: null,
  adjustment_suspense: null,
  claim_audit_key: null,
  criteria_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  suspense_clause: null,
  suspense_description: null,
  suspense_option: null,
  suspense_type: null,
  term_date: null,
  update_date: null,
  update_user: null,
  use_reins_adj_thresh: null,
  use_reins_loss_thresh: null,
  zelis_suspense: null
)
```

