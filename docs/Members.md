# Vba::Members

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References the Subscribers.Subscriber_ID value in the parent table. |  |
| **member_seq** | **String** | Sequential identifier assigned to each Member of this family. In combination with Subscriber_ID, creates a unique identifier.    During creation, if you pass a value for this field, the system will attemot to use the value.   If you do not include a value (eg, leave null), the system will generate a value for you.  The generated value will be the total_count_of_members for the subscriber_id + 1. | [optional] |
| **access_code** | **String** | Access code defined by the User. | [optional] |
| **adult_child** | **String** | Designates whether the Member is an adult or child. This may be important in cases where premiums differ between adult and child members. | [optional] |
| **adult_dependent** | **Boolean** | This flag identifies the Member has been approved to continue coverage past the &#39;Cutoff Age&#39; defined at the &#39;Group level&#39;. |  |
| **adult_dependent_end** | **Time** | End date of the Member&#39;s approved &#39;Adult Dependent Status&#39;. Only claims with a date of service up to this date will be allowed to process through adjudication. | [optional] |
| **alternate_id** | **String** | Allows the User to assign an &#39;Alternate ID&#39; to the Member. | [optional] |
| **birth_date** | **Time** | Date of birth of the Member. | [optional] |
| **continue_coverage** | **Boolean** | Allows claims to pay past the disenroll date. Below are some examples: (1) A member terminates coverage but is still inpatient. Checking this box, and designating the end of inpatient stay with the &#39;Thru Date&#39;, will allow the claim(s) to pay during this time. The member will still reflect as inactive. (2) A member is on &#39;Long Term Disability&#39;. Coverage terminates, but payments still need to be made. Same steps as example (1) above. |  |
| **continue_coverage_end_date** | **Time** | End date of the &#39;Continued Coverage&#39; period. | [optional] |
| **continue_coverage_ex_code** | **String** | Allows for an Ex Code to be assigned when a claim is processed after the disenroll date but within the &#39;Continue Coverage&#39; period. | [optional] |
| **coverage_type** | **String** | Indicates the type of coverage (&#39;Open Enrollment&#39;, &#39;Late Enrollment&#39;, etc.). | [optional] |
| **credible_coverage** | **Integer** | Total number of days for the Credible Coverage period. | [optional] |
| **creditable_coverage_end** | **Time** | End date of the Member&#39;s &#39;Credible Coverage&#39; period. These dates are used in the stock ‘Creditable Coverage’ COBRA reports. | [optional] |
| **creditable_coverage_start** | **Time** | Start date of the Member&#39;s &#39;Credible Coverage&#39; period. These dates are used in the stock ‘Creditable Coverage’ COBRA reports. | [optional] |
| **date_enrolled** | **Time** | Original enrollment date of the Member. | [optional] |
| **date_of_death** | **Time** | Date of death of the Member. | [optional] |
| **disenroll_date** | **Time** | Disenrollment date of the Member. | [optional] |
| **ethnicity_code** | **String** | Ethnicity of the Member. | [optional] |
| **first_name** | **String** | First name of the Member. | [optional] |
| **height** | **Integer** | The members height in inches. | [optional] |
| **initial_volume** | **Float** | This is the volume used in intial volume calculations. This number can either be a flat amount or a percentage of the Member&#39;s gross salary. | [optional] |
| **initial_volume_salary_pct** | **Boolean** | Indicates that the number from the &#39;Initial Volume&#39; field represents a percentage of the Member&#39;s salary. Salaries are found from a Member&#39;s &#39;Financial&#39; detail dropdown. |  |
| **last_name** | **String** | Last name of the Member. | [optional] |
| **marital_status** | **String** | Marital status of the Member. | [optional] |
| **middle_name** | **String** | Middle initial of the Member. | [optional] |
| **name_suffix** | **String** | Suffix or title associated with the Member. | [optional] |
| **notes** | **String** | No longer in use. Replaced by NotData, NoteSource and NoteReference tables. | [optional] |
| **other_insurance** | **Boolean** | An optional reminder that the Member has an &#39;Other Insurance&#39;. [Informational Only] |  |
| **other_name** | **String** | Information only used in custom reporting. | [optional] |
| **pend_ex_code** | **String** | Assigns an Ex Code that can be applied to newly adjudicated Subscriber claims. | [optional] |
| **pend_flag** | **String** | While active, assigned Ex Codes will be applied to any newly adjudicated Subscriber claims. | [optional] |
| **plan_year_frequency** | **Integer** | Defines the number of months/years covered by the Member&#39;s plan. | [optional] |
| **plan_year_frequency_type** | **String** | Specifies the timeframe the Member Plan Year will use. | [optional] |
| **pre_exist** | **String** | Identifies whether the Member has any pre-existing conditions. | [optional] |
| **pre_exist_end** | **Time** | End date of pre-existing conditions in relation to the Member&#39;s plan. | [optional] |
| **pre_exist_ex_code** | **String** | Assigns an Ex Code to pre-existing Claims. | [optional] |
| **relationship** | **String** | Relationship of the Member to the Subscriber. | [optional] |
| **ssn** | **String** | Social security number of the Member. | [optional] |
| **salutation** | **String** | Information only used in custom reporting. | [optional] |
| **sex** | **String** | Biological sex of the Member. | [optional] |
| **smoker** | **Boolean** | Designates whether the Member is a smoker. This may be important in cases where premiums differ between smokers and non-smokers. |  |
| **student** | **String** | Identifies that the Member meets the &#39;Student Status&#39; requirements. | [optional] |
| **student_end** | **Time** | End date of the Member&#39;s approved &#39;Student Status&#39;. Only claims with a date of service up to this date will be allowed to process through adjudication. | [optional] |
| **unique_id** | **String** | Unique identifier assigned to the Member by the User. | [optional] |
| **use_member_plan_year** | **Boolean** | Identifies the Member&#39;s Plan year if it differs from the group. The User is required to define a number of months or years for the Plan. The Member&#39;s Plan year will begin on the first day of enrollment. |  |
| **vi_p_flag** | **String** | VIP status of the Member. This status can be used as a search filter but is otherwise informational only. | [optional] |
| **weight** | **Integer** | The members weight in pounds. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Members.new(
  subscriber_id: null,
  member_seq: null,
  access_code: null,
  adult_child: null,
  adult_dependent: null,
  adult_dependent_end: null,
  alternate_id: null,
  birth_date: null,
  continue_coverage: null,
  continue_coverage_end_date: null,
  continue_coverage_ex_code: null,
  coverage_type: null,
  credible_coverage: null,
  creditable_coverage_end: null,
  creditable_coverage_start: null,
  date_enrolled: null,
  date_of_death: null,
  disenroll_date: null,
  ethnicity_code: null,
  first_name: null,
  height: null,
  initial_volume: null,
  initial_volume_salary_pct: null,
  last_name: null,
  marital_status: null,
  middle_name: null,
  name_suffix: null,
  notes: null,
  other_insurance: null,
  other_name: null,
  pend_ex_code: null,
  pend_flag: null,
  plan_year_frequency: null,
  plan_year_frequency_type: null,
  pre_exist: null,
  pre_exist_end: null,
  pre_exist_ex_code: null,
  relationship: null,
  ssn: null,
  salutation: null,
  sex: null,
  smoker: null,
  student: null,
  student_end: null,
  unique_id: null,
  use_member_plan_year: null,
  vi_p_flag: null,
  weight: null
)
```

