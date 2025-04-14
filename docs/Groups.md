# Vba::Groups

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Unique identifier for each Group. |  |
| **account_key** | **Integer** | Identifies the Account associated with this Group. | [optional] |
| **account_manager** | **String** | Information field used in custom client reporting. | [optional] |
| **add_on_rate_option** | **String** | Determines whether a Group&#39;s AddOn Rates are combined and applied once (Additive) or applies rates separately, in a sequence (Sequential). | [optional] |
| **address** | **String** | Adderss of the Group. | [optional] |
| **address2** | **String** | Line 2 of the Group&#39;s address. | [optional] |
| **admin_cobra** | **Boolean** | Indicates if this Group administers COBRA. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adult_age** | **Integer** | Identifies the age at which dependents are considered to be adults. Student status information is required on the enrollment to allow claims to pay for a dependent whose age exceeds the age defined here. | [optional] |
| **advice_to_pay** | **Boolean** | Notes if the claims for this Group should be Advice_To_Pay (flagged as unpaid when processed). Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **apply_ex_code** | **Boolean** | Flag if adjudication should apply an Ex Code to a claim for this Group. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auth_not_reqd_override** | **Boolean** | Notes if this group allows Auth Required claims edit to be overridden and paid. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **billing_age_calc** | **String** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **billing_cycle_id** | **String** | Identifies the bill cycle for this Group. This will be used when creating invoices. | [optional] |
| **billing_due_date_range** | **Integer** | Used when Set_Billing_Due_Date is enabled. | [optional] |
| **billing_due_date_range_type** | **String** | Used when Set_Billing_Due_Date is enabled. | [optional] |
| **billing_due_date_type** | **String** | Used when Set_Billing_Due_Date is enabled. | [optional] |
| **billing_invoice_create** | **Integer** | Indicates the group is included in invoice generation processes. | [optional] |
| **billing_retro_limit** | **Integer** | Indicates how many bills (based on billing cycles) should be interrogated to determine adjustments. | [optional] |
| **case_rate** | **Float** | No longer in use. | [optional] |
| **check_birthday** | **String** | Identifies whether date of birth edits are performed for this Group during adjudication. | [optional] |
| **city** | **String** | City of the Group&#39;s address. | [optional] |
| **claim_days_allowed** | **Integer** | No longer in use. | [optional] |
| **co_pay_max_per_date_provider** | **Boolean** | Notes that this group calculates copay max (based on plan configuration) by provider rather than across the entire plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **commission_lookback** | **Integer** | Notes the number of billing cycles to lookback when calculating commissions. | [optional] |
| **contact_country_code** | **String** | Country code of the Group&#39;s contact number. | [optional] |
| **contact_email_address** | **String** | Email address of the identified Group contact. | [optional] |
| **contact_extension** | **String** | Extension number of the Group&#39;s contact. | [optional] |
| **contact_phone** | **String** | Phone number of the Group&#39;s contact. | [optional] |
| **contact_title** | **String** | Title of the Group&#39;s primary contact. | [optional] |
| **country_id** | **String** | Identifier of the Groups&#39;s country. | [optional] |
| **county_code** | **String** | County code of the Group address. | [optional] |
| **cutoff_age** | **Integer** | Identifies the age at which dependents are no longer eligible for coverage. Adult Dependent information is required on the enrollment to allow claims to pay for a dependent whose age exceeds the age defined here. | [optional] |
| **default_eob_report** | **Integer** | Defines the default EOB report object from our core admin system. This is a developer setting. | [optional] |
| **default_invoice_report_definition_key** | **Integer** | By default, indicates which Invoice report should be used for automation. | [optional] |
| **default_process_by_disability_date** | **Boolean** | Process by Disability Date can be defined here to apply to all claims for this group rather than on a claim by claim basis (acts as a default). Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **default_roll_up_waiting_period** | **Boolean** | Roll Up Waiting Period can be defined here to apply to all claims for this group rather than on a claim by claim basis (acts as a default). Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **disability_pay_through_day** | **Integer** | The day of the week that Paid Through is calculated for Disability premiums. | [optional] |
| **disable_cobra_auto_select** | **Boolean** | This flag indicates that the Group COBRA premium will not be automatically populated during member disenrollment. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **disenroll_date** | **Time** | Date when the Group expires/expired. | [optional] |
| **distribution_account_key** | **Integer** | For Premium Distribution processing, this notes the Account for the source of distributed funds. | [optional] |
| **distribution_payor_id** | **String** | For Premium Distribution processing, this notes the Payor ID for the source of distributed funds. | [optional] |
| **duplicate_claim_override** | **Boolean** | Notes if this group allows Duplicate Claims to be overridden to be paid. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **election_range** | **Integer** | Used for determining Flex Election. | [optional] |
| **election_range_type** | **String** | Used with Election_Range to determine the Flex Election. | [optional] |
| **employer_size** | **String** | Information field used in custom client reporting. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | The Ex Code applied during claims adjudication if \&quot;Apply_Ex_Code\&quot; is enabled. | [optional] |
| **fax** | **String** | Fax number of the Group. | [optional] |
| **fax_country_code** | **String** | Country code of the Group&#39;s fax number. | [optional] |
| **federal_id** | **String** | Federal tax identifier of the Group. | [optional] |
| **generate_adjustments** | **String** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **generate_invoices** | **String** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **group_account** | **Integer** | Holds the account reference for the Employer Account. Not used in processing. | [optional] |
| **individual_billing** | **Boolean** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **individual_cycle** | **Boolean** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **individual_dates** | **Boolean** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **inv_grace_period** | **Integer** | The grace period value based on \&quot;Grace_Period_Type\&quot; for how long you have to process an invoice after the term date. | [optional] |
| **inv_grace_period_type** | **String** | Works with Grace_Period to determine how long after term date an invoice can be processed. | [optional] |
| **invoice_enrolled_by** | **Integer** | Used to determine eligiblity during invoice generation for enrolled members. | [optional] |
| **invoice_enrolled_thru** | **Integer** | Used to determine eligiblity during invoice generation for enrolled members. | [optional] |
| **issue_state** | **String** | Identifies the sate in which the Group is insured. | [optional] |
| **name** | **String** | Name of the Group. | [optional] |
| **notes** | **String** | No longer in use, replaced by Notes Service. | [optional] |
| **open_closed_enrollment** | **Boolean** | Information field used in custom client reporting. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **original_date** | **Time** | Date when the Group becomes/became active. | [optional] |
| **paid_through** | **Time** | Date through which the Group premium has been paid. | [optional] |
| **paperless** | **Boolean** | Notes if this Group is Paperless (this overrides the individual member settings from VBAGateway). Used in process automation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pay_to_account** | **Integer** | The Pay To Account used for external payments. | [optional] |
| **payor_id** | **String** | Identifier of the Payor associated with the Group. | [optional] |
| **phone** | **String** | Phone number of the Group. | [optional] |
| **phone_country_code** | **String** | Country code of the Group&#39;s phone number. | [optional] |
| **prepaid_group** | **Boolean** | Information field used in custom client reporting. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **primary_contact** | **String** | Primary contact of the Group. | [optional] |
| **producer** | **String** | Information field used in custom client reporting. | [optional] |
| **prorate_deduction** | **Boolean** | Notes if the disability deductions should be prorated during adjudication. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **prorate_deduction_type** | **String** | For Disability, notes the Deduction Type to have prorate applied. | [optional] |
| **r_x_bin** | **String** | Information field used in custom client reporting. | [optional] |
| **r_x_cs_contact** | **String** | Information field used in custom client reporting. | [optional] |
| **r_x_cs_phone** | **String** | Information field used in custom client reporting. | [optional] |
| **r_x_grp** | **String** | Information field used in custom client reporting. | [optional] |
| **r_x_name** | **String** | Information field used in custom client reporting. | [optional] |
| **r_x_pcn** | **String** | Information field used in custom client reporting. | [optional] |
| **reason_id** | **Integer** | No longer in use. | [optional] |
| **region_code** | **String** | Region Code for this group (locality). | [optional] |
| **renewal_completion_date** | **Time** | Information field used in custom client reporting. | [optional] |
| **renewal_date** | **Time** | The last renewal date for this Group. Used in custom reporting. Not used in processing. | [optional] |
| **self_admin** | **Boolean** | Notes if this group has Self-Admin billing. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **set_billing_due_date** | **Boolean** | Indicates if the system should calculate the Due Date on an invoice based on Billing_Due_Date settings. By default the due date is the \&quot;Bill Thru\&quot; on an invoice, this gives the option to change that calculation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **state** | **String** | State of the Group&#39;s address. | [optional] |
| **subscriber_id_prefix** | **String** | The automatically applied Subscriber ID prefix when using auto generated IDs. | [optional] |
| **subscriber_id_suffix** | **String** | The automatically applied Subscriber ID suffix when using auto generated IDs. | [optional] |
| **total_employees** | **Integer** | Information field used in custom client reporting. | [optional] |
| **u_c_percent** | **String** | Identifies the Usual and Customary percentage of the Group. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_employer_state** | **Boolean** | Notes if Employe State, not Subscriber State, should be used in invoice generation. Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided. | [optional] |
| **zip_code** | **String** | Zip code of the Group&#39;s address. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Groups.new(
  group_id: null,
  account_key: null,
  account_manager: null,
  add_on_rate_option: null,
  address: null,
  address2: null,
  admin_cobra: null,
  adult_age: null,
  advice_to_pay: null,
  apply_ex_code: null,
  auth_not_reqd_override: null,
  billing_age_calc: null,
  billing_cycle_id: null,
  billing_due_date_range: null,
  billing_due_date_range_type: null,
  billing_due_date_type: null,
  billing_invoice_create: null,
  billing_retro_limit: null,
  case_rate: null,
  check_birthday: null,
  city: null,
  claim_days_allowed: null,
  co_pay_max_per_date_provider: null,
  commission_lookback: null,
  contact_country_code: null,
  contact_email_address: null,
  contact_extension: null,
  contact_phone: null,
  contact_title: null,
  country_id: null,
  county_code: null,
  cutoff_age: null,
  default_eob_report: null,
  default_invoice_report_definition_key: null,
  default_process_by_disability_date: null,
  default_roll_up_waiting_period: null,
  disability_pay_through_day: null,
  disable_cobra_auto_select: null,
  disenroll_date: null,
  distribution_account_key: null,
  distribution_payor_id: null,
  duplicate_claim_override: null,
  election_range: null,
  election_range_type: null,
  employer_size: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  fax: null,
  fax_country_code: null,
  federal_id: null,
  generate_adjustments: null,
  generate_invoices: null,
  group_account: null,
  individual_billing: null,
  individual_cycle: null,
  individual_dates: null,
  inv_grace_period: null,
  inv_grace_period_type: null,
  invoice_enrolled_by: null,
  invoice_enrolled_thru: null,
  issue_state: null,
  name: null,
  notes: null,
  open_closed_enrollment: null,
  original_date: null,
  paid_through: null,
  paperless: null,
  pay_to_account: null,
  payor_id: null,
  phone: null,
  phone_country_code: null,
  prepaid_group: null,
  primary_contact: null,
  producer: null,
  prorate_deduction: null,
  prorate_deduction_type: null,
  r_x_bin: null,
  r_x_cs_contact: null,
  r_x_cs_phone: null,
  r_x_grp: null,
  r_x_name: null,
  r_x_pcn: null,
  reason_id: null,
  region_code: null,
  renewal_completion_date: null,
  renewal_date: null,
  self_admin: null,
  set_billing_due_date: null,
  state: null,
  subscriber_id_prefix: null,
  subscriber_id_suffix: null,
  total_employees: null,
  u_c_percent: null,
  update_date: null,
  update_user: null,
  use_employer_state: null,
  zip_code: null
)
```

