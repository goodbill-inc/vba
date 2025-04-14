# Vba::Provider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Unique idenfitier assigned to the Proivider record. | [optional] |
| **accepting_age_from** | **Integer** | Beginning of the range of accepted patient ages. | [optional] |
| **accepting_age_thru** | **Integer** | End of the range of accepted patient ages. | [optional] |
| **accepting_patients** | **Boolean** | Indicates whether the selected Provider is accepting new patients.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **accepts_capitation** | **Boolean** | No longer in use. This fields has been replaced by the Credentialing tables.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **accepts_plan_fees** | **Boolean** | No longer in use. This fields has been replaced by the Credentialing tables. |  |
| **accepts_withhold** | **Boolean** | No longer in use. This fields has been replaced by the Credentialing tables.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **active** | **Boolean** | Indicates whether the Provider is active.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **address** | **String** | Street address of the rendering location. | [optional] |
| **address2** | **String** | Address line 2 for the Provider entity. | [optional] |
| **advice_to_pay** | **Boolean** | When this option is selected, adjudication to mark every claim as &#39;Advice to Pay&#39; (ATP). Advice to Pay claims do not produce check records when processed.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **after_hours_procedures** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **alternate_id** | **String** | Alternate identifier for the selected Provider. | [optional] |
| **blid** | **String** | BaseLoad Key for this Service Provider location. | [optional] |
| **birth_date** | **Time** | Provider&#39;s date of birth. (Not required if Entity is non-Person) | [optional] |
| **birth_place** | **String** | Provider&#39;s place of birth. (If the entity is a Person) | [optional] |
| **board_certification** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **city** | **String** | City of the rendering location. | [optional] |
| **communication_method** | **String** | Indicates the Provider&#39;s preferred method of communication. | [optional] |
| **country_id** | **String** | Country code associated with the Provider entity. | [optional] |
| **county_code** | **String** | County code associated with the Provider entity. | [optional] |
| **de_a_number** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **discount_percent** | **Float** | This option adjusts the &#39;Allowed Amount&#39; above (positive values) or below (negative values) the &#39;Billed Amount&#39; by the entered percentage. | [optional] |
| **education** | **String** | Educational background of the Provider. (If the entity is a Person) | [optional] |
| **effective_date** | **Time** | Indicates the effectiveness of this provider at this service location. Independent of Network effectiveness. | [optional] |
| **email_address** | **String** | Email address of the Provider entity. | [optional] |
| **emergency_country_code** | **String** | Country code of the emergency phone number associated with the Provider entity. | [optional] |
| **emergency_phone** | **String** | Emergency phone number of the Provider. | [optional] |
| **entity_id** | **String** | Unique identifier assigned to the Provider entity. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ethnicity_code** | **String** | Identifies the type of individual Provider or Provider entity. | [optional] |
| **expiration_date** | **Time** | Indicates the effectiveness of this provider at this service location. Independent of Network effectiveness. | [optional] |
| **fax_country_code** | **String** | Country code of the fax number associated with the Provider entity. | [optional] |
| **fax_number** | **String** | Fax number associated with the Provider&#39;s rendering location. | [optional] |
| **fax_opt_out** | **Boolean** | Indicates that the Provider is opted out of fax communication.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **federal_id** | **String** | Provider&#39;s federal tax identification number. | [optional] |
| **first_name** | **String** | First name of the Provider. (Not required if Entity is non-Person) | [optional] |
| **handicap_access** | **Boolean** | Indicates whether the Provider facilities have handicap accessibility.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **home_address** | **String** | Home address of the Provider. (If the entity is a Person) | [optional] |
| **home_city** | **String** | City of the home address of the Provider. (If the entity is a Person) | [optional] |
| **home_country_code** | **String** | Country code of the home phone number associated with the Provider entity. | [optional] |
| **home_country_id** | **String** | Country indicator for Provider home address. | [optional] |
| **home_phone** | **String** | Home phone number of the Provider. | [optional] |
| **home_state** | **String** | State of the home address of the Provider. (If the entity is a Person) | [optional] |
| **home_zip_code** | **String** | Zip Code of the Provider&#39;s home address. | [optional] |
| **hours** | **String** | Hours of operation for the Provider. | [optional] |
| **iv_r_code** | **String** | This field is sometimes used to track an IVR Code for the providers IVR system. | [optional] |
| **initial_cred_date** | **Time** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **ins_agent** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **ins_carrier** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **ins_coverage_amt** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **ins_expiration_date** | **Time** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **ins_policy_number** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **languages** | **String** | Lists the languages that able to be spoken/translated at the facility. | [optional] |
| **last_name** | **String** | Last name of the Provider. (Not required if Entity is non-Person) | [optional] |
| **latitude** | **Float** | Latitudinal coordinate of the Provider entity&#39;s location. | [optional] |
| **license_number** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **longitude** | **Float** | Longitudinal coordinate of the Provider entity&#39;s location. | [optional] |
| **malp_aggregate_limit** | **Integer** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **malp_carrier_id** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **malp_exp_date** | **Time** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **malp_policys** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **malp_specific_limit** | **Integer** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **medicaid_id** | **String** | Unique Medicaid identifier associated with the Provider. | [optional] |
| **medicare_cert_id** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **middle_name** | **String** | Middle initial of the Provider. | [optional] |
| **nitrous_oxide** | **Boolean** | Indicates whether the Provider facilities have nitrous oxide available for patients.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **no_pends_on_remit** | **String** | When this option is selected, the Provider remit will not include pends. This only works if a custom report is designed to use this option. | [optional] |
| **notes** | **String** | No longer in use. Replaced by the NoteData, NoteSource and NoteReference tables. | [optional] |
| **osh_a_procedures** | **String** | No longer in use. This fields has been replaced by the Credentialing tables. | [optional] |
| **office_manager** | **String** | Name of the Provider&#39;s Office Manager. | [optional] |
| **org_name** | **String** | Organization that the Provider belongs to. | [optional] |
| **other_name** | **String** | Any other names that the Provider uses. | [optional] |
| **pend_ex_code** | **String** | Specifies the Ex Code that should be applied when the &#39;Apply Ex Code&#39; option is selected. | [optional] |
| **pend_flag** | **String** | Indicates whether an Ex Code should be applied to claims that involve payments to the selected Provider. | [optional] |
| **phone_country_code** | **String** | Country code of the phone number associated with the Provider entity. | [optional] |
| **phone_number** | **String** | Phone number associated with the Provider&#39;s rendering location. | [optional] |
| **plan_provider** | **Boolean** | This is an information field used for custom reporting. |  |
| **practice_type** | **String** | Defines the type of the selected Provider. | [optional] |
| **print_auth** | **Boolean** | This is an information field used for custom reporting. |  |
| **provider_type** | **String** | Identifies the type of individual Provider or Provider entity. | [optional] |
| **require_fee_sched** | **String** | This is an information field used for custom reporting. | [optional] |
| **sex** | **String** | Biological sex of the Provider. | [optional] |
| **soc_sec_number** | **String** | Social Security Number of the Provider. | [optional] |
| **sole_proprietor** | **Boolean** | No longer in use. This fields has been replaced by the Credentialing tables.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **specialties** | **String** | Specialty/Specialties of the individual Provider/entity. | [optional] |
| **state** | **String** | State of the rendering location. | [optional] |
| **suffix** | **String** | Suffix associated with the Provider. | [optional] |
| **upi_n_number** | **String** | This is an information field used for custom reporting. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_procedure_code** | **Boolean** | When this option is selected, adjudication will error any of this Provider&#39;s claims that contain revenue codes.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **website** | **String** | Website of the Provider entity. | [optional] |
| **years_practiced** | **Integer** | Number of years that the Provider has been practicing. | [optional] |
| **zip_code** | **String** | Zip Code of the Provider&#39;s rendering location. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Provider.new(
  provider_id: null,
  accepting_age_from: null,
  accepting_age_thru: null,
  accepting_patients: null,
  accepts_capitation: null,
  accepts_plan_fees: null,
  accepts_withhold: null,
  active: null,
  address: null,
  address2: null,
  advice_to_pay: null,
  after_hours_procedures: null,
  alternate_id: null,
  blid: null,
  birth_date: null,
  birth_place: null,
  board_certification: null,
  city: null,
  communication_method: null,
  country_id: null,
  county_code: null,
  de_a_number: null,
  discount_percent: null,
  education: null,
  effective_date: null,
  email_address: null,
  emergency_country_code: null,
  emergency_phone: null,
  entity_id: null,
  entry_date: null,
  entry_user: null,
  ethnicity_code: null,
  expiration_date: null,
  fax_country_code: null,
  fax_number: null,
  fax_opt_out: null,
  federal_id: null,
  first_name: null,
  handicap_access: null,
  home_address: null,
  home_city: null,
  home_country_code: null,
  home_country_id: null,
  home_phone: null,
  home_state: null,
  home_zip_code: null,
  hours: null,
  iv_r_code: null,
  initial_cred_date: null,
  ins_agent: null,
  ins_carrier: null,
  ins_coverage_amt: null,
  ins_expiration_date: null,
  ins_policy_number: null,
  languages: null,
  last_name: null,
  latitude: null,
  license_number: null,
  longitude: null,
  malp_aggregate_limit: null,
  malp_carrier_id: null,
  malp_exp_date: null,
  malp_policys: null,
  malp_specific_limit: null,
  medicaid_id: null,
  medicare_cert_id: null,
  middle_name: null,
  nitrous_oxide: null,
  no_pends_on_remit: null,
  notes: null,
  osh_a_procedures: null,
  office_manager: null,
  org_name: null,
  other_name: null,
  pend_ex_code: null,
  pend_flag: null,
  phone_country_code: null,
  phone_number: null,
  plan_provider: null,
  practice_type: null,
  print_auth: null,
  provider_type: null,
  require_fee_sched: null,
  sex: null,
  soc_sec_number: null,
  sole_proprietor: null,
  specialties: null,
  state: null,
  suffix: null,
  upi_n_number: null,
  update_date: null,
  update_user: null,
  use_procedure_code: null,
  website: null,
  years_practiced: null,
  zip_code: null
)
```

