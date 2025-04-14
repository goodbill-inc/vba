# Vba::DiagnosticCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **diagnostic_code** | **String** |  |  |
| **diagnostic_code_type** | **String** |  |  |
| **effective_date** | **Time** |  |  |
| **accident** | **Boolean** |  |  |
| **age_range_type** | **String** |  | [optional] |
| **age_restricted** | **Boolean** |  |  |
| **age_type** | **String** |  | [optional] |
| **dr_g_code** | **String** |  | [optional] |
| **diag_description** | **String** |  | [optional] |
| **diag_ivr** | **String** |  | [optional] |
| **diagnostic_group** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **financial_type** | **String** |  | [optional] |
| **from_age** | **Integer** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **long_description** | **String** |  | [optional] |
| **pend_ex_code** | **String** |  | [optional] |
| **pend_flag** | **String** |  | [optional] |
| **pre_ex** | **Boolean** |  |  |
| **sec111** | **Boolean** |  |  |
| **term_date** | **Time** |  | [optional] |
| **thru_age** | **Integer** |  | [optional] |
| **trigger_diagnosis** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **valid** | **Boolean** |  |  |

## Example

```ruby
require 'vba'

instance = Vba::DiagnosticCode.new(
  diagnostic_code: null,
  diagnostic_code_type: null,
  effective_date: null,
  accident: null,
  age_range_type: null,
  age_restricted: null,
  age_type: null,
  dr_g_code: null,
  diag_description: null,
  diag_ivr: null,
  diagnostic_group: null,
  entry_date: null,
  entry_user: null,
  financial_type: null,
  from_age: null,
  gender: null,
  long_description: null,
  pend_ex_code: null,
  pend_flag: null,
  pre_ex: null,
  sec111: null,
  term_date: null,
  thru_age: null,
  trigger_diagnosis: null,
  update_date: null,
  update_user: null,
  valid: null
)
```

