# Vba::PlanDiagnosisAge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_diagnosis_age_key** | **Integer** | Unique identifier for each Diagnosis Age rule. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age_range_type** | **String** | Specifies whether the associated age range is in days, months, or years. | [optional] |
| **age_type** | **String** | Adjudication will apply the rule if the Patient falls outside of the specified range based upon the designated criteria: 1. Birth Date - age is specified by looking at the Patient&#39;s day of birth. 2. End of Birth Month - age is specified based upon the full birth month. For example, if the Patient is turning 18 on September 12th, adjudication won&#39;t consider the Patient to be 18 until October 1st. 3. Ignore Age - defauls the rule to only being based upon the diagnosis code. | [optional] |
| **diagnostic_code_type** | **String** | Specifies the numbering system used for the selected Diagnosis Codes. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Specifies the Ex Code that will be applied based upon the designated criteria. | [optional] |
| **from_age** | **Integer** | Start of the range of Ages. | [optional] |
| **from_diag** | **String** | Start of the range of Diagnosis Codes. |  |
| **plan_id** | **String** | References the Plans.Plan_ID value in parent table. |  |
| **thru_age** | **Integer** | End of the range of Ages. | [optional] |
| **thru_diag** | **String** | End of the range of Diagnosis Codes. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanDiagnosisAge.new(
  plan_diagnosis_age_key: null,
  age_range_type: null,
  age_type: null,
  diagnostic_code_type: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  from_age: null,
  from_diag: null,
  plan_id: null,
  thru_age: null,
  thru_diag: null,
  update_date: null,
  update_user: null
)
```

