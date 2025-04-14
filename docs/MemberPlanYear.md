# Vba::MemberPlanYear

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_plan_year_key** | **Integer** | Unique identifier for each custom plany year for this member. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **plan_year** | **String** | Specifies the plan year associated with the selected Plan. |  |
| **plan_year_end** | **Time** | Date when the plan year ends/ended. |  |
| **plan_year_start** | **Time** | Date when the plan year starts/started. |  |
| **seq** | **Integer** | Sequence assigned to this Plan Year record within this configuration. |  |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **year** | **String** | The calendar year associated with this Plan Year (used in instances where the plan year is not a calendar year). |  |

## Example

```ruby
require 'vba'

instance = Vba::MemberPlanYear.new(
  member_plan_year_key: null,
  member_seq: null,
  plan_year: null,
  plan_year_end: null,
  plan_year_start: null,
  seq: null,
  subscriber_id: null,
  year: null
)
```

