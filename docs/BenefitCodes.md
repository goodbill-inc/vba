# Vba::BenefitCodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **benefit_code** | **String** | Unique identifier assigned to the Benefit Code. |  |
| **allow_flat_tax** | **Boolean** | This option allows the User to enter a &#39;Flat Amt.&#39; within the &#39;Financial&#39; screen from the Member &#39;Details&#39; drop-down menu. If this option is not selected, the &#39;Flat Tax&#39; amount will default to zero when calculating disability payments. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_category** | **String** | References the BenefitCategory.Benefit_Category table. | [optional] |
| **benefit_description** | **String** | Description of the associated Benefit Code. | [optional] |
| **default_unit_type** | **String** | No longer in use. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **hipa_a_code** | **String** | HIPAA code associated with the specified Benefit. 835&#39;s require a maped HIPAA code on claims that pay less than the billed amount. | [optional] |
| **invalid_diag_ex_code** | **String** | No longer in use. | [optional] |
| **invalid_procedure_ex_code** | **String** | No longer in use. | [optional] |
| **invalid_prov_type_ex_code** | **String** | No longer in use. | [optional] |
| **invalid_specialty_ex_code** | **String** | No longer in use. | [optional] |
| **medicare** | **String** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pend_ex_code** | **String** | The Ex Code to apply when adjudicating a claim that has this benefit if the Pend_Flag is on. | [optional] |
| **pend_flag** | **String** | Whether or not to apply the Pend_Ex_Code value when adjudicating a claim that has this benefit. |  |
| **require_type_of_svc** | **String** | No longer in use. | [optional] |
| **update_date** | **Time** | Date when the record was last updated. | [optional] |
| **update_user** | **String** | User that last updated the record. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BenefitCodes.new(
  benefit_code: null,
  allow_flat_tax: null,
  benefit_category: null,
  benefit_description: null,
  default_unit_type: null,
  entry_date: null,
  entry_user: null,
  hipa_a_code: null,
  invalid_diag_ex_code: null,
  invalid_procedure_ex_code: null,
  invalid_prov_type_ex_code: null,
  invalid_specialty_ex_code: null,
  medicare: null,
  pend_ex_code: null,
  pend_flag: null,
  require_type_of_svc: null,
  update_date: null,
  update_user: null
)
```

