# Vba::CareCaseTreatment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_treatment_key** | **Integer** |  |  |
| **care_case_concordance_key** | **Integer** |  | [optional] |
| **care_case_emetic_risk_key** | **Integer** |  | [optional] |
| **care_case_intent_key** | **Integer** |  | [optional] |
| **care_case_lot_key** | **Integer** |  | [optional] |
| **care_case_neutropenic_risk_key** | **Integer** |  | [optional] |
| **case_key** | **Integer** |  |  |
| **comments** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **treatment_type** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseTreatment.new(
  care_case_treatment_key: null,
  care_case_concordance_key: null,
  care_case_emetic_risk_key: null,
  care_case_intent_key: null,
  care_case_lot_key: null,
  care_case_neutropenic_risk_key: null,
  case_key: null,
  comments: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  treatment_type: null,
  update_date: null,
  update_user: null
)
```

