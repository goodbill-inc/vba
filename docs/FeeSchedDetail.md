# Vba::FeeSchedDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_sched_detail_key** | **Integer** | Unique identifier for each Detail record on this Fee Schedule.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **allowed_over_billed** | **Boolean** | This option allows the ‘Fee Schedule’ to price above the billed amount.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **always_use_rate** | **Boolean** | This field is currently informational only.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **billed_pct** | **Float** | Price based upon a percentage of the billed amount that will be applied to the matching claim detail record through the ‘Fee Schedule’. | [optional] |
| **diag_code** | **String** | Requires a matching diagnosis code on the claim for adjudication matching. Start of a range of diagnosis codes when combined with &#39;Diag Thru&#39;. | [optional] |
| **diag_code_thru** | **String** | End of the diagnosis range when combined with ‘Diag.’. | [optional] |
| **diagnostic_code_type** | **String** | Indicates the ICD version associated with the selected Diagnosis Codes. |  |
| **drug_code** | **String** | This will require a matching ‘Drug Code’ within a claim line during adjudication. | [optional] |
| **effective_date** | **Time** | Date when the schedule should begin applying to claims. This date will be compared to the date of service on the claim. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **ex_code** | **String** | Applies the provided Ex Code to any claim that has been repriced by this ‘Fee Schedule Fee’. | [optional] |
| **fee_sched** | **String** | Unique name given to the Fee Scheudle. |  |
| **from_age** | **Integer** | Starting point for the range of acceptable ages for the Fee Schedule. | [optional] |
| **from_units** | **Integer** | Starting point for the range of acceptable number of units within a claim for matching during adjudication. | [optional] |
| **modifier** | **String** | Modifiers applicable to codes can be entered. Each of the modifiers can be applied to a single code or multiple codes in the line. Modifier payment reductions can be set up in ‘Fee Schedule Configuration’ and can be applied each time the modifier is included on a claim. | [optional] |
| **modifier2** | **String** | Modifiers applicable to codes can be entered. Each of the modifiers can be applied to a single code or multiple codes in the line. Modifier payment reductions can be set up in ‘Fee Schedule Configuration’ and can be applied each time the modifier is included on a claim. | [optional] |
| **modifier3** | **String** | Modifiers applicable to codes can be entered. Each of the modifiers can be applied to a single code or multiple codes in the line. Modifier payment reductions can be set up in ‘Fee Schedule Configuration’ and can be applied each time the modifier is included on a claim. | [optional] |
| **modifier4** | **String** | Modifiers applicable to codes can be entered. Each of the modifiers can be applied to a single code or multiple codes in the line. Modifier payment reductions can be set up in ‘Fee Schedule Configuration’ and can be applied each time the modifier is included on a claim. | [optional] |
| **no_uc_percent** | **Float** | Price based upon a percentage of the billed amount that is used for Out of Network claims that could not be matched with a usual and customary rate. | [optional] |
| **place_of_service** | **String** | Requires a matching place of service on the claim for adjudication matching. Start of a range of PoS when combined with &#39;PoS Thru&#39;. | [optional] |
| **place_of_service_thru** | **String** | End of the PoS range when combined with ‘PoS’. | [optional] |
| **price** | **Float** | Price that will be applied to the matching claim detail record through the ‘Fee Schedule’. This will be multiplied by the number of units within the claim. | [optional] |
| **procedure_cluster** | **String** | This allows the price to be applied to all procedures within a selected procedure cluster. | [optional] |
| **procedure_code** | **String** | This section can contain CPT, HCPC, or revenue codes. Every line requires the first procedure code field to be completed, even when using a procedure cluster. Note: If entering a range of codes, the fee entered on that line will apply to all codes in the range. |  |
| **procedure_code2** | **String** | This section can contain CPT, HCPC, or revenue codes. This field is compared to the &#39;Procedure Code 2&#39; field on the claim&#39;s detail line. | [optional] |
| **procedure_code_thru** | **String** | This section can contain CPT, HCPC, or Revenue codes. Every line requires the first procedure code field to be completed, even when using a procedure cluster. Note: If entering a range of codes, the fee entered on that line will apply to all codes in the range. | [optional] |
| **provider_type** | **String** | Requires a matching Provider type on the claim for adjudication matching. | [optional] |
| **rv_s_units** | **Float** | This field is currently informational only. | [optional] |
| **specialty_code** | **String** | Requires a matching specialty code on the claim for adjudication matching. | [optional] |
| **thru_age** | **Integer** | Ending point for the range of acceptable ages for the Fee Schedule. | [optional] |
| **thru_units** | **Integer** | Ending point for the range of acceptable number of units within a claim for matching during adjudication. | [optional] |
| **type_of_service** | **String** | No longer in use. | [optional] |
| **u_c_claim_type** | **String** | Allows the User to select an existing rate group to base their pricing upon. For instance, if you are building a ‘Fee Schedule’ that uses a percentage of Medicare rates. These rate groups need to be provided by the User and uploaded by VBA. | [optional] |
| **u_c_percent** | **Float** | The desired percentage applied from the selected rate group to the matching claim. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FeeSchedDetail.new(
  fee_sched_detail_key: null,
  allowed_over_billed: null,
  always_use_rate: null,
  billed_pct: null,
  diag_code: null,
  diag_code_thru: null,
  diagnostic_code_type: null,
  drug_code: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  fee_sched: null,
  from_age: null,
  from_units: null,
  modifier: null,
  modifier2: null,
  modifier3: null,
  modifier4: null,
  no_uc_percent: null,
  place_of_service: null,
  place_of_service_thru: null,
  price: null,
  procedure_cluster: null,
  procedure_code: null,
  procedure_code2: null,
  procedure_code_thru: null,
  provider_type: null,
  rv_s_units: null,
  specialty_code: null,
  thru_age: null,
  thru_units: null,
  type_of_service: null,
  u_c_claim_type: null,
  u_c_percent: null,
  update_date: null,
  update_user: null
)
```

