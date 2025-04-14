# Vba::SubEnrollment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Subscribers.Subscriber_ID value on the parent record. |  |
| **group_id** | **String** | References the GroupContract.Group_ID value in the parent table. |  |
| **division_id** | **String** | References the GroupContract.Division_ID value in the parent table. |  |
| **group_coverage_start** | **Time** | References the GroupContract.Coverage_Start value in the parent table. |  |
| **start_date** | **Time** | Start date of Subenrollment coverage. |  |
| **annual_max** | **Float** | Annual maximum for identified policy. [Informational Only] | [optional] |
| **date_employed** | **Time** | Start date of the Subscriber&#39;s employment. | [optional] |
| **eligibility_date** | **Time** | Date the Subscriber was eligible for coverage. | [optional] |
| **end_date** | **Time** | End date of Subenrollment coverage. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **lifetime_max** | **Float** | Lifetime maximum for indentified policy. [Informational Only] | [optional] |
| **original_enrollment_date** | **Time** | Identifies the date the Enrollment began. This is useful if a new Group is added and insured Members have been covered under the Group Plan earlier than their start date with you. | [optional] |
| **paid_through** | **Time** | Date that the premiums have been paid through. This field will auto populate with the most recent closed invoice ‘Bill Thru’ date if &#39;Set Paid Thru&#39; is set through the Control Panel. The &#39;Paid Thru Exceeded&#39; Ex Code will be applied to Claims adjudicated with a service date beyond this date. | [optional] |
| **policy_number** | **String** | Policy number issued from Insurer. [Informational Only] | [optional] |
| **term_date** | **Time** | Termination date of the Subscriber&#39;s employment. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubEnrollment.new(
  subscriber_id: null,
  group_id: null,
  division_id: null,
  group_coverage_start: null,
  start_date: null,
  annual_max: null,
  date_employed: null,
  eligibility_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  lifetime_max: null,
  original_enrollment_date: null,
  paid_through: null,
  policy_number: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

