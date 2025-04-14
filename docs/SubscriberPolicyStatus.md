# Vba::SubscriberPolicyStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Subscribers.Subscriber_ID value on the parent record. |  |
| **plan_id** | **String** | Unique identifier assigned to the plan. |  |
| **benefit_code** | **String** | Benefit code associated with the selected plan. |  |
| **policy_number** | **String** | Policy number of the associated plan. |  |
| **policy_status** | **String** | Indicates the status of the policy (active, inactive, etc.). |  |
| **effective_date** | **Time** | Date when the policy status goes/went into effect. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **term_date** | **Time** | Date when the policy status expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberPolicyStatus.new(
  subscriber_id: null,
  plan_id: null,
  benefit_code: null,
  policy_number: null,
  policy_status: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

