# Vba::SubscriberForfeitureStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Subscribers.Subscriber_ID value on the parent record. |  |
| **plan_id** | **String** | Unique identifier assigned to the plan. |  |
| **benefit_code** | **String** | Benefit Code associated with the forfeiture. |  |
| **policy_number** | **String** | Policy number of the policy being forfeited. |  |
| **forfeiture_status** | **String** | Identifies the status of the policy forfeiture. |  |
| **effective_date** | **Time** | Date when the forfeiture becomes/became effective. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **term_date** | **Time** | Date when the forfeiture expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberForfeitureStatus.new(
  subscriber_id: null,
  plan_id: null,
  benefit_code: null,
  policy_number: null,
  forfeiture_status: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

