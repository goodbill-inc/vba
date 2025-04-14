# Vba::CompanyData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_value** | **Integer** | This value is always 1 and there can only be a single record in the CompanyData table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ap_c_schedule** | **String** | Default APC Schedule to be used | [optional] |
| **as_o_percentage** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **accident_review_ex_code** | **String** | When a Diagnosis Code is marked as an Accident, or a Plan Benefit is marked as an accident and the Diagnosis Code is not marked as an accident, trigger this Ex Code | [optional] |
| **accident_review_plan_benefit_ex_code** | **String** | When a Plan Benefit is marked as an accident and the Diagnosis Code is not marked as an accident, trigger this Ex Code | [optional] |
| **additional_invoice_rates** | **Boolean** | No longer used in the system Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **address** | **String** | Address of the Company. | [optional] |
| **address2** | **String** | Line 2 of the Client&#39;s address. | [optional] |
| **adv_password_req** | **Boolean** | Requires passwords to have 3 of the following: Uppercase Letter, Lowercase Letter, Number, Special Character Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age_disenroll_reason** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **allow_apostrophe_in_name** | **Boolean** | Whether or not the Apostrophe is allowed in Provider or Member names Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **allow_checks_post_date** | **Boolean** | This option will allow for post dated checks. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **allow_claim_benefit_override** | **Boolean** | Allows Benefit Override Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **allow_max_at_subscriber** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **allow_oop_on_override** | **Boolean** | When selected, OOP will be calculated even when overridden Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **allow_zero_billed** | **String** | This options allows claims to be process with a &#39;0.00&#39; billed amount. | [optional] |
| **anesthesia_by_fee_sched** | **Boolean** | When selected, use the matching under Anesthesia for Fee Schedules when an Anastesia Procedure Code/Modifier is present. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **anesthesia_round_precision** | **Integer** | The precision of rounding used for Anesthesia Units Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided. | [optional] |
| **anesthesia_round_type** | **String** | The type of rounding used for Anesthesia Units | [optional] |
| **apply_multiple_benefit_ex_code_manual** | **Boolean** | If Ex Code is set and all benefits match, set to the first benefit code and set the Ex Code.  If Apply_Multiple_Benefit_ExCode_Manual is set to 1 (checked) then the ex code is applied as a Manual ex code, which is not cleared on future adjudications and requires a client to manually clear it Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auth_review_full_path** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **auth_review_object** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **auth_code_closed** | **String** | If after processing a claim, there are no more remaining units left for an Auth that was used on the claim, set the Auth Code on the Auth to this Code | [optional] |
| **auth_code_pay_amt_zero** | **String** | When a claim with an auth has a payable amount of zero | [optional] |
| **auth_code_reopen** | **String** | If after returning a claim to batch, if there are remaining units left for an Auth that was used on the claim, set the Auth Code on the Auth to this Code | [optional] |
| **auth_code_under_auth_amt** | **String** | When a claim with an auth has a payable amount under the approved amount on the auth | [optional] |
| **auth_over_unit_split_ex_code** | **String** | Ex Code to use when spliting Authorizations | [optional] |
| **auth_penalty_ex_code** | **String** | If filled out and an Auth Penalty is found, insert the Ex Code | [optional] |
| **auto_adj_return_to_batch** | **Boolean** | This flag indicates claims being returned to batch will be automatically adjudicated. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auto_pay_capitated_claims** | **Boolean** | Auto pays Capitated claims and Creates a Check Batch Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auto_process_adjustment_backout** | **Boolean** | Whether or not to automatically process the Backout of a claim after an adjustment Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auto_term_plan_on_gateway_request** | **Boolean** | This is a flag indicating that when a Gateway request for coverage is confirmed, if the member has an existing plan of the same plan type, it will be termed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **b_r_domain_name** | **String** | For Bold Reports integration, this identifies the Domain Name.  Used only by VBA developers, not for client use. | [optional] |
| **b_r_site_name** | **String** | For Bold Reports integration, this identifies the Site Name. Used only by VBA developers, not for client use. | [optional] |
| **b_r_site_secret** | **String** | For Bold Reports integration, this identifies the Site Secret. Used only by VBA developers, not for client use. | [optional] |
| **b_r_site_user** | **String** | For Bold Reports integration, this identifies the Site User. Used only by VBA developers, not for client use. | [optional] |
| **base_load_fg** | **Boolean** | Whether or not BaseLoad is turned on | [optional] |
| **base_load_pass** | **String** | BaseLoad Password | [optional] |
| **base_load_service_date_flag** | **Boolean** | This flag denotes whether or not to include the Service Date within the BaseLoad XML sent to BaseLoad Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **base_load_url** | **String** | BaseLoad URL | [optional] |
| **base_load_user** | **String** | BaseLoad User ID | [optional] |
| **beneficiary_age_limit** | **Float** | Minimum Age for a Beneficiary | [optional] |
| **beneficiary_age_ex_code** | **String** | This pend code will be applied when the beneficiary age defined on the enrollment is invalid. | [optional] |
| **benefit_cascade_ex_code** | **String** | This Informational Ex Code will be applied to a claim detail line when the benefit is defined as cascading in the plan and the necessary criteria have been met to cascade the benefits. | [optional] |
| **benefit_length** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **bridged_tooth_ex_code** | **String** | This pend code will be applied when the tooth number on the claim is found to have been previously bridged. | [optional] |
| **ca_s_segment_ben_match** | **Boolean** | This flag indicates that the adjudication benefit matching will use custom logic for CAS assignments from inbound 837 files.  This option is set and controlled by VBA developers and not for client use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cli_a_certificate_ex_code** | **String** | This Denial Ex Code will deny a claim when a CLIA certificate is required and the provider record does not have CLIA certification. | [optional] |
| **cm_o_installed** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **cap_by_service_line** | **Boolean** | Claim will error if number of the Claim has Mixed Capitation Service Lines unless this is checked. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cap_disenroll_adj_reason** | **String** | Default Capitation Disenroll Adjustment reason | [optional] |
| **cap_enroll_adj_reason** | **String** | Default Capitation Enroll Adjustment reason | [optional] |
| **cap_enrolled_by** | **Integer** | This setting defines the Enrollment date the application uses for Calculating a Capitated Providers payment. | [optional] |
| **cap_enrolled_thru** | **Integer** | This setting defines the Enrollment date the application uses for Calculating a Capitated Providers payment. | [optional] |
| **cap_in_accum** | **Boolean** | Not used in system configuration. Used on external and/or custom procedures. Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided. | [optional] |
| **capitated_service_ex_code** | **String** | This Informational Ex Code will be applied to a claim detail line when services are Capitated. | [optional] |
| **case_default_report** | **String** | The Default Case Report when using the Case Report functionality from Case Update Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cash_value_default** | **Integer** | Default Issue Duratoin Value for Cash Type | [optional] |
| **check_payee_address_flag** | **Boolean** | When selected, if the payee address is not filled out, error the claim Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **check_stock_location** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **checks_max_post_date** | **Integer** | Adds an error during the Check Wizard if the Check Date exceeds the threshold set here | [optional] |
| **city** | **String** | City of the Company&#39;s address. | [optional] |
| **claim_upload_date** | **Time** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_upload_file_location** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_upload_schedule** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_age_ex_code** | **String** | This Denial Ex Code will deny a claim in which the age definitions of the plan are exceeded. | [optional] |
| **claim_allowed_billed_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_amt_ex_code** | **String** | This pend code will be applied when the claim billed amount exceeds the user max defined on the user information. | [optional] |
| **claim_auth_denied_ex_code** | **String** | If Filled out and an Auth Status is Denied, insert the Ex Code | [optional] |
| **claim_auth_details_err_ex** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_auth_diff_mem_ex** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_auth_diff_prov_ex** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_auth_exceeded_ex_code** | **String** | If Filled out and the Auth has exceeded the Approved, insert the Ex Code | [optional] |
| **claim_auth_invalid_date_ex** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_auth_not_approved_ex** | **String** | If Filled out and an Auth status is Not Approved, insert the Ex Code | [optional] |
| **claim_auth_proc_exceeded_ex_code** | **String** | If filled out and the number of Approved Procedure Units is exceeded, insert the Ex Code | [optional] |
| **claim_auth_reqd_ex_code** | **String** | If filled out and an Auth is required, insert the Ex Code | [optional] |
| **claim_ben_not_found_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_cov_in_net_only_ex_code** | **String** | Checking this indicates the Benefit is covered only when services are rendered using an In-Network provider. | [optional] |
| **claim_days_allowed** | **Float** | Number of claim days allowed. | [optional] |
| **claim_dead_ex_code** | **String** | This Denial Ex Code will deny a claim for a member whose enrollment record indicates they are deceased. | [optional] |
| **claim_ded_credit_oon_used_ex_code** | **String** | This Ex Code is used when Deductible Credit is used for the claim Out of Network | [optional] |
| **claim_ded_credit_ppo_used_ex_code** | **String** | This Ex Code is used when Deductible Credit is used for the claim in Network | [optional] |
| **claim_denied_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_diagnosis_age_ex_code** | **String** | This Ex Code is used when the Age is outside the range for the Diagnosis | [optional] |
| **claim_diagnosis_gender_ex_code** | **String** | This Ex Code is used when the Gender is not a valid Gender for the Diagnosis | [optional] |
| **claim_dup_error_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_error_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_exceed_daily_co_pay_max_ex_code** | **String** | if the CoPay has been adjusted due to previous CoPay amounts, Trigger this Ex Code | [optional] |
| **claim_exceed_injury_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_exceed_lifetime_ex_code** | **String** | This Ex Code is used when the claim exceeds a Lifetime Max Payable | [optional] |
| **claim_exceed_lifetime_oon_ex_code** | **String** | This Ex Code is used when the Lifetime Max Payable Out of Network has been exceeded | [optional] |
| **claim_exceed_lifetime_ppo_ex_code** | **String** | This Ex Code is used when the Lifetime Max Payable In Network has been exceeded | [optional] |
| **claim_exceed_maximum_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_exceed_per_diem_ex_code** | **String** | This Informational Ex Code will be applied to a claim when the Per-Diem amount defined on the provider record has been exceeded. | [optional] |
| **claim_fee_sched_error_ex** | **String** | This pend code will be applied to a claim when the provider record indicates a fee schedule is required but no fee schedule is assigned to the provider. | [optional] |
| **claim_lag_error_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_late_ex_code** | **String** | This Denial Ex Code will deny a claim that exceeds the timely filing limits set. | [optional] |
| **claim_life_benefit_met_ex_code** | **String** | This Ex Code is used when the Life Claim exceeds the Benefits Maximum | [optional] |
| **claim_life_plan_met_ex_code** | **String** | This Ex Code is used when the Life Claim exceeds the Plan Maximum | [optional] |
| **claim_no_prov_fee_sched** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_no_rate_fee_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_not_adult_dependent** | **String** | This pend code will be applied to a claim when the date of service exceeds the date on the enrollment record for dependent coverage. | [optional] |
| **claim_not_at_place_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_not_by_prov_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **claim_not_cov_ex_code** | **String** | This Denial Ex Code will deny a non-covered claim. | [optional] |
| **claim_not_enrolled_ex_code** | **String** | This Denial Ex Code will deny a claim that comes in for a member that is not enrolled for the date of service. | [optional] |
| **claim_not_enrolled_ex_code_null_use_pre_post** | **Boolean** | When selected, instead of using the Not Enrolled Ex Code, put the Pre and Post Enrolled Ex Codes instead Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_not_enrolled_post_ex_code** | **String** | This Denial Ex Code will deny a claim if services are after the enrollment date. | [optional] |
| **claim_not_enrolled_pre_ex_code** | **String** | This Denial Ex Code will deny a claim if services are prior to the enrollment date. | [optional] |
| **claim_not_student_ex_code** | **String** | This pend code will be applied to a claim when the date of service exceeds the date on the enrollment record for student coverage. | [optional] |
| **claim_other_coverage_ex_code** | **String** | This Ex Code is used when the Authorization has Other Coverage Primary selected | [optional] |
| **claim_over_max_ex_code** | **String** | This Ex Code is used when the claim exceeds an Annual Max Payable | [optional] |
| **claim_over_max_oon_ex_code** | **String** | This Ex Code is used when the Annual Max Payable Out of Network has been exceeded | [optional] |
| **claim_over_max_ppo_ex_code** | **String** | This Ex Code is used when the Annual Max Payable In Network has been exceeded | [optional] |
| **claim_pend_age_max** | **Integer** | Trigger the Claim Age Ex Code when the Age of the Patient is above this value | [optional] |
| **claim_pend_age_min** | **Integer** | Trigger the Claim Age Ex Code when the Age of the Patient is below this value | [optional] |
| **claim_pend_amount** | **Float** | Trigger the Claim Amt Ex Code when the Claim Payable exceeds this amount | [optional] |
| **claim_procedure_age_ex_code** | **String** | This Denial Ex Code will deny a claim when the procedure code/diagnosis code is defined for a specific age. | [optional] |
| **claim_procedure_gender_ex_code** | **String** | This Denial Ex Code will deny a claim when the procedure code/diagnosis code is defined for a specific gender. | [optional] |
| **claim_service_date_range** | **Integer** | If outside the payable date range (this value represents days ahead from date of adjudication), error | [optional] |
| **claim_service_outside_enrollment_ex_code** | **String** | When a Service Thru date happens outside the normal plan end date | [optional] |
| **claim_splits_plan_year_ex_code** | **String** | This Ex Code is used when multiple Plan Years found | [optional] |
| **class_length** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **clear_auth_penalty_ex_code** | **Boolean** | A flag indicating that any Auth Penalty Ex Code will be removed from a claim line if it has an auth associated. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **client_id** | **String** | Client&#39;s 3 character ID | [optional] |
| **client_name** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **co_ins_max_ex_code** | **String** | This Informational Ex Code will be applied to a claim when the Subscriber level Coinsurance has been met for the family. An Info code must be applied as a claim detail line may have a partial denial. A deny code will deny the entire line. | [optional] |
| **co_ins_max_ex_code_member** | **String** | This Informational Ex Code will be applied to a claim when the Member Coinsurance has been satisfied. An Info code must be applied as a claim detail line may have a partial denial. A Deny code would deny the entire detail line. | [optional] |
| **co_pay_by_billed** | **Boolean** | Co-Pay based on Billed Amount rather than Plan_Price Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cogito_app_client_id** | **String** | The app client ID associated with the user pool.  Exclusively for use in VBASoftware and VBAPI Cognito integration with AWS. | [optional] |
| **cogito_app_client_secret** | **String** | The app client Secret associated with the user pool. Exclusively for use in VBASoftware and VBAPI Cognito integration with AWS. | [optional] |
| **cogito_user_pool_id** | **String** | The ID of the Amazon Cognito user pool.  Exclusively for use in VBASoftware and VBAPI Cognito integration with AWS. | [optional] |
| **combined_notes_report_fg** | **Boolean** | When this flag is set to yes, the notes report from the Notes screen will remove the page breaks Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **comm_disenroll_adj_reason** | **String** | Default Commisssion Disenroll Adjustment Reason | [optional] |
| **comm_enroll_adj_reason** | **String** | Default Commisssion Enroll Adjustment Reason | [optional] |
| **comm_enrolled_by** | **Integer** | Default Commisssion Enrolled By value | [optional] |
| **comm_enrolled_thru** | **Integer** | Default Commisssion Enrolled Thru value | [optional] |
| **company_length** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **company_short** | **String** | Client ID of the Client | [optional] |
| **company_start_date** | **Time** | The date used to avoid using data prior to the date the company starts with VBA. | [optional] |
| **context4_clm_ucr_pct** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **context4_clm_ucr_pct_oon** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **context4_fee_selector** | **String** | The type of Fee for Context4 Pricing | [optional] |
| **context4_fee_selector_oon** | **String** | The type of Fee for Context4 Pricing when OON | [optional] |
| **context4_medicare_pct** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **context4_medicare_pct_oon** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **context4_password** | **String** | The Password for Context4 Pricing | [optional] |
| **context4_payor_type** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **context4_payor_type_oon** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **context4_pct_of_chg** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **context4_pct_of_chg_oon** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **context4_plan_price_not_greater_billed_fg** | **Boolean** | When set, if Plan Price exceeds Billed Price, set Plan Price equal to Billed Price for Context4 Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **context4_send_billing_address_fg** | **Boolean** | Whether or not the Billing Address information is sent to Context4 Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **context4_user_id** | **String** | The User ID for Context4 Pricing | [optional] |
| **context4_web_uri** | **String** | The WebURI for Context4 Pricing | [optional] |
| **context4_web_uri_delete** | **String** | The Delete WebURI for Context4 Pricing | [optional] |
| **copay_ex_code** | **String** | The Ex Code to apply when adjudicating a claim that has a copay greater than zero. | [optional] |
| **country_id** | **String** | Default Country | [optional] |
| **credential_by_payee** | **Boolean** | Flag to create a row in office location of the provider&#39;s practice with data from the corresponding payee record instead of provider. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **credentialing** | **String** | When selected, turn on Credentialing | [optional] |
| **crowned_tooth_ex_code** | **String** | This pend code will be applied when the tooth number on the claim is found to have been previously crowned. | [optional] |
| **currency_format** | **String** | Used for currency format when saving to Excel in Formatted | [optional] |
| **d_b_version_date** | **Time** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **dr_g_schedule** | **String** | Selection this option will set the default DRG schedule. | [optional] |
| **database_version** | **String** | Stores the latest Release Version | [optional] |
| **date_format** | **String** | Date format used when saving reports as formatted Excel | [optional] |
| **deductible_ex_code** | **String** | The Ex Code to apply when adjudicating a claim that has a deductible greater than zero. | [optional] |
| **deductible_max_ex_code** | **String** | This Informational Ex Code will be applied to a claim when the Subscriber level deductible has been met for the family. An Info code must be applied as a claim detail line may have a partial denial. A deny code will deny the entire line. | [optional] |
| **deductible_max_ex_code_member** | **String** | This Informational Ex Code will be applied to a claim when the Member Deductible has been satisfied. An Info code must be applied as a claim detail line may have a partial denial. A Deny code would deny the entire detail line. | [optional] |
| **default_1099_flag** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **default_auth_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **default_check_stock** | **Integer** | Defines the default check stock. | [optional] |
| **default_currency_id** | **String** | Default Currency to be used | [optional] |
| **default_eob_report** | **Integer** | Defines the default EOB report. | [optional] |
| **default_federal_tax** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **default_federal_tax_day_limit** | **Integer** | Default limit to when Federal Tax applies | [optional] |
| **default_federal_tax_pct** | **Float** | The default Federal Tax percentage | [optional] |
| **default_federal_wage_limit** | **Float** | Default limit to the amount of wages that can be used to calculate Federal Tax | [optional] |
| **default_id_card_request_type** | **String** | Indicates the desired default format for generated IDs. | [optional] |
| **default_invoice_report_definition_key** | **Integer** | A part of invoice Process Automation | [optional] |
| **default_login_sound** | **String** | Sets the default login sound. | [optional] |
| **default_medicare_tax_day_limit** | **Integer** | Default limit to when Medicare Tax applies | [optional] |
| **default_medicare_wage_limit** | **Float** | Default limit to the amount of wages that can be used to calculate Medicare Tax | [optional] |
| **default_pay_date_range** | **Integer** | Used to calculate the Check Paid Date | [optional] |
| **default_payor_id** | **String** | Payor ID that is defaulted to. | [optional] |
| **default_ss_tax_day_limit** | **Integer** | Default limit to when Social Security Tax applies | [optional] |
| **default_ss_wage_limit** | **Float** | Default limit to the amount of wages that can be used to calculate Social Security Tax | [optional] |
| **default_state_tax_day_limit** | **Integer** | Default limit to when State Tax applies | [optional] |
| **default_state_wage_limit** | **Float** | Default limit to the amount of wages that can be used to calculate State Tax | [optional] |
| **dental_atp_paid_date_type** | **String** | Holds the selected setting for ATP Paid Date on Dental Claims (Standard or by Processed Date) | [optional] |
| **diagnostic_code_type_default** | **String** | Default Diagnostic Code Type for Disability and Life claims Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **disallow_spec_char_in_plan_id** | **Boolean** | This flag disallows special characters to be used in the Plan ID column. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **disconnect_call_notes_from_claim_provider** | **Boolean** | This is a flag indicating that when viewing notes from Call Tracking, provider and claim notes associated with the call record will not be displayed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **disenroll_adj_reason** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **disenroll_auth_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **display_ppo_null_network** | **Boolean** | When selected, if the claim is Out of Network, show zero dollars in the PPO Discount Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **division_length** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **dup_password_days** | **Integer** | Sets the number of days before a password may be duplicated (reused). | [optional] |
| **duplicate_master_key** | **Integer** | Choose the applicable duplicate rule for the application. See Duplicate Sets in Claim Services &gt; Claim Configuration to maintain the Duplicate Rule options. | [optional] |
| **ed_i_installed** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **eo_b_disclaimer** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **eo_b_report_location** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **e_r_place_of_service** | **String** | Choose the applicable place of service for emergency room services. | [optional] |
| **enforce_mfa** | **Boolean** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **enroll_adj_reason** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **error_invalid_diag** | **Boolean** | Checking this box will cause claims to error if an invalid Diagnosis Code is billed. Left unchecked with a deny Ex Code selected the line item will automatically deny. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **error_invalid_proc** | **Boolean** | Checking this box will cause claims to error if an invalid Procedure Code is billed. Left unchecked with a deny Ex Code selected the line item will automatically deny. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **error_multiple_plan_years** | **Boolean** | When selected, if there are multiple Plan Years found, error instead of triggering Claim Splits Plan Year Ex Code Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **error_paid_to_provider** | **Boolean** | If selected and there&#39;s no Payee assigned to the Provider, set Send_Check_To Provider Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided. | [optional] |
| **error_termed_provider** | **Boolean** | Checking this box will cause claims to error if a Termed Provider is selected. Left unchecked with a deny Ex Code selected the claim will automatically deny. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exceed_exhaust_date_ex_code** | **String** | This Ex Code is used when the Service Date exceeds the Exhause Date on a Disability Claim | [optional] |
| **exceed_return_to_work_ex_code** | **String** | This pend code will be applied when the claim date of service exceeds the date defined as the return to work day on the disability claim. | [optional] |
| **exceeds_paid_through_ex_code** | **String** | This pend code will be applied when the claim date of service exceeds the paid through date defined on the member record. | [optional] |
| **extended_term_default** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **fax_country_code** | **String** | Country Code for the fax number of the Subscriber. | [optional] |
| **fax_number** | **String** | Fax number of the Client. | [optional] |
| **federal_id** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **fee_sched_match_claim_year** | **Boolean** | No longer used in the system Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **fee_schedule_ex_codes_manual** | **Boolean** | When this is checked, Fee Schedule Ex Codes from the FeeSched and FeeSchedDetail tables will be added as MANUAL ex codes.  This means adjudication will not wipe these away at the start of adjudication. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **fee_schedule_exact_match_fg** | **Boolean** | Whether or not the Modifiers of a Fee Schedule have to match exact Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **filled_tooth_ex_code** | **String** | Ex Code to set when the member has Filled a Tooth | [optional] |
| **first_benefit_auto_selected_ex_code** | **String** | Ex code that is added when a benefit code is automatically selected on a claim detail where multiple benefit codes all match with equivalent payment details | [optional] |
| **flex_claim_after_grace_period_ex_code** | **String** | This Ex Code is used when a Flex Claim is submitted after the Grace period | [optional] |
| **flex_claim_after_submit_period_ex_code** | **String** | This Ex Code is used when a Flex Claim is submitted after the Submission period | [optional] |
| **flex_claim_funds_exhausted_ex_code** | **String** | This Ex Code is used when the Flex Claim has exceeded the balance | [optional] |
| **force_call_track_note** | **Boolean** | Not used in system configuration. Used on external and/or custom procedures. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **force_claim_rec_date** | **Boolean** | If selected, the claim must have a Received_Date,             ELSE it will Error Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **force_claim_sub_id** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **force_latest_enrollment** | **Boolean** | Use Latest Enrollment Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **force_leading_zero_on_rev_code** | **Boolean** | If selected and the procedure code is only 3 length, add a zero to verify the procedure code Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **full_backout_on_void_distribution** | **Boolean** | When selected, Add all the backout Distribution records when voiding a check Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **full_month_billing** | **String** | Not used in system configuration. Used on external and/or custom procedures. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **generate_comm_date** | **Time** | Used to stop other users from generating invoices while another user is generating commissions. | [optional] |
| **generate_comm_user** | **String** | Used to stop other users from generating invoices while another user is generating commissions. | [optional] |
| **generate_inv_date** | **Time** | Used to stop other users from generating invoices while another user is generating invoices | [optional] |
| **generate_inv_user** | **String** | Used to stop other users from generating invoices while another user is generating invoices | [optional] |
| **generate_negative_inv** | **Boolean** | Check this checkbox to allow for a negative invoice to create. This will also allow a $0 invoice to create. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **generate_prem_dist_after** | **Time** | When Generating Invoices, look for distributions after this date | [optional] |
| **global_cmu_id** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **grace_logins** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **group_length** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **i_d_card_location** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **iv_r_cs_country_code** | **String** | Country Code for IVR or Customer Service number. | [optional] |
| **iv_r_cs_phone_number** | **String** | IVR or Customer Service number of the Client. | [optional] |
| **ignore_care_management_hierarchy_fg** | **Boolean** | Overrides Case Manager Hierarchy and allows the assigning of cases up or down Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ignore_claim_funding_status_change_msg** | **Boolean** | This is a flag indicating that when changing a claims status in Claim Funding, no message will display warning the user of the existing status. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **inactive_payee_ex_code** | **String** | When a claim has a Provider using a Payee that is marked as inactive | [optional] |
| **include_invalid_enrollments** | **Boolean** | Not used in system configuration. Used on external and/or custom procedures. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **inv_grace_period** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **inv_grace_period_type** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **invalid_diag_ex_code** | **String** | This Ex Code is used when the Diagnosis Code is invalid | [optional] |
| **invalid_proc_ex_code** | **String** | This Ex Code is used when the Procedure Code is invalid | [optional] |
| **invoice_close_adj_reason** | **Integer** | Default reason for Invoice Closed | [optional] |
| **invoice_enrolled_by** | **Integer** | Date used when configuring Enrolled By Date for Invoices Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **invoice_enrolled_thru** | **Integer** | Date used when configuring Enrolled Thru Date for Invoices | [optional] |
| **invoice_grace_ex_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **invoice_grace_period** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **invoice_remit_account_key** | **Integer** | Default Invoice Remit Account | [optional] |
| **invoice_remit_address1** | **String** | Default Invoice Remit Address | [optional] |
| **invoice_remit_address2** | **String** | Default Invoice Remit Address2 | [optional] |
| **invoice_remit_city** | **String** | Default Invoice Remit City | [optional] |
| **invoice_remit_country_code** | **String** | Default Invoice Remit Country Code | [optional] |
| **invoice_remit_country_id** | **String** | Default Invoice Remit Country | [optional] |
| **invoice_remit_name** | **String** | Default Invoice Remit Name | [optional] |
| **invoice_remit_phone_number** | **String** | Default Invoice Remit Phone Number | [optional] |
| **invoice_remit_state** | **String** | Default Invoice Remit State | [optional] |
| **invoice_remit_zip_code** | **String** | Default Invoice Remit Zip Code | [optional] |
| **lag_time** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **last_age_disenroll** | **Time** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **last_authorization** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **last_billing** | **Time** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **last_case_number** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **last_check_batch** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **last_claim_number** | **Float** | Used to determine the next Claim Number | [optional] |
| **last_day_worked_range** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **last_encounter** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **last_invoice** | **Float** | Filled out after an Invoice is generated, likely used for reporting or as a reference | [optional] |
| **lock_auth_review** | **Boolean** | If selected, only the user that created the Auth Review can update the Auth Review Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lock_auth_review_all** | **Boolean** | When this is checked, Auth Reviews cannot be updated or modified by anyone.  They can still be added. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **log_base_load_call** | **Boolean** | Flag that enables the logging of calls to Baseload for provider information Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **logo_file** | **String** | Stores the file location for logos. | [optional] |
| **long_state_names** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **mail_auth_mode** | **Integer** | Client&#39;s e-mail server AuthMode (Not sure, just passed in as general settings) | [optional] |
| **mail_password** | **String** | Client&#39;s e-mail server Password | [optional] |
| **mail_port** | **Integer** | Client&#39;s e-mail server Port | [optional] |
| **mail_server** | **String** | Client&#39;s e-mail server | [optional] |
| **mail_use_ssl** | **Boolean** | Client&#39;s e-mail server SSL setting Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **mail_user** | **String** | Client&#39;s e-mail server User Name | [optional] |
| **medicare_on_benefit** | **String** | Not used in system configuration. Used on external and/or custom procedures. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **member_address_dob_not_reqd** | **Boolean** | This flag indicates if a full address and date of birth are not required when creating a new member Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **member_match_by_name_birth_date** | **Boolean** | When selected, adjudication will attempt to match a patient on their First Name, Last Name and Birth Date Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **modifier_not_eff_ex_code** | **String** | This Denial Ex Code will deny a claim when the modifier entered is not listed as active on the modifier table. | [optional] |
| **multiple_auth_ex_code** | **String** | If filled out and there are multiple Auths that are valid, insert the Ex Code | [optional] |
| **name** | **String** | Name of the Company. | [optional] |
| **network_does_not_match_repriced_network_ex_code** | **String** | When the Network ID on the claim does not match what the system would have selected, throw this ex code | [optional] |
| **new_member_reason** | **Integer** | Reason for the new Member. | [optional] |
| **note_attachment_db** | **Boolean** | If selected, Note Attachments will be saved to the Database instead of in a local file location Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **note_attachment_local_default** | **String** | Indicates the local location for note attachments. When a note attachment is opened, it will make a copy from the remote location to the local location before opening the file. | [optional] |
| **note_attachment_remote_default** | **String** | Indicates the remote location where note attachments will be saved. A network location should be populated at this location. | [optional] |
| **oo_p_max_ex_code** | **String** | This Ex Code is used when the claim exceeds the OOP Maximum | [optional] |
| **oo_p_max_ex_code_member** | **String** | This Informational Ex Code will be applied to a claim when the Member level out of pocket has been exceeded. | [optional] |
| **out_of_net_ex_code** | **String** | This Informational Ex Code will be applied to all claims processed as out of network. | [optional] |
| **overpayment_deduction_type** | **String** | Override&#39;s the default Deduction Type of 502 | [optional] |
| **pc_p_only_ex_code** | **String** | This Ex Code is used when a Benefit is marked PCP Only and the Member does not have a valid PCP | [optional] |
| **partial_cap** | **Boolean** | Not used in system configuration. Used on external and/or custom procedures. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **password_expiration** | **Integer** | Sets the number of days before password expiration. | [optional] |
| **password_minimum** | **Integer** | Sets the minimum length required for application passwords. | [optional] |
| **pay_period_start_date** | **Time** | This date is used to calculate the Bill From and Bill Thru dates for invoices using the Calendar Payroll type of Billing Cycle. | [optional] |
| **payment_proration** | **Boolean** | Whether or not invoices will be prorated Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **phone_country_code** | **String** | Country Code for the phone number of the Subscriber. | [optional] |
| **phone_format** | **String** | Phone format used when saving reports as formatted Excel | [optional] |
| **phone_number** | **String** | Phone number of the Client. | [optional] |
| **place_code_not_setup_ex_code** | **String** | This Ex Code is used when a Place Code is not valid for an Auth, Benefit, Co Ins or Co Pay | [optional] |
| **plan_benefit_override_network_id** | **String** | When Always Pay In Network is checked, if this is filled out and the claim is currently out of network, change the Network ID to this value. | [optional] |
| **plan_length** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **policy_forfeiture_grace_period** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **policy_forfeiture_grace_period_type** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **premium_proration** | **Boolean** | This flag denotes whether or not Premiums will be prorated when a Member Disenrolls Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **prevent_suspense_release_by_process_user** | **Boolean** | Flag to prevent the same user that processed a claim from releasing it from Claim Suspended status. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **primary_account_key** | **Integer** | This defines the primary bank account. | [optional] |
| **process_auths_when_pended** | **Boolean** | When this flag is set to yes, adjudication will process Auths on Pended claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **process_auto_cob** | **Boolean** | Identifies that the check run process will now create Auto-COB claims if the Secondary member information is configured on a MemberInsruance record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **processing_mode** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **prof_atp_paid_date_type** | **String** | Holds the selected setting for ATP Paid Date on Professional Claims (Standard or by Processed Date) | [optional] |
| **prosthesis_tooth_ex_code** | **String** | Ex Code to set when the member has used a Prosthesis Tooth | [optional] |
| **protect_alternate_id** | **Boolean** | This flag indicates the alternate ID on the member update screen cannot be changed Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **provider_auth_exempt_procedure_ex_code** | **String** | If a provider is exempt from Authorizations, throw this ex code | [optional] |
| **provider_not_active_auth_code** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **pulled_tooth_ex_code** | **String** | This pend code will be applied when the tooth number on the claim is found to have been previously pulled. | [optional] |
| **qp_a_method_1_ex_code** | **String** | Ex Code to be applied to claims that use QPA Method 1 | [optional] |
| **qp_a_method_2_ex_code** | **String** | Ex Code to be applied to claims that use QPA Method 2 | [optional] |
| **r_x_atp_paid_date_type** | **String** | Default value for an RX Claim&#39;s Paid Date: Service Date, Fill Date or Prescription Date | [optional] |
| **reduced_paid_up_default** | **Integer** | Default Issue Duratoin Value for RPU Type | [optional] |
| **reins_split_claim** | **Boolean** | Not used in system configuration. Used on external and/or custom procedures. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **repetitive_payment** | **Boolean** | If set to yes, bring up the list of Repetitive Payments on a timer | [optional] |
| **repriced_line** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **request_id_card_prompt_enrollment** | **Boolean** | If checked, when the user updates a member record, prompt the user if they want to request a new ID Card. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **request_provider_email** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **request_reassess_email** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **restrict_npi_federal_id** | **Boolean** | This flag indicates the NPI and Federal ID fields on a Provider record have length restrictions of 10/9 characters respectively Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **return_to_work_range** | **Integer** | Defined Return to Work Range for a disability claim | [optional] |
| **scanned_images_folder** | **String** | Indicates the file location where scanned images are kept. | [optional] |
| **set_paid_through** | **Boolean** | If selected, set the Paid Through Date once an invoice is closed Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **single_refund_check_batch** | **Boolean** | If selected put all refunds into the same Check Batch Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **state** | **String** | State of the Company&#39;s address. | [optional] |
| **subscriber_id_format** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **subscriber_length** | **Float** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **system_idle** | **Integer** | Enter the time, in seconds, that will be allowed to elapse before the application closes. | [optional] |
| **tax_control_location** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **tax_on_adjudcation_date_fg** | **Boolean** | Whether Tax is calculated on date of adjudication or Service Date of claim Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **temporary_save_criteria_count** | **Integer** | How many rows in the criteria table to temporarily save | [optional] |
| **termed_provider_ex_code** | **String** | This Ex Code is used when the Provider&#39;s Term Date is before the Service Date | [optional] |
| **toll_free_country_code** | **String** | Country Code for the toll free phone number of the Client. | [optional] |
| **toll_free_phone_number** | **String** | Toll free phone number of the Client. | [optional] |
| **tooth_activity_ex_code** | **String** | This pend code will be applied when the tooth number on the claim is found to have previous tooth activity. | [optional] |
| **tooth_chart_type** | **String** | Choose the applicable tooth chart for the application. | [optional] |
| **u_b92_atp_paid_date_type** | **String** | Holds the selected setting for ATP Paid Date on Institutional Claims (Standard or by Processed Date) | [optional] |
| **u_c_price_used_ex_code** | **String** | This Ex Code is used when Usual and Customary is used. | [optional] |
| **u_c_unit_mulitply** | **Boolean** | Whether or not the Plan Price is multiplied by number of units for Usual and Customary Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **unassigned_provider** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_greater_user_amount_limit_fg** | **Boolean** | Whether or not to validate User Amount Limits for Payable or Total Payable Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_auth_over_unit_split** | **Boolean** | Whether or not to split Authorizations Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_change_data_capture** | **Boolean** | No longer used in the system Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_commission_cluster_hierarchy** | **Boolean** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_currency** | **Boolean** | Whether or not to use the Default Currency Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_disability_from_date** | **Boolean** | When selected, Disability Claims will be verified to be within the payable date range and if not, the claim will not process. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_expanded_notes** | **Boolean** | Fills out NoteReference among other things for Notes Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_first_match_pricing** | **Boolean** | Use first Fee Schedule match found Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_other_name** | **String** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **use_primary_diag_match** | **Boolean** | If selected, during Age Restrictions, only look at the left most Diag Pointer on a Claim Line Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_primary_diag_match_capitation** | **Boolean** | When determining Include Excludes for Capitation Diagnosis Codes, if set to yes, only look at the first pointer. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_salary** | **Boolean** | Not used in system configuration. Used on external and/or custom procedures. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_tax_control** | **Boolean** | Whether or not to use the Tax Control object rather than adjudication Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_vba_software_2** | **Boolean** | Notes that this client is no longer utilizing Legacy VBASoftware. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_vb_adjudicate_2** | **Boolean** | This is a flag indicating if this database (client) is utilizing new serverless adjudication.  This flag will drive old adjudication to not pickup claims for example, or tell VBASoftware that the \&quot;Adjudicate\&quot; button on claims goes a different route. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_zip_code_auto_populate** | **Boolean** | Whether or not Zip Code with auto poulate city/state based on Zip Code Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_data_integration** | **Boolean** | Whether or not VBADataintegration is on or not Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_data_integration_dbms** | **String** | DBMS setup information for VBA Data Integration | [optional] |
| **vba_data_integration_db_parm** | **String** | DBMS setup information for VBA Data Integration | [optional] |
| **vba_data_integration_database** | **String** | Database setup information for VBA Data Integration | [optional] |
| **vba_data_integration_server** | **String** | Server setup information for VBA Data Integration | [optional] |
| **vba_gateway** | **Boolean** | Whether or not this is a Gateway client Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_gateway_dbms** | **String** | Gateway&#39;s DBMS | [optional] |
| **vba_gateway_db_parm** | **String** | Gateway&#39;s Database Parameters | [optional] |
| **vba_gateway_database** | **String** | Gateway&#39;s Database | [optional] |
| **vba_gateway_sftp_host** | **String** | Gateway&#39;s SFTP Host | [optional] |
| **vba_gateway_sftp_log_file** | **String** | Gateway&#39;s SFTP LogFile | [optional] |
| **vba_gateway_sftp_mlst** | **Boolean** | Gateway&#39;s SFTP MLST Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_gateway_sftp_passive** | **Boolean** | Gateway&#39;s SFTP Passive Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_gateway_sftp_password** | **String** | Gateway&#39;s SFTP Password | [optional] |
| **vba_gateway_sftp_port** | **Integer** | Gateway&#39;s SFTP Port | [optional] |
| **vba_gateway_sftp_protocol** | **Integer** | Gateway&#39;s SFTP Protocol | [optional] |
| **vba_gateway_sftp_user** | **String** | Gateway&#39;s SFTP User ID | [optional] |
| **vba_gateway_server** | **String** | Gateway&#39;s Server | [optional] |
| **vbap_i_adjudicate_client_code** | **String** | System Configuration Values used by VBA Engineers. | [optional] |
| **vbap_i_adjudicate_client_id** | **String** | System Configuration Values used by VBA Engineers. | [optional] |
| **vbap_i_adjudicate_database** | **String** | System Configuration Values used by VBA Engineers. | [optional] |
| **vbap_i_claim_queue_url** | **String** | For internal Developer use only. | [optional] |
| **vbap_i_client_code** | **String** | For internal Developer use only. | [optional] |
| **vbap_i_field_masking_enabled** | **Boolean** | Identifies if Field Masking is enabled.  This is a VBAPI setting so does not impact Legacy VBASoftware. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vbap_i_ip_whitelist** | **Boolean** | Indicates if the client has IP Whitelisting enabled for accessing APIs. If enabled, IP Addresses will be added to the IPWhitelist table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_report_event_timer** | **Integer** | Timer for kicking off VBA Report to see if an Event is ready to be Processed | [optional] |
| **vba_report_mail_auth_mode** | **Integer** | Client&#39;s Process Automation Auth Mode (Not sure, just passed in as general settings) | [optional] |
| **vba_report_mail_password** | **String** | Client&#39;s Process Automation Password | [optional] |
| **vba_report_mail_port** | **Integer** | Client&#39;s Process Automation server Port | [optional] |
| **vba_report_mail_server** | **String** | Client&#39;s Process Automation server | [optional] |
| **vba_report_mail_use_ssl** | **Boolean** | Client&#39;s Process Automation SSL Setting Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_report_mail_user** | **String** | Client&#39;s Process Automation User Name | [optional] |
| **vba_report_so_count** | **Integer** | Value retrieved in VbA Report, nothing done with it | [optional] |
| **vba_report_series_timer** | **Integer** | Timer for kicking off VBA Report to see if a Series is ready to be Processed | [optional] |
| **vba_report_status** | **String** | Current Status of VBAReport (Pause, Stop, Running) | [optional] |
| **vba_report_timer** | **Integer** | Timer for kicking off VBA Report to see if a Report is ready to be Processed | [optional] |
| **vb_adjudicate_so_count** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **vb_adjudicate_status** | **String** | Current Status of Adjudication (Pause, Stop, Running) | [optional] |
| **vb_adjudicate_timer** | **Integer** | Not used in system configuration. Used on external and/or custom procedures. | [optional] |
| **validate_federal_id_on_auth** | **Boolean** | Whether or not to validate Authorizations based on Federal ID Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **validate_provider_on_auth** | **Boolean** | If set to yes, the Provider must match on the Claim with the Auth Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **void_backout_use_current_date** | **Boolean** | When used, a Void backout will use today&#39;s date instead of processed date Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **volume_max_met_ex_code** | **String** | This Ex Code is used when the Maximum Volume is used to lower the Volume to maximum | [optional] |
| **volume_min_met_ex_code** | **String** | This Ex Code is used when the Minimum Volume is used to raise the Volume to minimum | [optional] |
| **workflow_execute_count** | **Integer** | This indicates how many workflows will be executed per iteration from VBAdjudicateGovernor | [optional] |
| **zelis_eob_code_not_found_ex_code** | **String** | Default EOB Code not found ex code used when one is not sent for Zelis | [optional] |
| **zelis_edit_code_not_found_ex_code** | **String** | Default Edit Code not found ex code used when one is not sent for Zelis | [optional] |
| **zelis_in_network_ex_code** | **String** | When the Zelis In Network Ex Code is set, and the Ex Code is on the claim and sent to Zelis, the claim will always be sent as \&quot;In Network\&quot; regardless if the claim is In or Out of Network | [optional] |
| **zelis_login** | **String** | Login information for Zelis Repricing API | [optional] |
| **zelis_password** | **String** | Password information for Zelis Repricing API | [optional] |
| **zelis_poll** | **Boolean** | Whether or not the system should be polling Zelis Repricing Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **zelis_poll_testing** | **Boolean** | Indicates if Zelis Polling is \&quot;In Testing\&quot;.  When \&quot;In Testing\&quot;, polling activity will fire for the first call to Zelis only, so that Zelis has the claim, then not make any additional polling entries until the client indicates the test is complete.  Disabling this will then proceed to make new polling entries on claims in QUEUED and INPROCESS as normal. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **zelis_url** | **String** | URL used to connect to the Zelis Cost Containment System | [optional] |
| **zip_code** | **String** | Zip code of the Client. | [optional] |
| **use_vb_adjudicate_benefit_matching** | **Boolean** |  | [optional] |
| **display_member_primary_network** | **Boolean** |  | [optional] |
| **disable_ghostscript** | **Boolean** |  | [optional] |
| **vba_software_end_date** | **Time** |  | [optional] |
| **open_invoice_paid_through** | **Boolean** |  | [optional] |
| **claim_returned_to_batch_ex_code** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CompanyData.new(
  key_value: null,
  ap_c_schedule: null,
  as_o_percentage: null,
  accident_review_ex_code: null,
  accident_review_plan_benefit_ex_code: null,
  additional_invoice_rates: null,
  address: null,
  address2: null,
  adv_password_req: null,
  age_disenroll_reason: null,
  allow_apostrophe_in_name: null,
  allow_checks_post_date: null,
  allow_claim_benefit_override: null,
  allow_max_at_subscriber: null,
  allow_oop_on_override: null,
  allow_zero_billed: null,
  anesthesia_by_fee_sched: null,
  anesthesia_round_precision: null,
  anesthesia_round_type: null,
  apply_multiple_benefit_ex_code_manual: null,
  auth_review_full_path: null,
  auth_review_object: null,
  auth_code_closed: null,
  auth_code_pay_amt_zero: null,
  auth_code_reopen: null,
  auth_code_under_auth_amt: null,
  auth_over_unit_split_ex_code: null,
  auth_penalty_ex_code: null,
  auto_adj_return_to_batch: null,
  auto_pay_capitated_claims: null,
  auto_process_adjustment_backout: null,
  auto_term_plan_on_gateway_request: null,
  b_r_domain_name: null,
  b_r_site_name: null,
  b_r_site_secret: null,
  b_r_site_user: null,
  base_load_fg: null,
  base_load_pass: null,
  base_load_service_date_flag: null,
  base_load_url: null,
  base_load_user: null,
  beneficiary_age_limit: null,
  beneficiary_age_ex_code: null,
  benefit_cascade_ex_code: null,
  benefit_length: null,
  bridged_tooth_ex_code: null,
  ca_s_segment_ben_match: null,
  cli_a_certificate_ex_code: null,
  cm_o_installed: null,
  cap_by_service_line: null,
  cap_disenroll_adj_reason: null,
  cap_enroll_adj_reason: null,
  cap_enrolled_by: null,
  cap_enrolled_thru: null,
  cap_in_accum: null,
  capitated_service_ex_code: null,
  case_default_report: null,
  cash_value_default: null,
  check_payee_address_flag: null,
  check_stock_location: null,
  checks_max_post_date: null,
  city: null,
  claim_upload_date: null,
  claim_upload_file_location: null,
  claim_upload_schedule: null,
  claim_age_ex_code: null,
  claim_allowed_billed_ex_code: null,
  claim_amt_ex_code: null,
  claim_auth_denied_ex_code: null,
  claim_auth_details_err_ex: null,
  claim_auth_diff_mem_ex: null,
  claim_auth_diff_prov_ex: null,
  claim_auth_exceeded_ex_code: null,
  claim_auth_invalid_date_ex: null,
  claim_auth_not_approved_ex: null,
  claim_auth_proc_exceeded_ex_code: null,
  claim_auth_reqd_ex_code: null,
  claim_ben_not_found_ex_code: null,
  claim_cov_in_net_only_ex_code: null,
  claim_days_allowed: null,
  claim_dead_ex_code: null,
  claim_ded_credit_oon_used_ex_code: null,
  claim_ded_credit_ppo_used_ex_code: null,
  claim_denied_ex_code: null,
  claim_diagnosis_age_ex_code: null,
  claim_diagnosis_gender_ex_code: null,
  claim_dup_error_ex_code: null,
  claim_error_ex_code: null,
  claim_exceed_daily_co_pay_max_ex_code: null,
  claim_exceed_injury_ex_code: null,
  claim_exceed_lifetime_ex_code: null,
  claim_exceed_lifetime_oon_ex_code: null,
  claim_exceed_lifetime_ppo_ex_code: null,
  claim_exceed_maximum_ex_code: null,
  claim_exceed_per_diem_ex_code: null,
  claim_fee_sched_error_ex: null,
  claim_lag_error_ex_code: null,
  claim_late_ex_code: null,
  claim_life_benefit_met_ex_code: null,
  claim_life_plan_met_ex_code: null,
  claim_no_prov_fee_sched: null,
  claim_no_rate_fee_ex_code: null,
  claim_not_adult_dependent: null,
  claim_not_at_place_ex_code: null,
  claim_not_by_prov_ex_code: null,
  claim_not_cov_ex_code: null,
  claim_not_enrolled_ex_code: null,
  claim_not_enrolled_ex_code_null_use_pre_post: null,
  claim_not_enrolled_post_ex_code: null,
  claim_not_enrolled_pre_ex_code: null,
  claim_not_student_ex_code: null,
  claim_other_coverage_ex_code: null,
  claim_over_max_ex_code: null,
  claim_over_max_oon_ex_code: null,
  claim_over_max_ppo_ex_code: null,
  claim_pend_age_max: null,
  claim_pend_age_min: null,
  claim_pend_amount: null,
  claim_procedure_age_ex_code: null,
  claim_procedure_gender_ex_code: null,
  claim_service_date_range: null,
  claim_service_outside_enrollment_ex_code: null,
  claim_splits_plan_year_ex_code: null,
  class_length: null,
  clear_auth_penalty_ex_code: null,
  client_id: null,
  client_name: null,
  co_ins_max_ex_code: null,
  co_ins_max_ex_code_member: null,
  co_pay_by_billed: null,
  cogito_app_client_id: null,
  cogito_app_client_secret: null,
  cogito_user_pool_id: null,
  combined_notes_report_fg: null,
  comm_disenroll_adj_reason: null,
  comm_enroll_adj_reason: null,
  comm_enrolled_by: null,
  comm_enrolled_thru: null,
  company_length: null,
  company_short: null,
  company_start_date: null,
  context4_clm_ucr_pct: null,
  context4_clm_ucr_pct_oon: null,
  context4_fee_selector: null,
  context4_fee_selector_oon: null,
  context4_medicare_pct: null,
  context4_medicare_pct_oon: null,
  context4_password: null,
  context4_payor_type: null,
  context4_payor_type_oon: null,
  context4_pct_of_chg: null,
  context4_pct_of_chg_oon: null,
  context4_plan_price_not_greater_billed_fg: null,
  context4_send_billing_address_fg: null,
  context4_user_id: null,
  context4_web_uri: null,
  context4_web_uri_delete: null,
  copay_ex_code: null,
  country_id: null,
  credential_by_payee: null,
  credentialing: null,
  crowned_tooth_ex_code: null,
  currency_format: null,
  d_b_version_date: null,
  dr_g_schedule: null,
  database_version: null,
  date_format: null,
  deductible_ex_code: null,
  deductible_max_ex_code: null,
  deductible_max_ex_code_member: null,
  default_1099_flag: null,
  default_auth_code: null,
  default_check_stock: null,
  default_currency_id: null,
  default_eob_report: null,
  default_federal_tax: null,
  default_federal_tax_day_limit: null,
  default_federal_tax_pct: null,
  default_federal_wage_limit: null,
  default_id_card_request_type: null,
  default_invoice_report_definition_key: null,
  default_login_sound: null,
  default_medicare_tax_day_limit: null,
  default_medicare_wage_limit: null,
  default_pay_date_range: null,
  default_payor_id: null,
  default_ss_tax_day_limit: null,
  default_ss_wage_limit: null,
  default_state_tax_day_limit: null,
  default_state_wage_limit: null,
  dental_atp_paid_date_type: null,
  diagnostic_code_type_default: null,
  disallow_spec_char_in_plan_id: null,
  disconnect_call_notes_from_claim_provider: null,
  disenroll_adj_reason: null,
  disenroll_auth_code: null,
  display_ppo_null_network: null,
  division_length: null,
  dup_password_days: null,
  duplicate_master_key: null,
  ed_i_installed: null,
  eo_b_disclaimer: null,
  eo_b_report_location: null,
  e_r_place_of_service: null,
  enforce_mfa: null,
  enroll_adj_reason: null,
  entry_date: null,
  entry_user: null,
  error_invalid_diag: null,
  error_invalid_proc: null,
  error_multiple_plan_years: null,
  error_paid_to_provider: null,
  error_termed_provider: null,
  exceed_exhaust_date_ex_code: null,
  exceed_return_to_work_ex_code: null,
  exceeds_paid_through_ex_code: null,
  extended_term_default: null,
  fax_country_code: null,
  fax_number: null,
  federal_id: null,
  fee_sched_match_claim_year: null,
  fee_schedule_ex_codes_manual: null,
  fee_schedule_exact_match_fg: null,
  filled_tooth_ex_code: null,
  first_benefit_auto_selected_ex_code: null,
  flex_claim_after_grace_period_ex_code: null,
  flex_claim_after_submit_period_ex_code: null,
  flex_claim_funds_exhausted_ex_code: null,
  force_call_track_note: null,
  force_claim_rec_date: null,
  force_claim_sub_id: null,
  force_latest_enrollment: null,
  force_leading_zero_on_rev_code: null,
  full_backout_on_void_distribution: null,
  full_month_billing: null,
  generate_comm_date: null,
  generate_comm_user: null,
  generate_inv_date: null,
  generate_inv_user: null,
  generate_negative_inv: null,
  generate_prem_dist_after: null,
  global_cmu_id: null,
  grace_logins: null,
  group_length: null,
  i_d_card_location: null,
  iv_r_cs_country_code: null,
  iv_r_cs_phone_number: null,
  ignore_care_management_hierarchy_fg: null,
  ignore_claim_funding_status_change_msg: null,
  inactive_payee_ex_code: null,
  include_invalid_enrollments: null,
  inv_grace_period: null,
  inv_grace_period_type: null,
  invalid_diag_ex_code: null,
  invalid_proc_ex_code: null,
  invoice_close_adj_reason: null,
  invoice_enrolled_by: null,
  invoice_enrolled_thru: null,
  invoice_grace_ex_code: null,
  invoice_grace_period: null,
  invoice_remit_account_key: null,
  invoice_remit_address1: null,
  invoice_remit_address2: null,
  invoice_remit_city: null,
  invoice_remit_country_code: null,
  invoice_remit_country_id: null,
  invoice_remit_name: null,
  invoice_remit_phone_number: null,
  invoice_remit_state: null,
  invoice_remit_zip_code: null,
  lag_time: null,
  last_age_disenroll: null,
  last_authorization: null,
  last_billing: null,
  last_case_number: null,
  last_check_batch: null,
  last_claim_number: null,
  last_day_worked_range: null,
  last_encounter: null,
  last_invoice: null,
  lock_auth_review: null,
  lock_auth_review_all: null,
  log_base_load_call: null,
  logo_file: null,
  long_state_names: null,
  mail_auth_mode: null,
  mail_password: null,
  mail_port: null,
  mail_server: null,
  mail_use_ssl: null,
  mail_user: null,
  medicare_on_benefit: null,
  member_address_dob_not_reqd: null,
  member_match_by_name_birth_date: null,
  modifier_not_eff_ex_code: null,
  multiple_auth_ex_code: null,
  name: null,
  network_does_not_match_repriced_network_ex_code: null,
  new_member_reason: null,
  note_attachment_db: null,
  note_attachment_local_default: null,
  note_attachment_remote_default: null,
  oo_p_max_ex_code: null,
  oo_p_max_ex_code_member: null,
  out_of_net_ex_code: null,
  overpayment_deduction_type: null,
  pc_p_only_ex_code: null,
  partial_cap: null,
  password_expiration: null,
  password_minimum: null,
  pay_period_start_date: null,
  payment_proration: null,
  phone_country_code: null,
  phone_format: null,
  phone_number: null,
  place_code_not_setup_ex_code: null,
  plan_benefit_override_network_id: null,
  plan_length: null,
  policy_forfeiture_grace_period: null,
  policy_forfeiture_grace_period_type: null,
  premium_proration: null,
  prevent_suspense_release_by_process_user: null,
  primary_account_key: null,
  process_auths_when_pended: null,
  process_auto_cob: null,
  processing_mode: null,
  prof_atp_paid_date_type: null,
  prosthesis_tooth_ex_code: null,
  protect_alternate_id: null,
  provider_auth_exempt_procedure_ex_code: null,
  provider_not_active_auth_code: null,
  pulled_tooth_ex_code: null,
  qp_a_method_1_ex_code: null,
  qp_a_method_2_ex_code: null,
  r_x_atp_paid_date_type: null,
  reduced_paid_up_default: null,
  reins_split_claim: null,
  repetitive_payment: null,
  repriced_line: null,
  request_id_card_prompt_enrollment: null,
  request_provider_email: null,
  request_reassess_email: null,
  restrict_npi_federal_id: null,
  return_to_work_range: null,
  scanned_images_folder: null,
  set_paid_through: null,
  single_refund_check_batch: null,
  state: null,
  subscriber_id_format: null,
  subscriber_length: null,
  system_idle: null,
  tax_control_location: null,
  tax_on_adjudcation_date_fg: null,
  temporary_save_criteria_count: null,
  termed_provider_ex_code: null,
  toll_free_country_code: null,
  toll_free_phone_number: null,
  tooth_activity_ex_code: null,
  tooth_chart_type: null,
  u_b92_atp_paid_date_type: null,
  u_c_price_used_ex_code: null,
  u_c_unit_mulitply: null,
  unassigned_provider: null,
  update_date: null,
  update_user: null,
  use_greater_user_amount_limit_fg: null,
  use_auth_over_unit_split: null,
  use_change_data_capture: null,
  use_commission_cluster_hierarchy: null,
  use_currency: null,
  use_disability_from_date: null,
  use_expanded_notes: null,
  use_first_match_pricing: null,
  use_other_name: null,
  use_primary_diag_match: null,
  use_primary_diag_match_capitation: null,
  use_salary: null,
  use_tax_control: null,
  use_vba_software_2: null,
  use_vb_adjudicate_2: null,
  use_zip_code_auto_populate: null,
  vba_data_integration: null,
  vba_data_integration_dbms: null,
  vba_data_integration_db_parm: null,
  vba_data_integration_database: null,
  vba_data_integration_server: null,
  vba_gateway: null,
  vba_gateway_dbms: null,
  vba_gateway_db_parm: null,
  vba_gateway_database: null,
  vba_gateway_sftp_host: null,
  vba_gateway_sftp_log_file: null,
  vba_gateway_sftp_mlst: null,
  vba_gateway_sftp_passive: null,
  vba_gateway_sftp_password: null,
  vba_gateway_sftp_port: null,
  vba_gateway_sftp_protocol: null,
  vba_gateway_sftp_user: null,
  vba_gateway_server: null,
  vbap_i_adjudicate_client_code: null,
  vbap_i_adjudicate_client_id: null,
  vbap_i_adjudicate_database: null,
  vbap_i_claim_queue_url: null,
  vbap_i_client_code: null,
  vbap_i_field_masking_enabled: null,
  vbap_i_ip_whitelist: null,
  vba_report_event_timer: null,
  vba_report_mail_auth_mode: null,
  vba_report_mail_password: null,
  vba_report_mail_port: null,
  vba_report_mail_server: null,
  vba_report_mail_use_ssl: null,
  vba_report_mail_user: null,
  vba_report_so_count: null,
  vba_report_series_timer: null,
  vba_report_status: null,
  vba_report_timer: null,
  vb_adjudicate_so_count: null,
  vb_adjudicate_status: null,
  vb_adjudicate_timer: null,
  validate_federal_id_on_auth: null,
  validate_provider_on_auth: null,
  void_backout_use_current_date: null,
  volume_max_met_ex_code: null,
  volume_min_met_ex_code: null,
  workflow_execute_count: null,
  zelis_eob_code_not_found_ex_code: null,
  zelis_edit_code_not_found_ex_code: null,
  zelis_in_network_ex_code: null,
  zelis_login: null,
  zelis_password: null,
  zelis_poll: null,
  zelis_poll_testing: null,
  zelis_url: null,
  zip_code: null,
  use_vb_adjudicate_benefit_matching: null,
  display_member_primary_network: null,
  disable_ghostscript: null,
  vba_software_end_date: null,
  open_invoice_paid_through: null,
  claim_returned_to_batch_ex_code: null
)
```

