# Vba::ExplanationCodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ex_code** | **String** |  |  |
| **admin_override** | **String** |  |  |
| **category** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **ex_description** | **String** |  | [optional] |
| **ex_result** | **String** |  | [optional] |
| **hipa_a_code** | **String** |  | [optional] |
| **hipa_a_group_code** | **String** |  | [optional] |
| **long_description** | **String** |  | [optional] |
| **no_print_on_remit** | **String** |  |  |
| **override_denied** | **Boolean** |  |  |
| **override_pend** | **Boolean** |  |  |
| **patient_responsibility** | **Boolean** |  |  |
| **print_only** | **Boolean** |  |  |
| **suppress_eob_remit** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ExplanationCodes.new(
  ex_code: null,
  admin_override: null,
  category: null,
  entry_date: null,
  entry_user: null,
  ex_description: null,
  ex_result: null,
  hipa_a_code: null,
  hipa_a_group_code: null,
  long_description: null,
  no_print_on_remit: null,
  override_denied: null,
  override_pend: null,
  patient_responsibility: null,
  print_only: null,
  suppress_eob_remit: null,
  update_date: null,
  update_user: null
)
```

