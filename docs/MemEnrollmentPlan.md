# Vba::MemEnrollmentPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References the Subenrollment.Subscriber_ID value in the parent table. |  |
| **member_seq** | **String** | References the Members.Member_Seq for this members enrollment. |  |
| **group_id** | **String** | References the Subenrollment.Group_ID value in the parent table. |  |
| **division_id** | **String** | References the Subenrollment.Division_ID value in the parent table. |  |
| **group_coverage_start** | **Time** | References the Subenrollment.Group_Coverage_Start value in the parent table. |  |
| **sub_start_date** | **Time** | References the Subenrollment.Start_Date value in the parent table. |  |
| **plan_id** | **String** | References the GroupContractPlan.Plan_ID value indicating which Plan this member is enrolling that is being offered. |  |
| **plan_start** | **Time** | Start date of the Plan coverage. |  |
| **dollar_amount** | **Float** | The Member&#39;s &#39;Volume&#39; within the selected plan on the enrollment. The Member Enrollment &#39;Volume&#39; has no impact on invoicing. | [optional] |
| **entry_date** | **Time** | Date when the record was first added. | [optional] |
| **entry_user** | **String** | User that first added the record. | [optional] |
| **lt_c_daily_benefit_amount** | **Float** | Member elected Daily Benefit Amount | [optional] |
| **lt_c_lifetime_max_amount** | **Float** | Lifetime Max Amount elected | [optional] |
| **lt_c_lifetime_max_days** | **Integer** | Lifetime Max Days elected | [optional] |
| **lt_c_lifetime_max_years** | **Integer** | Lifetime Max Years elected | [optional] |
| **lt_c_monthly_benefit_amount** | **Float** | Member elected Monthly Benefit Amount | [optional] |
| **plan_end** | **Time** | End date of the Plan coverage. | [optional] |
| **tier** | **String** | The Member&#39;s &#39;Tier&#39; within the selected plan on the enrollment. The Member Enrollment &#39;Tier&#39; has no impact on adjudication or invoicing. | [optional] |
| **update_date** | **Time** | Date when the record was last updated. | [optional] |
| **update_user** | **String** | User that last updated the record. | [optional] |
| **use_volume_scale** | **Boolean** | Indicates if this enrollment plan record should calculate the Dollar_Amount value through the Group leve Volume settings rather than use the value stored in Dollar_Amount.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **reason_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemEnrollmentPlan.new(
  subscriber_id: null,
  member_seq: null,
  group_id: null,
  division_id: null,
  group_coverage_start: null,
  sub_start_date: null,
  plan_id: null,
  plan_start: null,
  dollar_amount: null,
  entry_date: null,
  entry_user: null,
  lt_c_daily_benefit_amount: null,
  lt_c_lifetime_max_amount: null,
  lt_c_lifetime_max_days: null,
  lt_c_lifetime_max_years: null,
  lt_c_monthly_benefit_amount: null,
  plan_end: null,
  tier: null,
  update_date: null,
  update_user: null,
  use_volume_scale: null,
  reason_id: null
)
```

