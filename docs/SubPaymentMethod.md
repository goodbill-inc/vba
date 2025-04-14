# Vba::SubPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sub_payment_method_key** | **Integer** | The primary key and identifier of the record Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ac_h_pull_day** | **Integer** | Day of the month the ACH payment will be taken from the account | [optional] |
| **benefit_code** | **String** | References the benefit code associated with the payment method | [optional] |
| **effective_date** | **Time** | The effective date of the payment method Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **payment_method** | **String** | The payment method associated with the subscriber, plan, benefit code combination |  |
| **plan_id** | **String** | References the plan associated with the payment method | [optional] |
| **subscriber_id** | **String** | References the subscriber associated with the payment method |  |
| **term_date** | **Time** | The termination date of the payment method | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubPaymentMethod.new(
  sub_payment_method_key: null,
  ac_h_pull_day: null,
  benefit_code: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  payment_method: null,
  plan_id: null,
  subscriber_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

