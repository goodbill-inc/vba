# Vba::GroupDivision

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References Groups.Group_ID value on parent record. |  |
| **division_id** | **String** | Unique Division identifier assigned inside this Group. This ID must be unique within the Group ID. |  |
| **ac_h_account_key** | **Integer** | References the FundingAccount.Account_Key that holds the ACH information for this Division for any ACH processing. | [optional] |
| **account_key** | **Integer** | References the PayorAccount.Account_Key value in parent table. | [optional] |
| **address** | **String** | Address associated with the Division. | [optional] |
| **address2** | **String** | Address 2 associated with the Division. | [optional] |
| **adult_age** | **Integer** | Identifies the age at which dependents are considered to be adults. Student status information is required on the enrollment to allow claims to pay for a dependent whose age exceeds the age defined here. | [optional] |
| **agri_tax_return** | **String** | Information field for custom client reporting. | [optional] |
| **auth_not_reqd_override** | **Boolean** | This flag tells adjudication to not error if no authorization is found on claims that require authorization. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **brokerage** | **String** | Information field for custom client reporting. | [optional] |
| **cobr_a_auto_term_adj_reason** | **Integer** | When utilizing the Auto-Term process, notes the adjustment reason applied to premiums impacted by a retro term. | [optional] |
| **cobr_a_auto_term_reason** | **Integer** | When utilizing the Auto-Term process, indicates the Term Reason to apply if COBRA is being enrolled. | [optional] |
| **cobr_a_division** | **Boolean** | Points to the Division ID that is the COBRA Division for this Division. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_e_network** | **Boolean** | Information field for custom client reporting. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **case_rate** | **Float** | Information field for custom client reporting. | [optional] |
| **city** | **String** | City of the Division address. | [optional] |
| **claim_days_allowed** | **Integer** | No longer in use. | [optional] |
| **class_description** | **String** | No longer in use, replaced by GroupClass table. | [optional] |
| **class_id** | **String** | No longer in use, replaced by GroupClass table. | [optional] |
| **contact_country_code** | **String** | Country Code for the Contact Phone Number. | [optional] |
| **contact_email_address** | **String** | The division contact email address. | [optional] |
| **contact_extension** | **String** | The contacts extension for their phone number. | [optional] |
| **contact_phone** | **String** | The Contact Phone number for this Divisions Contact. | [optional] |
| **contact_title** | **String** | Title of the Division&#39;s primary contact. | [optional] |
| **country_id** | **String** | Country ID associated with the Division. | [optional] |
| **county_code** | **String** | County code of the Division address. | [optional] |
| **cutoff_age** | **Integer** | Identifies the age at which dependents are no longer eligible for coverage. Adult Dependent information is required on the enrollment to allow claims to pay for a dependent whose age exceeds the age defined here. | [optional] |
| **default_cobra_reason** | **Integer** | When disenrolling a member and reenrolling into COBRA, this indicates the default reason attached to the disenroll. | [optional] |
| **default_invoice_report_definition_key** | **Integer** | For reports in the \&quot;INV\&quot; Report_Category, this provides the user with the list of invoice reports they can set as the default report using for automated invoice generation. | [optional] |
| **disability_pay_through_day** | **Integer** | Indicates the day of the week the paid through is set when using automatic paid through dates. | [optional] |
| **disenroll_date** | **Time** | This notes that the Division has been terminated and what date. An active Division has a NULL value here. | [optional] |
| **distribution_account_key** | **Integer** | References the PayorAccount.Account_Key value in parent table. | [optional] |
| **distribution_payor_id** | **String** | References the PayorAccount.Payor_ID value in parent table. | [optional] |
| **duplicate_claim_override** | **Boolean** | This flag tells adjudication to ignore Duplicate Claims Processing logic if enabled. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exempt_federal** | **Boolean** | For Disability tax calculations, this indicates if the Division is exempt from taking Federal taxes on the claim payments. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exempt_medicare** | **Boolean** | For Disability tax calculations, this indicates if the Division is exempt from taking Medicare taxes on the claim payments. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exempt_soc_sec** | **Boolean** | For Disability tax calculations, this indicates if the Division is exempt from taking Social Security taxes on the claim payments. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exempt_state** | **Boolean** | For Disability tax calculations, this indicates if the Division is exempt from taking State taxes on the claim payments. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **fic_a_employer_match** | **Boolean** | Notes if the employer matches FICA (lowers that tax to 0) during claims adjudication. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **fax** | **String** | The fax number for this Division. | [optional] |
| **fax_country_code** | **String** | Country Code for the Division Fax Number. | [optional] |
| **federal_id** | **String** | This Division Tax ID. | [optional] |
| **federal_tax_day_limit** | **Integer** | Limit of days for the federal tax exemption. | [optional] |
| **federal_wage_limit** | **Float** | Wage limit for the federal tax exemption. | [optional] |
| **generate_w2** | **Boolean** | Notes if this Division is part of tax reporting and should have its data sent for W2 generation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **group_division_captive** | **String** | Information field for custom client reporting. | [optional] |
| **invoice_grace_period** | **Integer** | Indicates the grace period for invoice generation for this Division. This value works with \&quot;Invoice_Grace_Period_Type\&quot; to determine duration. | [optional] |
| **invoice_grace_period_ex_code** | **String** | When a grace period is applied to an invoice that impacts \&quot;Paid Through\&quot;, the affected claims will apply this Ex Code. | [optional] |
| **invoice_grace_period_type** | **String** | Based on \&quot;Invoice_Grace_Period\&quot;, this is the Days, Weeks, Months or Years that grace period extends. | [optional] |
| **invoice_level** | **String** | Indiciates the level of invoicing done by premium billing. There are 3 levels you can configure: S - Subscriber level invoicing (meaning an invoice per enrolled Subscriber), D - Division level invoicing (meaning an invoice per Division with all enrolled Subscribers in that Division on that Invoice), and G - Group level invoicing (meaning an invoice for the whole group with all enrolled Subscribers on the same invoice). | [optional] |
| **invoice_remit_address1** | **String** | When generating Division level invoices through premium biling, this is the Address on that invoice. | [optional] |
| **invoice_remit_address2** | **String** | When generating Division level invoices through premium biling, this is the Address 2 on that invoice. | [optional] |
| **invoice_remit_city** | **String** | When generating Division level invoices through premium biling, this is the City on that invoice. | [optional] |
| **invoice_remit_country_code** | **String** | When generating Division level invoices through premium biling, this is the Phone Number Country Code on that invoice. | [optional] |
| **invoice_remit_country_id** | **String** | When generating Division level invoices through premium biling, this is the Country ID on that invoice. | [optional] |
| **invoice_remit_name** | **String** | When generating Division level invoices through premium biling, this is the Name on that invoice. | [optional] |
| **invoice_remit_phone_number** | **String** | When generating Division level invoices through premium biling, this is the Phone Number on that invoice. | [optional] |
| **invoice_remit_state** | **String** | When generating Division level invoices through premium biling, this is the State on that invoice. | [optional] |
| **invoice_remit_zip_code** | **String** | When generating Division level invoices through premium biling, this is the Zip Code on that invoice. | [optional] |
| **issue_state** | **String** | For Life &amp; Disability clients, this holds the issue state for processing taxes and reporting. | [optional] |
| **mail_to_default** | **Boolean** | For Life &amp; Disability clients, this is the default Mail To setting applied to claims created through the advisor wizards. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **medicare_tax_day_limit** | **Integer** | Limit of days for the medicare tax exemption. | [optional] |
| **medicare_wage_limit** | **Float** | Wage liimit for the medicare tax exemption. | [optional] |
| **name** | **String** | Name of the Group Division. | [optional] |
| **notes** | **String** | No longer in use. Replaced by the Notes module. | [optional] |
| **number_lives** | **Integer** | Information field for custom client reporting. | [optional] |
| **original_date** | **Time** | This is the first start date (original effective date) of the Division inside this group. This date should be equal to or earlier than the first GroupContact.Coverage_Start date attached to this Division. | [optional] |
| **other_insurance_ex_code** | **String** | This is the Ex Code applied if COB is identified during adjudciation and Other Insurance information is used during processing. | [optional] |
| **paid_through** | **Time** | This is the paid through date for any Division level invoices through premium billing. This can be manually set or updated by the system. | [optional] |
| **participation_incentive_id** | **String** | Information field for custom client reporting. | [optional] |
| **pay_to_account** | **Integer** | For processing that uses the Pay To Account, this referneces the FundingAccount.Account_Key for that process. | [optional] |
| **payor_id** | **String** | References the PayorAccount.Payor_ID value in parent table. | [optional] |
| **pend_ex_code** | **String** | The Ex Code applied during claims adjudication if \&quot;Pend_Flag\&quot; is enabled. | [optional] |
| **pend_flag** | **String** | Notes that this Division should have a pend code (Ex Code) applied during claims processing for any claims for this Division. | [optional] |
| **phone** | **String** | The phone number for this Division. | [optional] |
| **phone_country_code** | **String** | Country Code for the Division Phone Number. | [optional] |
| **premium_location** | **String** | No longer in use. | [optional] |
| **primary_contact** | **String** | Primary contact of the Division. | [optional] |
| **prorate_deduction** | **Boolean** | Notes if this division should have disability deductions pro-rated during claims processing. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **prorate_deduction_type** | **String** | Indicates the type of prorating to calculate against. If calculating against flat deduction types only, set to F, to apply prorating to Percentage based deductions, set to P, if applying prorating on all deduction types, set to B. | [optional] |
| **reference_based_pricing** | **String** | Information field for custom client reporting. | [optional] |
| **region_code** | **String** | Information field for noting the region for this Division. | [optional] |
| **reinsurance_option** | **String** | No longer in use. Replaces by the full reinsurance module. | [optional] |
| **seer_data** | **Integer** | Information field for custom client reporting. | [optional] |
| **set_paid_through** | **Boolean** | Notes if this division should have the paid through set as part of satisfying a premium bill. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **soc_sec_tax_day_limit** | **Integer** | Limit of days for the social security tax exemption. | [optional] |
| **soc_sec_wage_limit** | **Float** | Wage limite for Social Security tax exemption. | [optional] |
| **spec_deductible** | **String** | No longer in use. Replaces by the full reinsurance module. | [optional] |
| **state** | **String** | State of the Division address. | [optional] |
| **state_tax_day_limit** | **Integer** | Limit of days for the state tax exemption. | [optional] |
| **state_wage_limit** | **Float** | Wage limit for the state tax exemption. | [optional] |
| **tax_day_limit_type** | **Integer** | Indicates if the tax day limitations are by day or calendar months. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **transplant_elite** | **String** | Information field for custom client reporting. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_restricted_deductions** | **Boolean** | Limits the deduction types that can be selected on disability claims to use the GroupDivisionDeductionType list. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **zip_code** | **String** | The Zip Code for this Division address. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupDivision.new(
  group_id: null,
  division_id: null,
  ac_h_account_key: null,
  account_key: null,
  address: null,
  address2: null,
  adult_age: null,
  agri_tax_return: null,
  auth_not_reqd_override: null,
  brokerage: null,
  cobr_a_auto_term_adj_reason: null,
  cobr_a_auto_term_reason: null,
  cobr_a_division: null,
  co_e_network: null,
  case_rate: null,
  city: null,
  claim_days_allowed: null,
  class_description: null,
  class_id: null,
  contact_country_code: null,
  contact_email_address: null,
  contact_extension: null,
  contact_phone: null,
  contact_title: null,
  country_id: null,
  county_code: null,
  cutoff_age: null,
  default_cobra_reason: null,
  default_invoice_report_definition_key: null,
  disability_pay_through_day: null,
  disenroll_date: null,
  distribution_account_key: null,
  distribution_payor_id: null,
  duplicate_claim_override: null,
  entry_date: null,
  entry_user: null,
  exempt_federal: null,
  exempt_medicare: null,
  exempt_soc_sec: null,
  exempt_state: null,
  fic_a_employer_match: null,
  fax: null,
  fax_country_code: null,
  federal_id: null,
  federal_tax_day_limit: null,
  federal_wage_limit: null,
  generate_w2: null,
  group_division_captive: null,
  invoice_grace_period: null,
  invoice_grace_period_ex_code: null,
  invoice_grace_period_type: null,
  invoice_level: null,
  invoice_remit_address1: null,
  invoice_remit_address2: null,
  invoice_remit_city: null,
  invoice_remit_country_code: null,
  invoice_remit_country_id: null,
  invoice_remit_name: null,
  invoice_remit_phone_number: null,
  invoice_remit_state: null,
  invoice_remit_zip_code: null,
  issue_state: null,
  mail_to_default: null,
  medicare_tax_day_limit: null,
  medicare_wage_limit: null,
  name: null,
  notes: null,
  number_lives: null,
  original_date: null,
  other_insurance_ex_code: null,
  paid_through: null,
  participation_incentive_id: null,
  pay_to_account: null,
  payor_id: null,
  pend_ex_code: null,
  pend_flag: null,
  phone: null,
  phone_country_code: null,
  premium_location: null,
  primary_contact: null,
  prorate_deduction: null,
  prorate_deduction_type: null,
  reference_based_pricing: null,
  region_code: null,
  reinsurance_option: null,
  seer_data: null,
  set_paid_through: null,
  soc_sec_tax_day_limit: null,
  soc_sec_wage_limit: null,
  spec_deductible: null,
  state: null,
  state_tax_day_limit: null,
  state_wage_limit: null,
  tax_day_limit_type: null,
  transplant_elite: null,
  update_date: null,
  update_user: null,
  use_restricted_deductions: null,
  zip_code: null
)
```

