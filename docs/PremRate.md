# Vba::PremRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_rate_key** | **Integer** | Unique identifier for the PremRate Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **add_on_grouping_id** | **String** | Used to identify Add On rates by Group | [optional] |
| **additional_invoice_address** | **String** | Address the additional invoice is sent to | [optional] |
| **additional_invoice_frequency** | **String** | Frequency of the additional invoice | [optional] |
| **additional_invoice_level** | **String** | Allows split billing at this level | [optional] |
| **address_type** | **String** | Level of the Address used to determine if the rate applies | [optional] |
| **adjustment_reason** | **Integer** | Adjustment Reason of the PremRate | [optional] |
| **adult** | **Boolean** | Flag used to determine if the rate applies to Adults Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age_from** | **Integer** | Beginning Age range of the PremRate | [optional] |
| **age_thru** | **Integer** | Ending Age range of the PremRate | [optional] |
| **age_type** | **String** | Detemines what date is used to calculate Age | [optional] |
| **age_type_month** | **String** | Detemines what Month is used if the Month Type is selected | [optional] |
| **assign_to_new_division** | **Boolean** | Flag to determine if the rate applies to new Divisions Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **assign_to_new_group** | **Boolean** | Flag to determine if the rate applies to new Groups Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **assign_to_new_member** | **Boolean** | Flag to determine if the rate applies to new Members Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auto_adjust** | **Boolean** | Flag that determines if the rate is automatically adjusted Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auto_adjust_reason** | **Integer** | Reason applied to automatic adjustments | [optional] |
| **avoid_retro** | **Boolean** | This flag indicates prevention of the retro logic from creating backout adjustments for this rate Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_code** | **String** | Benefit Code of the PremRate | [optional] |
| **billing_cycle_id** | **String** | This is the Billing Cycle the invoice was gerenated for. | [optional] |
| **child** | **Boolean** | Flag used to determine if the rate applies to Children Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **city** | **String** | City of the Address used to determine if the rate applies | [optional] |
| **class_code** | **String** | Class Code for the PremRate | [optional] |
| **country_id** | **String** | Country ID of the Address used to determine if the rate applies | [optional] |
| **county_code** | **String** | Country Code of the Address used to determine if the rate applies | [optional] |
| **description** | **String** | Description of the PremRate | [optional] |
| **division_id** | **String** | Unique identifier for the Division | [optional] |
| **effective_date** | **Time** | Effective Date of the PremRate | [optional] |
| **effective_date_type** | **String** | Determines the logic that modifies the Effective Date of the PremRate to a date based on the enrollment of the member. Note: The database will apply a default value of &#x60;NORMAL&#x60; for this field if a value is not provided. | [optional] |
| **employee_employer_contribution** | **String** | Determines if the contribution is Employee or Employer | [optional] |
| **employer_contribution** | **Float** | Amount of the contribution | [optional] |
| **employer_contribution_pct** | **Boolean** | Determines if the contribution is a percentage Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **employer_rate** | **Float** | Decimal value that defines the base employer rate | [optional] |
| **employer_rate_max** | **Float** | Maximum the employer rate will be regardless of the calculation | [optional] |
| **employer_rate_minimum** | **Float** | Minimum the employer rate will be regardless of the calculation | [optional] |
| **employer_rate_type** | **String** | Type of Employer Rate | [optional] |
| **employer_rate_variable1** | **Float** | First variable used in calculating the employer rate based on the type | [optional] |
| **employer_rate_variable2** | **Float** | Second variable used in calculating the employer rate based on the type | [optional] |
| **employer_rate_variable3** | **Float** | Third variable used in calculating the employer rate based on the type | [optional] |
| **employer_round_precision** | **Integer** | Precision that the employerrate is rounded to | [optional] |
| **employer_round_type** | **String** | Type that determine how the employer rate is rounded | [optional] |
| **enrolled_count_from** | **Integer** | Beginning range based on number of enrollments | [optional] |
| **enrolled_count_thru** | **Integer** | Ending range based on number of enrollments | [optional] |
| **enrolled_count_type** | **String** | Type of enrollments used to calculate the number of enrollments | [optional] |
| **enrolled_duration_from** | **Integer** | Beginning range based on length of enrollment | [optional] |
| **enrolled_duration_min** | **Integer** | Minimum length of enrollment | [optional] |
| **enrolled_duration_option** | **String** | Determines if the date is based on the Member or the Plan enrollment | [optional] |
| **enrolled_duration_thru** | **Integer** | Ending range based on length of enrollment | [optional] |
| **enrolled_duration_type** | **String** | Type of date used to determine the enrollment range | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_division_offering** | **Boolean** | Used to determine which records are updated when applying changes to a template Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **group_id** | **String** | Unique identifier for the Group | [optional] |
| **member_seq** | **String** | Unique sequence for a Member | [optional] |
| **network_id** | **String** | Unique identifier for the Network | [optional] |
| **network_type** | **String** | Type of Network | [optional] |
| **new_hire_age** | **Boolean** | Flag that determines the Age based on the date of hire Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_enrolled_dates** | **Boolean** | This flag indicates the rate should be paid if enrolled in for even a single day during the month. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **parent_prem_rate_key** | **Integer** | PremRate_Key of the template rate this rate was created from | [optional] |
| **payment_method** | **String** | The primary key of the payment method | [optional] |
| **plan_id** | **String** | Unique identifier for the Plan | [optional] |
| **plan_type** | **String** | Type of Plan | [optional] |
| **prem_rate_basis** | **String** | Basis of the PremRate | [optional] |
| **prem_rate_category** | **String** | Category of the PremRate | [optional] |
| **prem_rate_id** | **String** | Unique identifier for the PremRate | [optional] |
| **prem_rate_type** | **String** | Type of the PremRate | [optional] |
| **premium_proration** | **Boolean** | Flag that determines if the rate is prorated Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **rate** | **Float** | Decimal value that defines the base rate | [optional] |
| **rate_max** | **Float** | Maximum the rate will be regardless of the calculation | [optional] |
| **rate_minimum** | **Float** | Minimum the rate will be regardless of the calculation | [optional] |
| **rate_pace** | **String** | How often the rate applies | [optional] |
| **rate_pace_type** | **String** | The day the rate applies when the pace is weekly | [optional] |
| **rate_round_precision** | **Integer** | Precision that the rate is rounded to | [optional] |
| **rate_round_type** | **String** | Type that determine how the rate is rounded | [optional] |
| **rate_type** | **String** | Type of Rate | [optional] |
| **rate_variable1** | **Float** | First variable used in calculating the rate based on the type | [optional] |
| **rate_variable2** | **Float** | Second variable used in calculating the rate based on the type | [optional] |
| **rate_variable3** | **Float** | Third variable used in calculating the rate based on the type | [optional] |
| **region_code** | **String** | Region Code of the Address used to determine if the rate applies | [optional] |
| **relationship** | **String** | Relationship for the PremRate | [optional] |
| **sex** | **String** | Flag used to determine what Sex the rate applies to | [optional] |
| **smoker** | **String** | Flag to determine if the rate applies to Smokers | [optional] |
| **state** | **String** | State of the Address used to determine if the rate applies | [optional] |
| **subscriber_id** | **String** | Unique identifier for the Subscriber | [optional] |
| **term_date** | **Time** | Term Date of the PremRate | [optional] |
| **term_date_type** | **String** | Determines the logic that modifies the Term Date of the PremRate to a date based on the enrollment of the member. Note: The database will apply a default value of &#x60;NORMAL&#x60; for this field if a value is not provided. | [optional] |
| **tier** | **String** | Tier of the PremRate | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **zip_code_from** | **String** | Beginning Zip Code of the Address used to determine if the rate applies | [optional] |
| **zip_code_thru** | **String** | Ending Zip Code of the Address used to determine if the rate applies | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremRate.new(
  prem_rate_key: null,
  add_on_grouping_id: null,
  additional_invoice_address: null,
  additional_invoice_frequency: null,
  additional_invoice_level: null,
  address_type: null,
  adjustment_reason: null,
  adult: null,
  age_from: null,
  age_thru: null,
  age_type: null,
  age_type_month: null,
  assign_to_new_division: null,
  assign_to_new_group: null,
  assign_to_new_member: null,
  auto_adjust: null,
  auto_adjust_reason: null,
  avoid_retro: null,
  benefit_code: null,
  billing_cycle_id: null,
  child: null,
  city: null,
  class_code: null,
  country_id: null,
  county_code: null,
  description: null,
  division_id: null,
  effective_date: null,
  effective_date_type: null,
  employee_employer_contribution: null,
  employer_contribution: null,
  employer_contribution_pct: null,
  employer_rate: null,
  employer_rate_max: null,
  employer_rate_minimum: null,
  employer_rate_type: null,
  employer_rate_variable1: null,
  employer_rate_variable2: null,
  employer_rate_variable3: null,
  employer_round_precision: null,
  employer_round_type: null,
  enrolled_count_from: null,
  enrolled_count_thru: null,
  enrolled_count_type: null,
  enrolled_duration_from: null,
  enrolled_duration_min: null,
  enrolled_duration_option: null,
  enrolled_duration_thru: null,
  enrolled_duration_type: null,
  entry_date: null,
  entry_user: null,
  group_division_offering: null,
  group_id: null,
  member_seq: null,
  network_id: null,
  network_type: null,
  new_hire_age: null,
  override_enrolled_dates: null,
  parent_prem_rate_key: null,
  payment_method: null,
  plan_id: null,
  plan_type: null,
  prem_rate_basis: null,
  prem_rate_category: null,
  prem_rate_id: null,
  prem_rate_type: null,
  premium_proration: null,
  rate: null,
  rate_max: null,
  rate_minimum: null,
  rate_pace: null,
  rate_pace_type: null,
  rate_round_precision: null,
  rate_round_type: null,
  rate_type: null,
  rate_variable1: null,
  rate_variable2: null,
  rate_variable3: null,
  region_code: null,
  relationship: null,
  sex: null,
  smoker: null,
  state: null,
  subscriber_id: null,
  term_date: null,
  term_date_type: null,
  tier: null,
  update_date: null,
  update_user: null,
  zip_code_from: null,
  zip_code_thru: null
)
```

