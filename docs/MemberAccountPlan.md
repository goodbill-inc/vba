# Vba::MemberAccountPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_account_key** | **Integer** | Unique identifier for each Plan and Account combination for this Member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **plan_id** | **String** | References the SubenrollmentPlan.Plan_ID value for this members enrollment. |  |
| **benefit_amount** | **Float** | Total Benefit amount associated with the Member&#39;s plan. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberAccountPlan.new(
  member_account_key: null,
  plan_id: null,
  benefit_amount: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

