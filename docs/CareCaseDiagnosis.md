# Vba::CareCaseDiagnosis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_diagnosis_key** | **Integer** |  |  |
| **case_key** | **Integer** |  |  |
| **comment** | **String** |  | [optional] |
| **diag_stage** | **Integer** |  | [optional] |
| **diagnostic_code** | **String** |  | [optional] |
| **diagnostic_group** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseDiagnosis.new(
  care_case_diagnosis_key: null,
  case_key: null,
  comment: null,
  diag_stage: null,
  diagnostic_code: null,
  diagnostic_group: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

