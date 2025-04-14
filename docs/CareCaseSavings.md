# Vba::CareCaseSavings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_savings_key** | **Integer** |  |  |
| **case_key** | **Integer** |  |  |
| **comment** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **parent_work_log_type** | **String** |  | [optional] |
| **savings_amount** | **Float** |  | [optional] |
| **savings_type** | **String** |  | [optional] |
| **secondary_savings_type** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseSavings.new(
  care_case_savings_key: null,
  case_key: null,
  comment: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  parent_work_log_type: null,
  savings_amount: null,
  savings_type: null,
  secondary_savings_type: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

