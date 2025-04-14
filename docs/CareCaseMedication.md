# Vba::CareCaseMedication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_medication_key** | **Integer** |  |  |
| **case_key** | **Integer** |  |  |
| **dosage** | **Float** |  | [optional] |
| **dosage_unit** | **String** |  | [optional] |
| **drug_code** | **String** |  | [optional] |
| **drug_information** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **med_reconciliation_date** | **Time** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseMedication.new(
  care_case_medication_key: null,
  case_key: null,
  dosage: null,
  dosage_unit: null,
  drug_code: null,
  drug_information: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  med_reconciliation_date: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

