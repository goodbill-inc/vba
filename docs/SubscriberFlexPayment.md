# Vba::SubscriberFlexPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_flex_payment_key** | **Integer** | Unique identifier for each payment record on this flex account. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calendar_year** | **String** | References SubscriberFlex.Calendar_Year value on the parent record. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** | References SubscriberFlex.Group_ID value on the parent record. | [optional] |
| **payment_amount** | **Float** | Amount of the associated payment. | [optional] |
| **payment_date** | **Time** | Date when the payment was processed. | [optional] |
| **payment_description** | **String** | A description area used to provider more detail about the payment. | [optional] |
| **payment_id** | **String** | Unique identifier assigned to the associated payment. | [optional] |
| **payment_source** | **String** | Indicates the source of funds for this payment. GROUP - Employer Contribution or SUBSCRIBER - Employee Payment | [optional] |
| **plan_id** | **String** | References SubscriberFlex.Plan_ID value on the parent record. | [optional] |
| **subscriber_id** | **String** | References SubscriberFlex.Subscriber_ID value on the parent record. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberFlexPayment.new(
  subscriber_flex_payment_key: null,
  calendar_year: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  payment_amount: null,
  payment_date: null,
  payment_description: null,
  payment_id: null,
  payment_source: null,
  plan_id: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

