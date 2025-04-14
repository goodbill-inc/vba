# Vba::MemEnrollmentRider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References the MemenrollmentPlan.Subscriber_ID value in parent table. |  |
| **member_seq** | **String** | References the MemenrollmentPlan.Member_Seq value in parent table. |  |
| **group_id** | **String** | References the MemenrollmentPlan.Group_ID value in parent table. |  |
| **division_id** | **String** | References the MemenrollmentPlan.Division_ID value in parent table. |  |
| **group_coverage_start** | **Time** | References the MemenrollmentPlan.Group_Coverage_Start value in parent table. |  |
| **sub_start_date** | **Time** | References the MemenrollmentPlan.Sub_Start_Date value in parent table. |  |
| **plan_id** | **String** | References the MemenrollmentPlan.Plan_ID value in parent table. |  |
| **plan_start** | **Time** | References the MemenrollmentPlan.Plan_Start value in parent table. |  |
| **benefit_code** | **String** | References the BenefitCodes.Benefit_Code value that is flagged as a Rider on this Plan and indicates the optional coverage this member has enrolled in. |  |
| **from_date** | **Time** | Start date of Rider coverage. |  |
| **employee_contribution** | **Float** | Indicates the Employee Contribution amount that is used during Diability processing to properly take tax amounts. | [optional] |
| **employee_contribution_pct** | **Boolean** | Indicates if the Emploee Contribution amount entered is a Pct or flat amount.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **external_id** | **String** | Custom value used for Ceridican tax processing interface. | [optional] |
| **lt_c_daily_benefit_amount** | **Float** | Member elected Daily Benefit Amount | [optional] |
| **lt_c_lifetime_max_amount** | **Float** | Lifetime Max Amount elected | [optional] |
| **lt_c_lifetime_max_days** | **Integer** | Lifetime Max Days elected | [optional] |
| **lt_c_lifetime_max_years** | **Integer** | Lifetime Max Years elected | [optional] |
| **lt_c_monthly_benefit_amount** | **Float** | Member elected Monthly Benefit Amount | [optional] |
| **thru_date** | **Time** | End date of Rider coverage. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **volume** | **Float** | The Member&#39;s &#39;Volume&#39; within the selected Rider benefit on the enrollment. The Member Enrollment &#39;Volume&#39; has no impact on invoicing. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemEnrollmentRider.new(
  subscriber_id: null,
  member_seq: null,
  group_id: null,
  division_id: null,
  group_coverage_start: null,
  sub_start_date: null,
  plan_id: null,
  plan_start: null,
  benefit_code: null,
  from_date: null,
  employee_contribution: null,
  employee_contribution_pct: null,
  entry_date: null,
  entry_user: null,
  external_id: null,
  lt_c_daily_benefit_amount: null,
  lt_c_lifetime_max_amount: null,
  lt_c_lifetime_max_days: null,
  lt_c_lifetime_max_years: null,
  lt_c_monthly_benefit_amount: null,
  thru_date: null,
  update_date: null,
  update_user: null,
  volume: null
)
```

