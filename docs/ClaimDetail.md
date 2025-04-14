# Vba::ClaimDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_number** | **Integer** | References the Claim.Claim_Number value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_seq** | **String** | In combination with Adjustment_Seq, creates a unique sequence for each service line on this claim. |  |
| **adjustment_seq** | **String** | In combination with Claim_Seq, creates a unique sequence for each service line on this claim. Used to note adjustments, cascading, etc. when utlized. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ans_i_code** | **String** | No longer in use. | [optional] |
| **ap_c_code** | **String** | The APC code applied to this service if identified for calculation during adjudication. | [optional] |
| **account_key** | **Integer** | For reference purposes, this hold the individual service line funding payor/account. If multiple payor/accounts are found on different service lines for the same claim, adjudication spits out an error. | [optional] |
| **adjusted_line** | **Boolean** | Notes if this line was adjusted as part of an individual claim adjustment process. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **admin_amt** | **Float** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auth_number** | **String** | The Auth Number for services that require authorization. References Auth.Auth_Number. | [optional] |
| **auth_penalty** | **Float** | If an Auth Penalty is applied during adjudication, that is housed here. | [optional] |
| **auth_required** | **String** | Notes that this service lines required authorization. | [optional] |
| **benefit_code** | **String** | This is the benefit code assigned to this service line based on the Plan assigned on the Claim header. References BenefitCodes.Benefit_Code. | [optional] |
| **benefit_rate_applied** | **Float** | Benefit Rate being applied to this detail line. | [optional] |
| **billed_price** | **Float** | The billed charges assigned by the provider for this service. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **brand_indicator** | **String** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **buccal** | **Boolean** | For dental claims, notes if this surface had services rendered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cli_a_number** | **String** | No longer in use. | [optional] |
| **co_b_amt** | **Float** | Holds the Other Insurance calculated amount that would affect the payable amount for this service (calculated from COB_Hold, COB_Mem_Resp, COB_Savings, and COB_Savings_Used). Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_b_hold** | **Float** | Used in COB calculations (Dupe or Non-Dupe) to determine the COB_Amt to be applied. | [optional] |
| **co_b_mem_resp** | **Float** | Used in COB calculations (Dupe or Non-Dupe) to determine the COB_Amt to be applied. | [optional] |
| **co_b_savings** | **Float** | Used in COB calculations (Dupe or Non-Dupe) to determine the COB_Amt to be applied. | [optional] |
| **co_b_savings_used** | **Float** | Used in COB calculations (Dupe or Non-Dupe) to determine the COB_Amt to be applied. | [optional] |
| **calendar_year** | **String** | Used for Flex Claims to indicate the calendar year this claim applies. | [optional] |
| **capitation_claim** | **Boolean** | Notes if this service line is captiated. If the Claim.Capitation_Claim value is flagged, it overrides this value and notes the entire claim and all service lines as capitated. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **check_id** | **Integer** | No longer in use. | [optional] |
| **co_ins_amt** | **Float** | The co-insurance amount applied by adjudication based on benefit definition. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_pay_amt** | **Float** | The co-pay amount applied by adjudication based on benefit definition. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **currency_id** | **String** | For currency calculations, this holds the destination currency. | [optional] |
| **days_supply** | **Integer** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **ded_credit_amt** | **Float** | If the service is eligiblity for deductible credits, they would be stored here. | [optional] |
| **deductible_amt** | **Float** | The deductible amount applied by adjudication based on benefit definition. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **detail_plan_year** | **String** | Indicates which Plan Year the service line correlates to from GroupPlanYear.Plan_Year | [optional] |
| **diagnosis_code** | **String** | The diagnosis pointer for this service line indicating which Diagnostic Codes from the Claim are applicable to this service. | [optional] |
| **discount_amt** | **Float** | The difference between Billed and Allowed is stored as the Discount Amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **dispense_as_written** | **Integer** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **distal** | **Boolean** | For dental claims, notes if this surface had services rendered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **drug_code** | **String** | For RX claims or medical claims that hold a drug code. References DrugCode.Drug_Code. | [optional] |
| **drug_quantity** | **Float** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | A place for both user assigned reason codes applicable to this claim or for adjudication to automatically assign ex code. References ExplanationCodes.Ex_Code. | [optional] |
| **ex_code2** | **String** | A place for both user assigned reason codes applicable to this claim or for adjudication to automatically assign ex code. References ExplanationCodes.Ex_Code. | [optional] |
| **ex_code3** | **String** | A place for both user assigned reason codes applicable to this claim or for adjudication to automatically assign ex code. References ExplanationCodes.Ex_Code. | [optional] |
| **fica** | **Float** | The FICA tax amount for disability claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **facial** | **Boolean** | For dental claims, notes if this surface had services rendered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **federal_amount_to_tax** | **Float** | Based on taxable amount and various configurations, this holds the Federal \&quot;To Tax\&quot; amount for disability claim. | [optional] |
| **federal_tax** | **Float** | The calculated Federal tax amount based on the \&quot;To Tax\&quot; amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **federal_tax_flat** | **Float** | A flat federal tax amount applied in addition to the calculated tax amount. | [optional] |
| **fill_date** | **Time** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **flex_description** | **String** | Manually entered description of this flex claim. | [optional] |
| **formulary_indicator** | **String** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **incisal** | **Boolean** | For dental claims, notes if this surface had services rendered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **interest** | **Float** | If interest is calculated on a claim, it is stored here and applied to payable amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **labial** | **Boolean** | For dental claims, notes if this surface had services rendered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **life_benefit** | **String** | The Life Benefit to be applied for Life claims processing. | [optional] |
| **life_benefit_volume** | **Float** | The Life Benefit calculated volume based on benefit definition. | [optional] |
| **line_control_number** | **String** | Number added manually to claims and from 837 files and sent outbound on 835 files. | [optional] |
| **lingual** | **Boolean** | For dental claims, notes if this surface had services rendered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **local_tax** | **Float** | If a locality tax is applicable it would be housed here. Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided. | [optional] |
| **mail_order_indicator** | **String** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **medicare_amount_to_tax** | **Float** | Based on taxable amount and various configurations, this holds the Medicare \&quot;To Tax\&quot; amount for disability claim. | [optional] |
| **medicare_tax** | **Float** | The calculated Medicare tax amount based on the \&quot;To Tax\&quot; amount. | [optional] |
| **mesial** | **Boolean** | For dental claims, notes if this surface had services rendered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **modifier** | **String** | The modifier applied to this service. | [optional] |
| **modifier_2** | **String** | The modifier applied to this service. | [optional] |
| **modifier_3** | **String** | The modifier applied to this service. | [optional] |
| **modifier_4** | **String** | The modifier applied to this service. | [optional] |
| **not_covered_amt** | **Float** | For not covered services, or partially not covered services, this reflects that deduction. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **occlusal** | **Boolean** | For dental claims, notes if this surface had services rendered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **oral_cavity_designation_code_1** | **String** | For dental claims this holds the oral cavity designation sent on the 837D. | [optional] |
| **oral_cavity_designation_code_2** | **String** | For dental claims this holds the oral cavity designation sent on the 837D. | [optional] |
| **oral_cavity_designation_code_3** | **String** | For dental claims this holds the oral cavity designation sent on the 837D. | [optional] |
| **oral_cavity_designation_code_4** | **String** | For dental claims this holds the oral cavity designation sent on the 837D. | [optional] |
| **oral_cavity_designation_code_5** | **String** | For dental claims this holds the oral cavity designation sent on the 837D. | [optional] |
| **other_deduction_amount** | **Float** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **override_benefit_code** | **Boolean** | This flag indicates if the benefit code has been overridden. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_cob_amt** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_co_ins_amt** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_co_pay_amt** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_ded_credit_amt** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_deductible_amt** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_federal_tax** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_local_tax** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_medicare_tax** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_not_covered_amt** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_plan_price** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_social_security** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_state_tax** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_with_hold_amt** | **Boolean** | Notes that the associated amount field was manually overrided by an application user or automated process that would skip adjudication calculations for this amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pp_o_price_plan_price_diff** | **Float** | Information field used in custom processing and reporting. | [optional] |
| **paid_amt** | **Float** | The final paid amount for this service line based on allowed amount (Plan_Price) minus all applicable deductions. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **partial_loss** | **Float** | The partial loss amount for disability claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **payor_id** | **String** | For reference purposes, this hold the individual service line funding payor/account. If multiple payor/accounts are found on different service lines for the same claim, adjudication spits out an error. | [optional] |
| **pharmacy_name** | **String** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **place_of_service** | **String** | The place of service for the services being rendered on this service line. | [optional] |
| **plan_price** | **Float** | The allowed amount for this service based on fee schedule, pricing, repricing, etc. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **premium_deduction** | **Float** | The premium deduction amount for disability claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **prescriber_id** | **String** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **prescription_date** | **Time** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **prescription_number** | **String** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **pricing_method** | **String** | For reprice claims (typically submitted via 837), this notes the reprice method used to reprice this service line. | [optional] |
| **pricing_rate** | **Float** | The rate associated with the reprice method (Pricing_Method). | [optional] |
| **principal** | **Float** | For life claims, this holds the principal amount for reporting. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **procedure_code** | **String** | The service being rendered on this claim. | [optional] |
| **procedure_code2** | **String** | The secondary service being rendered on this claim. | [optional] |
| **qualifying_payment_amount** | **Float** | QPA (Qualified Payment Amount) values received in upcoming EDI transactions for the NSA (No Surprise Act) mandate. | [optional] |
| **reason_code** | **Integer** | No longer in use. | [optional] |
| **refill_indicator** | **Integer** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **repriced_savings_amount** | **Float** | Holds the submitted reprice savings amount for services that include this amount in the pricing calculation. | [optional] |
| **root** | **Boolean** | For dental claims, notes if this surface had services rendered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **service_date** | **Time** | The start date of the services being rendered. | [optional] |
| **service_thru** | **Time** | The end date of the services being rendered. | [optional] |
| **soc_sec_amount_to_tax** | **Float** | Based on taxable amount and various configurations, this holds the Social Security \&quot;To Tax\&quot; amount for disability claim. | [optional] |
| **social_security** | **Float** | The calculated Social Security tax amount based on the \&quot;To Tax\&quot; amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **state_amount_to_tax** | **Float** | Based on taxable amount and various configurations, this holds the State \&quot;To Tax\&quot; amount for disability claim. | [optional] |
| **state_tax** | **Float** | The calculated State tax amount based on the \&quot;To Tax\&quot; amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **state_tax_flat** | **Float** | A flat state tax amount applied in addition to the calculated tax amount. | [optional] |
| **state_tax_state** | **String** | When state taxes are calculated, this indicates the state the tax amount was calculated against. | [optional] |
| **status_code** | **String** | Holds the individaul status of this service line based on Ex Codes. A - Payable, D - Denied, E - Pended. | [optional] |
| **svc_count** | **Float** | The units applied to this service. | [optional] |
| **taxable_amount** | **Float** | This holds the starting taxable amount based on pre-tax and pre-gross deductions applied to this service. | [optional] |
| **tooth_number** | **Integer** | For dental claims, this identifies the tooth, quadrant or arch being worked for this service. | [optional] |
| **uc_r_price** | **Float** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **unit_dose** | **Integer** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **unit_of_measure** | **String** | Pharmacy claim information submitted via file submission and used in reporting and interfaces. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **with_hold_amt** | **Float** | For plans that allow withhold, this amount is used to track that amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::ClaimDetail.new(
  claim_number: null,
  claim_seq: null,
  adjustment_seq: null,
  ans_i_code: null,
  ap_c_code: null,
  account_key: null,
  adjusted_line: null,
  admin_amt: null,
  auth_number: null,
  auth_penalty: null,
  auth_required: null,
  benefit_code: null,
  benefit_rate_applied: null,
  billed_price: null,
  brand_indicator: null,
  buccal: null,
  cli_a_number: null,
  co_b_amt: null,
  co_b_hold: null,
  co_b_mem_resp: null,
  co_b_savings: null,
  co_b_savings_used: null,
  calendar_year: null,
  capitation_claim: null,
  check_id: null,
  co_ins_amt: null,
  co_pay_amt: null,
  currency_id: null,
  days_supply: null,
  ded_credit_amt: null,
  deductible_amt: null,
  detail_plan_year: null,
  diagnosis_code: null,
  discount_amt: null,
  dispense_as_written: null,
  distal: null,
  drug_code: null,
  drug_quantity: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  ex_code2: null,
  ex_code3: null,
  fica: null,
  facial: null,
  federal_amount_to_tax: null,
  federal_tax: null,
  federal_tax_flat: null,
  fill_date: null,
  flex_description: null,
  formulary_indicator: null,
  incisal: null,
  interest: null,
  labial: null,
  life_benefit: null,
  life_benefit_volume: null,
  line_control_number: null,
  lingual: null,
  local_tax: null,
  mail_order_indicator: null,
  medicare_amount_to_tax: null,
  medicare_tax: null,
  mesial: null,
  modifier: null,
  modifier_2: null,
  modifier_3: null,
  modifier_4: null,
  not_covered_amt: null,
  occlusal: null,
  oral_cavity_designation_code_1: null,
  oral_cavity_designation_code_2: null,
  oral_cavity_designation_code_3: null,
  oral_cavity_designation_code_4: null,
  oral_cavity_designation_code_5: null,
  other_deduction_amount: null,
  override_benefit_code: null,
  override_cob_amt: null,
  override_co_ins_amt: null,
  override_co_pay_amt: null,
  override_ded_credit_amt: null,
  override_deductible_amt: null,
  override_federal_tax: null,
  override_local_tax: null,
  override_medicare_tax: null,
  override_not_covered_amt: null,
  override_plan_price: null,
  override_social_security: null,
  override_state_tax: null,
  override_with_hold_amt: null,
  pp_o_price_plan_price_diff: null,
  paid_amt: null,
  partial_loss: null,
  payor_id: null,
  pharmacy_name: null,
  place_of_service: null,
  plan_price: null,
  premium_deduction: null,
  prescriber_id: null,
  prescription_date: null,
  prescription_number: null,
  pricing_method: null,
  pricing_rate: null,
  principal: null,
  procedure_code: null,
  procedure_code2: null,
  qualifying_payment_amount: null,
  reason_code: null,
  refill_indicator: null,
  repriced_savings_amount: null,
  root: null,
  service_date: null,
  service_thru: null,
  soc_sec_amount_to_tax: null,
  social_security: null,
  state_amount_to_tax: null,
  state_tax: null,
  state_tax_flat: null,
  state_tax_state: null,
  status_code: null,
  svc_count: null,
  taxable_amount: null,
  tooth_number: null,
  uc_r_price: null,
  unit_dose: null,
  unit_of_measure: null,
  update_date: null,
  update_user: null,
  with_hold_amt: null
)
```

