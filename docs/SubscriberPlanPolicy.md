# Vba::SubscriberPlanPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Subscribers.Subscriber_ID value on the parent record. |  |
| **plan_id** | **String** | Unique identifier assigned to the plan. |  |
| **benefit_code** | **String** | Benefit code associated with the selected plan. |  |
| **policy_number** | **String** | Policy number of the associated plan. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **maturity_date** | **Time** | Date when the selected policy matures. | [optional] |
| **paid_through** | **Time** | This date indicates how far out the policy has been paid up to. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberPlanPolicy.new(
  subscriber_id: null,
  plan_id: null,
  benefit_code: null,
  policy_number: null,
  entry_date: null,
  entry_user: null,
  maturity_date: null,
  paid_through: null,
  update_date: null,
  update_user: null
)
```

