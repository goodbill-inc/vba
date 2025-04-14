# Vba::ClaimBatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** | This value, in combination with Batch_Claim, creates a unique identifier for each claim that is maintained in both batch and processed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **batch_claim** | **Integer** | This value, in combination with Batch_Number, creates a unique identifier for each claim that is maintained in both batch and processed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **aeo_b_claim** | **Boolean** | A flag indicating a claim is an Advanced EOB and not a claim for payment. Part of the No Surprise Act. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **accident_date** | **Time** | The date of accident. | [optional] |
| **account_key** | **Integer** | For claim funding, indicates the payor/account this claim would be paid from. | [optional] |
| **adjusted_from** | **Integer** | Indicates that this claim was part of an Adjustment process. | [optional] |
| **adjustment_claim** | **Boolean** | Indicates this claim is part of an adjustment process. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **admission_date** | **Time** | For institutional Claims, holds the Admission Date. | [optional] |
| **admission_diagnostic_code** | **String** | The admission diagnosis code if applicable for this claim. | [optional] |
| **admission_hour** | **String** | For institutional Claims, holds the Admission Hour. | [optional] |
| **admission_source** | **String** | For institutional Claims, holds the Admission Source. | [optional] |
| **admit_date** | **Time** | Used to identify the date the member was admitted to the Hospital if hospitalized as part of this disability. | [optional] |
| **advance_pay** | **Boolean** | Indicates if this claim, for disability, can be processed and paid in advance of that service dates. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **advice_to_pay** | **Boolean** | Notes this claim is advice to pay and will not go through funding. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **all_docs_rec_date** | **Time** | Information field used in custom processing and reporting. | [optional] |
| **ambulance_drop_off_address** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_drop_off_address2** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_drop_off_city** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_drop_off_location** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_drop_off_org_name** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_drop_off_state** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_drop_off_zip** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_pick_up_address** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_pick_up_address2** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_pick_up_city** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_pick_up_location** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_pick_up_state** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **ambulance_pick_up_zip** | **String** | If the claim utlized ambulance services (submitted via 837), we track that here. | [optional] |
| **appliance_placed_date** | **Time** | The date the orthodontic appliance was placed. | [optional] |
| **assumed_care_date** | **Time** | Information field used in custom processing and reporting. | [optional] |
| **attend_provider_address** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_address2** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_city** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_federal_id** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_first_name** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_last_name** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_maid** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_npi** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_org_name** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_phone** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_state** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_taxonomy** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attend_provider_zip** | **String** | The attending provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **attended_physician_date** | **Time** | This identifies the date the member first visited the Physician. This field, in combination with Disabled by Physician Date and Last Day Worked, create the Disability Date for the Member. | [optional] |
| **auto_flex** | **Boolean** | For flex claims, notes that this claim was auto-created by adjudication based on configuration at the group. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **baseload_lookup** | **Boolean** | Flagged when a claim has gone through the baseload provider matching service. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **beneficiary_id** | **String** | Notes the beneficiary for Life &amp; Disability claims. References the MemberBeneficiary.Beneficiary_ID. | [optional] |
| **bill_provider_address** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_address2** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_city** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_federal_id** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_first_name** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_last_name** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_maid** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_npi** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_org_name** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_phone** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_state** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_taxonomy** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **bill_provider_zip** | **String** | The billing provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **billed_amount** | **Float** | Holds the claim level billed amount that is used for balancing the claim detail billed_price values. If different, throws an error. | [optional] |
| **cli_a_number** | **String** | No longer in use. | [optional] |
| **calculate_interest** | **Boolean** | Notes if interest was calculated for this claim as part of adjudication. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **capitation_claim** | **Boolean** | Indicates if this claim is capitated. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_837_cob** | **String** | For 837 transactions, indicates COB has been submitted. | [optional] |
| **claim_id** | **String** | An identifier assigned by external vendors and used for integrations. Primarily comes from the REF*D9 value in the 837. | [optional] |
| **claim_priority** | **String** | For 837 transactions, indicates the submitted claim priority. | [optional] |
| **claim_status** | **String** | The status of the claim. Valid values reside in the ClaimStatus table. | [optional] |
| **claim_type** | **String** | Notes the claim type for this claim. References ClaimType.Claim_Type. | [optional] |
| **closure_effective_date** | **Time** | This is an information only field that allows the tracking of the Closure Effective Date. | [optional] |
| **condition_code1** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code10** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code11** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code12** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code13** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code14** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code15** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code16** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code17** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code18** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code19** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code2** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code20** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code21** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code22** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code23** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code24** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code3** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code4** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code5** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code6** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code7** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code8** | **String** | The Condition Code value for this claim. | [optional] |
| **condition_code9** | **String** | The Condition Code value for this claim. | [optional] |
| **context4_override** | **Boolean** | Allows the user to flag a claim to ignore Context4Health service results and stick to core adjudication edits. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **coverage_start** | **Time** | The patients (or Subscribers) enrollment information, references Subenrollment.Group_Coverage_Start. | [optional] |
| **current_illness_date** | **Time** | The current illness date for this claim. | [optional] |
| **dr_g_code** | **String** | The DRG Code for this claim, if applicable. References the DRGCodes.DRG_Code. | [optional] |
| **dr_g_quantity** | **Float** | The quantity associated with this DRG value. | [optional] |
| **death_cert_rec_date** | **Time** | Information field used in custom processing and reporting. | [optional] |
| **delivery_date** | **Time** | This identifies the date of delivery for disability due to pregnancy. | [optional] |
| **delivery_type** | **String** | This will identify the type of delivery that is performed as a result of pregnancy. | [optional] |
| **dep_ssdi_end_date** | **Time** | This is an information only field that allows the tracking of Dependent SSI End Date. | [optional] |
| **diagnostic_code1** | **String** | An assigned diagnostic code for this claim. This field, in the absence of a corresponding diagnosis pointer from a claim service line, indicates the primary diagnosis. | [optional] |
| **diagnostic_code10** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code11** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code12** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code13** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code14** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code15** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code16** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code17** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code18** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code19** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code2** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code20** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code21** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code22** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code23** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code24** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code3** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code4** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code5** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code6** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code7** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code8** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code9** | **String** | An assigned diagnostic code for this claim. | [optional] |
| **diagnostic_code_type** | **String** | Indicates if the Diagnostic Code values on this claim are ICD9 or ICD10. Two possible values: 9 - ICD9 or 0 - ICD10. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **disability_date** | **Time** | The calculated date of disability (or manually enetered) based on the disabilty advisor in VBASoftware. | [optional] |
| **disability_end_date** | **Time** | Information field used in custom processing and reporting. | [optional] |
| **disability_type** | **String** | Used to identify the type of disability (Injury or Illness). | [optional] |
| **disabled_by_physician** | **Time** | This identifies the date the member was disabled by the Physician. This field, in combination with First Attended Physician Date and Last Day Worked, create the Disability Date for the Member. | [optional] |
| **discharge_date** | **Time** | Used to identify the date the member was discharged from the Hospital if hospitalized as part of this disability. | [optional] |
| **discharge_hour** | **String** | For institutional Claims, holds the Discharge Hour. | [optional] |
| **division_id** | **String** | The patients (or Subscribers) enrollment information, references Subenrollment.Division_ID. | [optional] |
| **e_code_diagnostic_code** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code10** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code11** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code12** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code2** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code3** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code4** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code5** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code6** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code7** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code8** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **e_code_diagnostic_code9** | **String** | The external cause of injury code for this claim, if applicable. | [optional] |
| **epsd_t_condition_indicator1** | **String** | Early and Periodic Screening, Diagnostic, and Treatment Indicator tracked from the claim submission. | [optional] |
| **epsd_t_condition_indicator2** | **String** | Early and Periodic Screening, Diagnostic, and Treatment Indicator tracked from the claim submission. | [optional] |
| **epsd_t_condition_indicator3** | **String** | Early and Periodic Screening, Diagnostic, and Treatment Indicator tracked from the claim submission. | [optional] |
| **epsd_t_referral_given** | **String** | Early and Periodic Screening, Diagnostic, and Treatment tracking for if a referral was given for this claim. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **error_amount** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_auth** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_beneficiary** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_benefit** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_condition_code** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_dates** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_detail** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag1** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag10** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag11** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag12** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag13** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag14** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag15** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag16** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag17** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag18** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag19** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag2** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag20** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag21** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag22** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag23** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag24** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag3** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag4** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag5** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag6** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag7** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag8** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_diag9** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_ex_code1** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_ex_code2** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_exists** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_group** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_mem** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_network** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_occurrence_code** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_plan** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_procedure** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_prov** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_sub** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **error_value_code** | **String** | During adjudication, this holds the results of claim rules associated with this error code. For a list of valid Error Codes, check the ErrorCategoryType table. | [optional] |
| **ex_code1** | **String** | A place for both user assigned reason codes applicable to this claim or for adjudication to automatically assign ex code. References ExplanationCodes.Ex_Code. | [optional] |
| **ex_code2** | **String** | A place for both user assigned reason codes applicable to this claim or for adjudication to automatically assign ex code. References ExplanationCodes.Ex_Code. | [optional] |
| **ex_code3** | **String** | A place for both user assigned reason codes applicable to this claim or for adjudication to automatically assign ex code. References ExplanationCodes.Ex_Code. | [optional] |
| **ex_code4** | **String** | A place for both user assigned reason codes applicable to this claim or for adjudication to automatically assign ex code. References ExplanationCodes.Ex_Code. | [optional] |
| **exhaust_date** | **Time** | This is the Exhaust Date of the members Disability. | [optional] |
| **expected_typical_duration** | **Integer** | Expected Typical Duration (ETD) is the duration of disability identified by the MDA based on the type of job the member has as well as the diagnosis of the disability. | [optional] |
| **fic_a_percent** | **Float** | This will hold the FICA withhold amount for each payment. If tax calculation module is enabled, this option will be ignored. | [optional] |
| **federal_withheld** | **Float** | This will hold the federal withhold amount for each payment. If tax calculation module is enabled, this option will be ignored. | [optional] |
| **filing_indicator** | **String** | No longer in use. | [optional] |
| **follow_up_date** | **Time** | This will place a follow-up date on each payment as an additional identifier for when this disability should be reviewed. | [optional] |
| **follow_up_ex_code** | **String** | This will place a follow-up ex code on each payment to allow the user to categorize what type of follow-up is being performed. | [optional] |
| **freq_code** | **String** | Medicare Resubmission code for the claim. Indicated in Box 22 of the claim report. | [optional] |
| **group_id** | **String** | The patients (or Subscribers) enrollment information, references Subenrollment.Group_ID. | [optional] |
| **hearing_vision_rx_date** | **Time** | Information field used in custom processing and reporting. | [optional] |
| **image_file_location** | **String** | Stores a reference, if applicable, to an image or document associated with this claim. | [optional] |
| **image_file_location2** | **String** | Stores a reference, if applicable, to an image or document associated with this claim. | [optional] |
| **image_file_location3** | **String** | Stores a reference, if applicable, to an image or document associated with this claim. | [optional] |
| **image_file_location4** | **String** | Stores a reference, if applicable, to an image or document associated with this claim. | [optional] |
| **initial_treatment_date** | **Time** | Information field to track the initial treatment date for this claim. | [optional] |
| **insured_address** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_address2** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_alternate_id** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_birth_date** | **Time** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_city** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_employer_id** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_first_name** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_id** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_last_name** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_phone** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_policy_number** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_ssn** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_sex** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_state** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **insured_zip** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **job_type** | **String** | This is the job classification for the member going on disability. | [optional] |
| **lt_d_effective_date** | **Time** | This is an information only field that holds the date the member went on Long-Term Disability. | [optional] |
| **lt_d_packet_date** | **Time** | This is an information only field that tracks the date the Long-Term Disability Packet was sent. | [optional] |
| **last_day_worked** | **Time** | This identifies the date the member last attended work prior to going on disability. This field, in combination with First Attended Physician Date and Disabled by Physician, create the Disability Date for the Member. | [optional] |
| **last_physician_warrant_date** | **Time** | This is an information only field that allows for the tracking of the Physician Warrant Date. | [optional] |
| **last_seen_date** | **Time** | Information field to track the last time a phyician was seen at the time of this claim submission. | [optional] |
| **liability_injury** | **Boolean** | This is an information only field that identifies if this disability is a liability injury. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **mail_to** | **String** | Notes if the payment should be mailed to an entity other than the \&quot;Send_Check_To\&quot;. | [optional] |
| **member_seq** | **String** | The Member Sequence of the patient for this claim. | [optional] |
| **months_of_treatment** | **Integer** | The number of months the orthodontic treatment will be. | [optional] |
| **network_id** | **String** | Indicates the network this claim was paid against. If this value is NULL, the claim is considered \&quot;Out of Network\&quot;. | [optional] |
| **note** | **String** | No longer in use. | [optional] |
| **occupational** | **Boolean** | Notes if the disability is related to the patiens occupation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **occurrence_code1** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code10** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code11** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code12** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code13** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code14** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code15** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code16** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code17** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code18** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code19** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code2** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code20** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code21** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code22** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code23** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code24** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code3** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code4** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code5** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code6** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code7** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code8** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_code9** | **String** | The Occurrence Code value for this claim. | [optional] |
| **occurrence_date1** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date10** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date11** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date12** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date13** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date14** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date15** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date16** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date17** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date18** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date19** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date2** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date20** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date21** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date22** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date23** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date24** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date3** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date4** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date5** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date6** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date7** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date8** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_date9** | **Time** | The Occurrence Date associated to the assigned Occurrence Codes. | [optional] |
| **occurrence_span_code** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code10** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code11** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code12** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code13** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code14** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code15** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code16** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code17** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code18** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code19** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code2** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code20** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code21** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code22** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code23** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code24** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code3** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code4** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code5** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code6** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code7** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code8** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_code9** | **String** | The occurrence span indicator for the Occurrence Span From and Thru dates. | [optional] |
| **occurrence_span_from** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from10** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from11** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from12** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from13** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from14** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from15** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from16** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from17** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from18** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from19** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from2** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from20** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from21** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from22** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from23** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from24** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from3** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from4** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from5** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from6** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from7** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from8** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_from9** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru** | **Time** | The occurrence span thru for this claim. | [optional] |
| **occurrence_span_thru10** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru11** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru12** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru13** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru14** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru15** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru16** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru17** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru18** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru19** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru2** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru20** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru21** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru22** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru23** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru24** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru3** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru4** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru5** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru6** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru7** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru8** | **Time** | The occurrence span from for this claim. | [optional] |
| **occurrence_span_thru9** | **Time** | The occurrence span from for this claim. | [optional] |
| **onset_similar_illness_date** | **Time** | Notes the date of the original illness if this claim is associated to that illness. | [optional] |
| **oper_provider_address** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_address2** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_city** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_federal_id** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_first_name** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_last_name** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_maid** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_npi** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_org_name** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_phone** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_state** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_taxonomy** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **oper_provider_zip** | **String** | The operating physician information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **orthodontics_treatment** | **Boolean** | When this flag is checked, it indicates the dental claim is for orthodontics. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **other_insurance** | **Boolean** | Indicates if other insurance is applicable on this claim. This indicator unlocks COB amount fields on the ClaimDetail (service line). Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **other_procedure_code1** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code10** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code11** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code12** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code13** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code14** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code15** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code16** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code17** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code18** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code19** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code2** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code20** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code21** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code22** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code23** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code3** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code4** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code5** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code6** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code7** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code8** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_code9** | **String** | Additional procedure code (ICD10 Diagnosis) values for this claim submission. | [optional] |
| **other_procedure_date1** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date10** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date11** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date12** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date13** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date14** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date15** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date16** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date17** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date18** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date19** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date2** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date20** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date21** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date22** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date23** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date3** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date4** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date5** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date6** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date7** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date8** | **Time** | Date associated with the additional procedure code. | [optional] |
| **other_procedure_date9** | **Time** | Date associated with the additional procedure code. | [optional] |
| **override** | **String** | No longer in use. | [optional] |
| **override_date** | **Time** | No longer in use. | [optional] |
| **override_network_id** | **Boolean** | This indicator lets the system know that the front end user has assigned this network ID and not adjudication. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_payor_account** | **Boolean** | Users can choose the payor from the More Information screen and this flag prevents adjudication from using the expected payor. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_user** | **String** | No longer in use. | [optional] |
| **partial_disability** | **Boolean** | This will identify if this is a partial disability payment. Partial Disability payments have additional tax and payment rules applied during adjudication. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **patient_account** | **String** | For the servicing provider, this indicates the patient account identifier in their practice management system. | [optional] |
| **patient_address** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_address2** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_birth_date** | **Time** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_city** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_first_name** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_id** | **String** | For EDI submissions, this holds the Insured information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_last_name** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_phone** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_reason_for_visit_diagnostic_code1** | **String** | Reason for Visit code on Diagnosis Code 1 | [optional] |
| **patient_reason_for_visit_diagnostic_code2** | **String** | Reason for Visit code on Diagnosis Code 2 | [optional] |
| **patient_reason_for_visit_diagnostic_code3** | **String** | Reason for Visit code on Diagnosis Code 3 | [optional] |
| **patient_relationship** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_sex** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_signature** | **Boolean** | Indicates if the patient signature has been collected. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **patient_signature_date** | **Time** | Indicates the date of the patient signature being collected. | [optional] |
| **patient_state** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **patient_status** | **String** | For institutional Claims, holds the Patient Status. | [optional] |
| **patient_zip** | **String** | For EDI submissions, this holds the Patient information so it can be tracked via trigger to the ClaimPreBatch table. | [optional] |
| **pay_to_plan_address** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_plan_address2** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_plan_city** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_plan_claim_office_num** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_plan_id** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_plan_naic** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_plan_name** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_plan_state** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_plan_zip** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_address** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_address2** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_city** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_state** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **pay_to_zip** | **String** | The Pay To information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **payee_id** | **String** | The billing provider (payee) for this claim. References the ProviderPayee.Payee_ID (by Provider_ID). | [optional] |
| **payor_claim_control_number** | **String** | A claim reference number used in conjunction with the Medicare Resubmission code. Indicated in Box 22 of the claim report. | [optional] |
| **payor_id** | **String** | For claim funding, indicates the payor/account this claim would be paid from. | [optional] |
| **physician_return_to_work** | **Time** | This is the Return to Work date identified by the Physician at the start of disability. This may or may not be the actual date the member returns to work. | [optional] |
| **place_of_service** | **String** | Some transactions hold the Place of Service at the header but typically this value is empty and the ClaimDetail.Place_Of_Service is used for each service line. This value is not used in standard processing. | [optional] |
| **plan_id** | **String** | Holds the plan the patient is enrolled in and that benefits are assigned. | [optional] |
| **plan_provider** | **String** | No longer in use. | [optional] |
| **plan_year** | **String** | Indicates the Plan Year this claim is processed under. This drives accumulator calculations and referneces the GroupPlanYear.Plan_Year value. | [optional] |
| **present_on_admission1** | **String** | Indicates if the patient was present on admission for diagnosis 1. | [optional] |
| **present_on_admission10** | **String** | Indicates if the patient was present on admission for diagnosis 10. | [optional] |
| **present_on_admission11** | **String** | Indicates if the patient was present on admission for diagnosis 11. | [optional] |
| **present_on_admission12** | **String** | Indicates if the patient was present on admission for diagnosis 12. | [optional] |
| **present_on_admission13** | **String** | Indicates if the patient was present on admission for diagnosis 13. | [optional] |
| **present_on_admission14** | **String** | Indicates if the patient was present on admission for diagnosis 14. | [optional] |
| **present_on_admission15** | **String** | Indicates if the patient was present on admission for diagnosis 15. | [optional] |
| **present_on_admission16** | **String** | Indicates if the patient was present on admission for diagnosis 16. | [optional] |
| **present_on_admission17** | **String** | Indicates if the patient was present on admission for diagnosis 17. | [optional] |
| **present_on_admission18** | **String** | Indicates if the patient was present on admission for diagnosis 18. | [optional] |
| **present_on_admission19** | **String** | Indicates if the patient was present on admission for diagnosis 19. | [optional] |
| **present_on_admission2** | **String** | Indicates if the patient was present on admission for diagnosis 2. | [optional] |
| **present_on_admission20** | **String** | Indicates if the patient was present on admission for diagnosis 20. | [optional] |
| **present_on_admission21** | **String** | Indicates if the patient was present on admission for diagnosis 21. | [optional] |
| **present_on_admission22** | **String** | Indicates if the patient was present on admission for diagnosis 22. | [optional] |
| **present_on_admission23** | **String** | Indicates if the patient was present on admission for diagnosis 23. | [optional] |
| **present_on_admission24** | **String** | Indicates if the patient was present on admission for diagnosis 24. | [optional] |
| **present_on_admission3** | **String** | Indicates if the patient was present on admission for diagnosis 3. | [optional] |
| **present_on_admission4** | **String** | Indicates if the patient was present on admission for diagnosis 4. | [optional] |
| **present_on_admission5** | **String** | Indicates if the patient was present on admission for diagnosis 5. | [optional] |
| **present_on_admission6** | **String** | Indicates if the patient was present on admission for diagnosis 6. | [optional] |
| **present_on_admission7** | **String** | Indicates if the patient was present on admission for diagnosis 7. | [optional] |
| **present_on_admission8** | **String** | Indicates if the patient was present on admission for diagnosis 8. | [optional] |
| **present_on_admission9** | **String** | Indicates if the patient was present on admission for diagnosis 9. | [optional] |
| **present_on_admission_e_code1** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 1. | [optional] |
| **present_on_admission_e_code10** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 10. | [optional] |
| **present_on_admission_e_code11** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 11. | [optional] |
| **present_on_admission_e_code12** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 12. | [optional] |
| **present_on_admission_e_code2** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 2. | [optional] |
| **present_on_admission_e_code3** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 3. | [optional] |
| **present_on_admission_e_code4** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 4. | [optional] |
| **present_on_admission_e_code5** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 5. | [optional] |
| **present_on_admission_e_code6** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 6. | [optional] |
| **present_on_admission_e_code7** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 7. | [optional] |
| **present_on_admission_e_code8** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 8. | [optional] |
| **present_on_admission_e_code9** | **String** | Indicates if the patient was present for the external cause of injury diagnosis 9. | [optional] |
| **pricing_method** | **String** | For reprice claims (typically submitted via 837), this notes the reprice method used to reprice this claim. | [optional] |
| **pricing_org_id** | **String** | The ID of the pricing organization. Data is obtained in segment HCP04 on an 837. | [optional] |
| **pricing_rate** | **Float** | The rate associated with the reprice method (Pricing_Method). | [optional] |
| **principal_procedure_code** | **String** | The principal procedure (ICD10 Diagnosis) for this claim submission. | [optional] |
| **principal_procedure_date** | **Time** | The principal procedure date. | [optional] |
| **prior_placement_date** | **Time** | The date of a previous prosthetic or crown applied, if there was one. | [optional] |
| **prosthesis_replacement** | **Boolean** | This flag indicates if this claim is for the replacement of a prosthesis. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **provider_address** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_address2** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_city** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_federal_id** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_first_name** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_id** | **String** | The provider ID of the servicing provider. References Provider.Provider_ID. | [optional] |
| **provider_last_name** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_maid** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_npi** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_org_name** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_phone** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_state** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_taxonomy** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **provider_zip** | **String** | For EDI submissions, this holds the service provider information based on matching logic that interrogates the submitted Billing Provider, Service Provider, and Rendering Provider. | [optional] |
| **qp_a_method** | **String** | Overrides the QPA Method set on the Plan for this claim. | [optional] |
| **ready_to_process** | **String** | Notes if the claim is ready to process out of batch. | [optional] |
| **received_date** | **Time** | The date this claim was received into the admin system. | [optional] |
| **ref_provider_address** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_address2** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_city** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_federal_id** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_first_name** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_last_name** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_maid** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_npi** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_org_name** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_phone** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_state** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_taxonomy** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **ref_provider_zip** | **String** | The referring provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **referred_by** | **String** | Information field to track if a referral was sent for this claim. | [optional] |
| **refund_check_id** | **Integer** | Indicates that this claim was part of a Void process. | [optional] |
| **refund_claim** | **Boolean** | Indicates this claim is part of a refund process. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **refund_funding_key** | **Integer** | If this claim was part of a refund process, this will hold the reference to the receipt generated by the refund process. | [optional] |
| **related_to_accident** | **Boolean** | Indicates if the claim is related to a non-car accident. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **related_to_another_party** | **Boolean** | Indicates if the claim was casued by a third party. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **related_to_auto** | **Boolean** | Indicates if the claim is related to a car accident. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **related_to_employment** | **Boolean** | Indicates if the claim is work related. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **relinquished_care_date** | **Time** | Information field used in custom processing and reporting. | [optional] |
| **rend_provider_address** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_address2** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_city** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_federal_id** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_first_name** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_last_name** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_maid** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_npi** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_org_name** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_phone** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_state** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_taxonomy** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **rend_provider_zip** | **String** | The rendering provider information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **repriced_network_id** | **String** | As part of reprice claim submissions (via 837), this will hold the repricing network. | [optional] |
| **return_to_work_date** | **Time** | This is the date the member Returned to Work. This date affects the total payments created as well as other calculations during adjudication. | [optional] |
| **salary_continuation** | **Boolean** | This flag identifies that there is salary continuation during this disability. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **send_check_to** | **String** | Indicates the entity that should be paid for this claim. S - Subscriber, G - Group, B - Beneficiary, P - Payee, or V - Provider. | [optional] |
| **sender_id** | **String** | The Sender ID sent inbound for x12 (837) transactions. | [optional] |
| **service_date** | **Time** | The earliest Service_Date of all service lines on this claim. | [optional] |
| **service_fac_loc_address** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_address2** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_city** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_federal_id** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_first_name** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_last_name** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_maid** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_npi** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_org_name** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_phone** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_state** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_taxonomy** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_fac_loc_zip** | **String** | The service facility information as submitted on the 837. This field is used for tracking via trigger to the ClaimPreBatch. | [optional] |
| **service_thru** | **Time** | The latest Service_Thru for all service lines on this claim. | [optional] |
| **sick_time** | **Boolean** | This flag identifies that there is sick time during this disability. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **statement_from_date** | **Time** | For Institutional Claims, holds the Statement Date. | [optional] |
| **statement_thru_date** | **Time** | For Institutional Claims, holds the Statement Date. | [optional] |
| **subscriber_id** | **String** | The Subscriber ID of the patient for this claim. | [optional] |
| **subscriber_signature** | **Boolean** | Indicates if the insured signature has been collected. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **survivor_benefit** | **Boolean** | Indicates if Survivor Benefit was applied for this disability payment. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **third_party_payment** | **Boolean** | For disability, indicates if this professional claim is a 3rd party payment (typically related to alimony, garnishment, etc.) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **total_cob** | **Float** | COB total for all claim detail lines Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **trading_partner_key** | **Integer** | No longer in use. | [optional] |
| **trans_837_control_num** | **String** | For 837 transactions, this is the control number assgined by the submitter. | [optional] |
| **transaction_837** | **Boolean** | Indicates this is a claim entered by an inbound 837. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **transaction_837_id** | **String** | For 837 transactions, this holds the transaction ID assigned by the submission. | [optional] |
| **type_of_admission** | **String** | The Admission Type associated to this claim. | [optional] |
| **type_of_bill** | **String** | The Bill Type associated to this claim. References BillType.Type_Of_Bill. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **vacation** | **Boolean** | This flag identifies that there is vacation during this disability. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **value_amount1** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount10** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount11** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount12** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount13** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount14** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount15** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount16** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount17** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount18** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount19** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount2** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount20** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount21** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount22** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount23** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount24** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount3** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount4** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount5** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount6** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount7** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount8** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_amount9** | **Float** | The monetary amount related to the value code. | [optional] |
| **value_code1** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code10** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code11** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code12** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code13** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code14** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code15** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code16** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code17** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code18** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code19** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code2** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code20** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code21** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code22** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code23** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code24** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code3** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code4** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code5** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code6** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code7** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code8** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **value_code9** | **String** | The code indicating a monetary condition which was used by the intermediary to process an institutional claim. | [optional] |
| **void_check_id** | **Integer** | Indicates that this claim was part of a Refund process. | [optional] |
| **volume_override** | **Boolean** | Notes that the benefit amount, for disability claims, has been manually overridden. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **waiting_period_claim** | **Boolean** | Indicates if this disability payment is a waiting period payment. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::ClaimBatch.new(
  batch_number: null,
  batch_claim: null,
  aeo_b_claim: null,
  accident_date: null,
  account_key: null,
  adjusted_from: null,
  adjustment_claim: null,
  admission_date: null,
  admission_diagnostic_code: null,
  admission_hour: null,
  admission_source: null,
  admit_date: null,
  advance_pay: null,
  advice_to_pay: null,
  all_docs_rec_date: null,
  ambulance_drop_off_address: null,
  ambulance_drop_off_address2: null,
  ambulance_drop_off_city: null,
  ambulance_drop_off_location: null,
  ambulance_drop_off_org_name: null,
  ambulance_drop_off_state: null,
  ambulance_drop_off_zip: null,
  ambulance_pick_up_address: null,
  ambulance_pick_up_address2: null,
  ambulance_pick_up_city: null,
  ambulance_pick_up_location: null,
  ambulance_pick_up_state: null,
  ambulance_pick_up_zip: null,
  appliance_placed_date: null,
  assumed_care_date: null,
  attend_provider_address: null,
  attend_provider_address2: null,
  attend_provider_city: null,
  attend_provider_federal_id: null,
  attend_provider_first_name: null,
  attend_provider_last_name: null,
  attend_provider_maid: null,
  attend_provider_npi: null,
  attend_provider_org_name: null,
  attend_provider_phone: null,
  attend_provider_state: null,
  attend_provider_taxonomy: null,
  attend_provider_zip: null,
  attended_physician_date: null,
  auto_flex: null,
  baseload_lookup: null,
  beneficiary_id: null,
  bill_provider_address: null,
  bill_provider_address2: null,
  bill_provider_city: null,
  bill_provider_federal_id: null,
  bill_provider_first_name: null,
  bill_provider_last_name: null,
  bill_provider_maid: null,
  bill_provider_npi: null,
  bill_provider_org_name: null,
  bill_provider_phone: null,
  bill_provider_state: null,
  bill_provider_taxonomy: null,
  bill_provider_zip: null,
  billed_amount: null,
  cli_a_number: null,
  calculate_interest: null,
  capitation_claim: null,
  claim_837_cob: null,
  claim_id: null,
  claim_priority: null,
  claim_status: null,
  claim_type: null,
  closure_effective_date: null,
  condition_code1: null,
  condition_code10: null,
  condition_code11: null,
  condition_code12: null,
  condition_code13: null,
  condition_code14: null,
  condition_code15: null,
  condition_code16: null,
  condition_code17: null,
  condition_code18: null,
  condition_code19: null,
  condition_code2: null,
  condition_code20: null,
  condition_code21: null,
  condition_code22: null,
  condition_code23: null,
  condition_code24: null,
  condition_code3: null,
  condition_code4: null,
  condition_code5: null,
  condition_code6: null,
  condition_code7: null,
  condition_code8: null,
  condition_code9: null,
  context4_override: null,
  coverage_start: null,
  current_illness_date: null,
  dr_g_code: null,
  dr_g_quantity: null,
  death_cert_rec_date: null,
  delivery_date: null,
  delivery_type: null,
  dep_ssdi_end_date: null,
  diagnostic_code1: null,
  diagnostic_code10: null,
  diagnostic_code11: null,
  diagnostic_code12: null,
  diagnostic_code13: null,
  diagnostic_code14: null,
  diagnostic_code15: null,
  diagnostic_code16: null,
  diagnostic_code17: null,
  diagnostic_code18: null,
  diagnostic_code19: null,
  diagnostic_code2: null,
  diagnostic_code20: null,
  diagnostic_code21: null,
  diagnostic_code22: null,
  diagnostic_code23: null,
  diagnostic_code24: null,
  diagnostic_code3: null,
  diagnostic_code4: null,
  diagnostic_code5: null,
  diagnostic_code6: null,
  diagnostic_code7: null,
  diagnostic_code8: null,
  diagnostic_code9: null,
  diagnostic_code_type: null,
  disability_date: null,
  disability_end_date: null,
  disability_type: null,
  disabled_by_physician: null,
  discharge_date: null,
  discharge_hour: null,
  division_id: null,
  e_code_diagnostic_code: null,
  e_code_diagnostic_code10: null,
  e_code_diagnostic_code11: null,
  e_code_diagnostic_code12: null,
  e_code_diagnostic_code2: null,
  e_code_diagnostic_code3: null,
  e_code_diagnostic_code4: null,
  e_code_diagnostic_code5: null,
  e_code_diagnostic_code6: null,
  e_code_diagnostic_code7: null,
  e_code_diagnostic_code8: null,
  e_code_diagnostic_code9: null,
  epsd_t_condition_indicator1: null,
  epsd_t_condition_indicator2: null,
  epsd_t_condition_indicator3: null,
  epsd_t_referral_given: null,
  entry_date: null,
  entry_user: null,
  error_amount: null,
  error_auth: null,
  error_beneficiary: null,
  error_benefit: null,
  error_condition_code: null,
  error_dates: null,
  error_detail: null,
  error_diag1: null,
  error_diag10: null,
  error_diag11: null,
  error_diag12: null,
  error_diag13: null,
  error_diag14: null,
  error_diag15: null,
  error_diag16: null,
  error_diag17: null,
  error_diag18: null,
  error_diag19: null,
  error_diag2: null,
  error_diag20: null,
  error_diag21: null,
  error_diag22: null,
  error_diag23: null,
  error_diag24: null,
  error_diag3: null,
  error_diag4: null,
  error_diag5: null,
  error_diag6: null,
  error_diag7: null,
  error_diag8: null,
  error_diag9: null,
  error_ex_code1: null,
  error_ex_code2: null,
  error_exists: null,
  error_group: null,
  error_mem: null,
  error_network: null,
  error_occurrence_code: null,
  error_plan: null,
  error_procedure: null,
  error_prov: null,
  error_sub: null,
  error_value_code: null,
  ex_code1: null,
  ex_code2: null,
  ex_code3: null,
  ex_code4: null,
  exhaust_date: null,
  expected_typical_duration: null,
  fic_a_percent: null,
  federal_withheld: null,
  filing_indicator: null,
  follow_up_date: null,
  follow_up_ex_code: null,
  freq_code: null,
  group_id: null,
  hearing_vision_rx_date: null,
  image_file_location: null,
  image_file_location2: null,
  image_file_location3: null,
  image_file_location4: null,
  initial_treatment_date: null,
  insured_address: null,
  insured_address2: null,
  insured_alternate_id: null,
  insured_birth_date: null,
  insured_city: null,
  insured_employer_id: null,
  insured_first_name: null,
  insured_id: null,
  insured_last_name: null,
  insured_phone: null,
  insured_policy_number: null,
  insured_ssn: null,
  insured_sex: null,
  insured_state: null,
  insured_zip: null,
  job_type: null,
  lt_d_effective_date: null,
  lt_d_packet_date: null,
  last_day_worked: null,
  last_physician_warrant_date: null,
  last_seen_date: null,
  liability_injury: null,
  mail_to: null,
  member_seq: null,
  months_of_treatment: null,
  network_id: null,
  note: null,
  occupational: null,
  occurrence_code1: null,
  occurrence_code10: null,
  occurrence_code11: null,
  occurrence_code12: null,
  occurrence_code13: null,
  occurrence_code14: null,
  occurrence_code15: null,
  occurrence_code16: null,
  occurrence_code17: null,
  occurrence_code18: null,
  occurrence_code19: null,
  occurrence_code2: null,
  occurrence_code20: null,
  occurrence_code21: null,
  occurrence_code22: null,
  occurrence_code23: null,
  occurrence_code24: null,
  occurrence_code3: null,
  occurrence_code4: null,
  occurrence_code5: null,
  occurrence_code6: null,
  occurrence_code7: null,
  occurrence_code8: null,
  occurrence_code9: null,
  occurrence_date1: null,
  occurrence_date10: null,
  occurrence_date11: null,
  occurrence_date12: null,
  occurrence_date13: null,
  occurrence_date14: null,
  occurrence_date15: null,
  occurrence_date16: null,
  occurrence_date17: null,
  occurrence_date18: null,
  occurrence_date19: null,
  occurrence_date2: null,
  occurrence_date20: null,
  occurrence_date21: null,
  occurrence_date22: null,
  occurrence_date23: null,
  occurrence_date24: null,
  occurrence_date3: null,
  occurrence_date4: null,
  occurrence_date5: null,
  occurrence_date6: null,
  occurrence_date7: null,
  occurrence_date8: null,
  occurrence_date9: null,
  occurrence_span_code: null,
  occurrence_span_code10: null,
  occurrence_span_code11: null,
  occurrence_span_code12: null,
  occurrence_span_code13: null,
  occurrence_span_code14: null,
  occurrence_span_code15: null,
  occurrence_span_code16: null,
  occurrence_span_code17: null,
  occurrence_span_code18: null,
  occurrence_span_code19: null,
  occurrence_span_code2: null,
  occurrence_span_code20: null,
  occurrence_span_code21: null,
  occurrence_span_code22: null,
  occurrence_span_code23: null,
  occurrence_span_code24: null,
  occurrence_span_code3: null,
  occurrence_span_code4: null,
  occurrence_span_code5: null,
  occurrence_span_code6: null,
  occurrence_span_code7: null,
  occurrence_span_code8: null,
  occurrence_span_code9: null,
  occurrence_span_from: null,
  occurrence_span_from10: null,
  occurrence_span_from11: null,
  occurrence_span_from12: null,
  occurrence_span_from13: null,
  occurrence_span_from14: null,
  occurrence_span_from15: null,
  occurrence_span_from16: null,
  occurrence_span_from17: null,
  occurrence_span_from18: null,
  occurrence_span_from19: null,
  occurrence_span_from2: null,
  occurrence_span_from20: null,
  occurrence_span_from21: null,
  occurrence_span_from22: null,
  occurrence_span_from23: null,
  occurrence_span_from24: null,
  occurrence_span_from3: null,
  occurrence_span_from4: null,
  occurrence_span_from5: null,
  occurrence_span_from6: null,
  occurrence_span_from7: null,
  occurrence_span_from8: null,
  occurrence_span_from9: null,
  occurrence_span_thru: null,
  occurrence_span_thru10: null,
  occurrence_span_thru11: null,
  occurrence_span_thru12: null,
  occurrence_span_thru13: null,
  occurrence_span_thru14: null,
  occurrence_span_thru15: null,
  occurrence_span_thru16: null,
  occurrence_span_thru17: null,
  occurrence_span_thru18: null,
  occurrence_span_thru19: null,
  occurrence_span_thru2: null,
  occurrence_span_thru20: null,
  occurrence_span_thru21: null,
  occurrence_span_thru22: null,
  occurrence_span_thru23: null,
  occurrence_span_thru24: null,
  occurrence_span_thru3: null,
  occurrence_span_thru4: null,
  occurrence_span_thru5: null,
  occurrence_span_thru6: null,
  occurrence_span_thru7: null,
  occurrence_span_thru8: null,
  occurrence_span_thru9: null,
  onset_similar_illness_date: null,
  oper_provider_address: null,
  oper_provider_address2: null,
  oper_provider_city: null,
  oper_provider_federal_id: null,
  oper_provider_first_name: null,
  oper_provider_last_name: null,
  oper_provider_maid: null,
  oper_provider_npi: null,
  oper_provider_org_name: null,
  oper_provider_phone: null,
  oper_provider_state: null,
  oper_provider_taxonomy: null,
  oper_provider_zip: null,
  orthodontics_treatment: null,
  other_insurance: null,
  other_procedure_code1: null,
  other_procedure_code10: null,
  other_procedure_code11: null,
  other_procedure_code12: null,
  other_procedure_code13: null,
  other_procedure_code14: null,
  other_procedure_code15: null,
  other_procedure_code16: null,
  other_procedure_code17: null,
  other_procedure_code18: null,
  other_procedure_code19: null,
  other_procedure_code2: null,
  other_procedure_code20: null,
  other_procedure_code21: null,
  other_procedure_code22: null,
  other_procedure_code23: null,
  other_procedure_code3: null,
  other_procedure_code4: null,
  other_procedure_code5: null,
  other_procedure_code6: null,
  other_procedure_code7: null,
  other_procedure_code8: null,
  other_procedure_code9: null,
  other_procedure_date1: null,
  other_procedure_date10: null,
  other_procedure_date11: null,
  other_procedure_date12: null,
  other_procedure_date13: null,
  other_procedure_date14: null,
  other_procedure_date15: null,
  other_procedure_date16: null,
  other_procedure_date17: null,
  other_procedure_date18: null,
  other_procedure_date19: null,
  other_procedure_date2: null,
  other_procedure_date20: null,
  other_procedure_date21: null,
  other_procedure_date22: null,
  other_procedure_date23: null,
  other_procedure_date3: null,
  other_procedure_date4: null,
  other_procedure_date5: null,
  other_procedure_date6: null,
  other_procedure_date7: null,
  other_procedure_date8: null,
  other_procedure_date9: null,
  override: null,
  override_date: null,
  override_network_id: null,
  override_payor_account: null,
  override_user: null,
  partial_disability: null,
  patient_account: null,
  patient_address: null,
  patient_address2: null,
  patient_birth_date: null,
  patient_city: null,
  patient_first_name: null,
  patient_id: null,
  patient_last_name: null,
  patient_phone: null,
  patient_reason_for_visit_diagnostic_code1: null,
  patient_reason_for_visit_diagnostic_code2: null,
  patient_reason_for_visit_diagnostic_code3: null,
  patient_relationship: null,
  patient_sex: null,
  patient_signature: null,
  patient_signature_date: null,
  patient_state: null,
  patient_status: null,
  patient_zip: null,
  pay_to_plan_address: null,
  pay_to_plan_address2: null,
  pay_to_plan_city: null,
  pay_to_plan_claim_office_num: null,
  pay_to_plan_id: null,
  pay_to_plan_naic: null,
  pay_to_plan_name: null,
  pay_to_plan_state: null,
  pay_to_plan_zip: null,
  pay_to_address: null,
  pay_to_address2: null,
  pay_to_city: null,
  pay_to_state: null,
  pay_to_zip: null,
  payee_id: null,
  payor_claim_control_number: null,
  payor_id: null,
  physician_return_to_work: null,
  place_of_service: null,
  plan_id: null,
  plan_provider: null,
  plan_year: null,
  present_on_admission1: null,
  present_on_admission10: null,
  present_on_admission11: null,
  present_on_admission12: null,
  present_on_admission13: null,
  present_on_admission14: null,
  present_on_admission15: null,
  present_on_admission16: null,
  present_on_admission17: null,
  present_on_admission18: null,
  present_on_admission19: null,
  present_on_admission2: null,
  present_on_admission20: null,
  present_on_admission21: null,
  present_on_admission22: null,
  present_on_admission23: null,
  present_on_admission24: null,
  present_on_admission3: null,
  present_on_admission4: null,
  present_on_admission5: null,
  present_on_admission6: null,
  present_on_admission7: null,
  present_on_admission8: null,
  present_on_admission9: null,
  present_on_admission_e_code1: null,
  present_on_admission_e_code10: null,
  present_on_admission_e_code11: null,
  present_on_admission_e_code12: null,
  present_on_admission_e_code2: null,
  present_on_admission_e_code3: null,
  present_on_admission_e_code4: null,
  present_on_admission_e_code5: null,
  present_on_admission_e_code6: null,
  present_on_admission_e_code7: null,
  present_on_admission_e_code8: null,
  present_on_admission_e_code9: null,
  pricing_method: null,
  pricing_org_id: null,
  pricing_rate: null,
  principal_procedure_code: null,
  principal_procedure_date: null,
  prior_placement_date: null,
  prosthesis_replacement: null,
  provider_address: null,
  provider_address2: null,
  provider_city: null,
  provider_federal_id: null,
  provider_first_name: null,
  provider_id: null,
  provider_last_name: null,
  provider_maid: null,
  provider_npi: null,
  provider_org_name: null,
  provider_phone: null,
  provider_state: null,
  provider_taxonomy: null,
  provider_zip: null,
  qp_a_method: null,
  ready_to_process: null,
  received_date: null,
  ref_provider_address: null,
  ref_provider_address2: null,
  ref_provider_city: null,
  ref_provider_federal_id: null,
  ref_provider_first_name: null,
  ref_provider_last_name: null,
  ref_provider_maid: null,
  ref_provider_npi: null,
  ref_provider_org_name: null,
  ref_provider_phone: null,
  ref_provider_state: null,
  ref_provider_taxonomy: null,
  ref_provider_zip: null,
  referred_by: null,
  refund_check_id: null,
  refund_claim: null,
  refund_funding_key: null,
  related_to_accident: null,
  related_to_another_party: null,
  related_to_auto: null,
  related_to_employment: null,
  relinquished_care_date: null,
  rend_provider_address: null,
  rend_provider_address2: null,
  rend_provider_city: null,
  rend_provider_federal_id: null,
  rend_provider_first_name: null,
  rend_provider_last_name: null,
  rend_provider_maid: null,
  rend_provider_npi: null,
  rend_provider_org_name: null,
  rend_provider_phone: null,
  rend_provider_state: null,
  rend_provider_taxonomy: null,
  rend_provider_zip: null,
  repriced_network_id: null,
  return_to_work_date: null,
  salary_continuation: null,
  send_check_to: null,
  sender_id: null,
  service_date: null,
  service_fac_loc_address: null,
  service_fac_loc_address2: null,
  service_fac_loc_city: null,
  service_fac_loc_federal_id: null,
  service_fac_loc_first_name: null,
  service_fac_loc_last_name: null,
  service_fac_loc_maid: null,
  service_fac_loc_npi: null,
  service_fac_loc_org_name: null,
  service_fac_loc_phone: null,
  service_fac_loc_state: null,
  service_fac_loc_taxonomy: null,
  service_fac_loc_zip: null,
  service_thru: null,
  sick_time: null,
  statement_from_date: null,
  statement_thru_date: null,
  subscriber_id: null,
  subscriber_signature: null,
  survivor_benefit: null,
  third_party_payment: null,
  total_cob: null,
  trading_partner_key: null,
  trans_837_control_num: null,
  transaction_837: null,
  transaction_837_id: null,
  type_of_admission: null,
  type_of_bill: null,
  update_date: null,
  update_user: null,
  vacation: null,
  value_amount1: null,
  value_amount10: null,
  value_amount11: null,
  value_amount12: null,
  value_amount13: null,
  value_amount14: null,
  value_amount15: null,
  value_amount16: null,
  value_amount17: null,
  value_amount18: null,
  value_amount19: null,
  value_amount2: null,
  value_amount20: null,
  value_amount21: null,
  value_amount22: null,
  value_amount23: null,
  value_amount24: null,
  value_amount3: null,
  value_amount4: null,
  value_amount5: null,
  value_amount6: null,
  value_amount7: null,
  value_amount8: null,
  value_amount9: null,
  value_code1: null,
  value_code10: null,
  value_code11: null,
  value_code12: null,
  value_code13: null,
  value_code14: null,
  value_code15: null,
  value_code16: null,
  value_code17: null,
  value_code18: null,
  value_code19: null,
  value_code2: null,
  value_code20: null,
  value_code21: null,
  value_code22: null,
  value_code23: null,
  value_code24: null,
  value_code3: null,
  value_code4: null,
  value_code5: null,
  value_code6: null,
  value_code7: null,
  value_code8: null,
  value_code9: null,
  void_check_id: null,
  volume_override: null,
  waiting_period_claim: null
)
```

