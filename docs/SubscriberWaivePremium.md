# Vba::SubscriberWaivePremium

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_waive_premium_key** | **Integer** | Unique identifier for this waived preimum. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_code** | **String** | References BenefitCodes.Benefit_Code value on parent record. | [optional] |
| **effective_date** | **Time** | Date when the waiver becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Specifies the Ex Code that is to be applied with the waiver. | [optional] |
| **plan_id** | **String** | References Plans.Plan_ID value on parent record. | [optional] |
| **subscriber_id** | **String** | References Subscribers.Subscriber_ID value on the parent record. |  |
| **term_date** | **Time** | Date when the waiver expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberWaivePremium.new(
  subscriber_waive_premium_key: null,
  benefit_code: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  plan_id: null,
  subscriber_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

