# Vba::PaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** | The primary key of the payment method |  |
| **description** | **String** | The description of the payment method | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **payment_method_ach** | **Boolean** | Flag identifying the Payment Method as an ACH transaction Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **payment_method_check** | **Boolean** | Flag identifying the Payment Method as a check Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PaymentMethod.new(
  payment_method: null,
  description: null,
  entry_date: null,
  entry_user: null,
  payment_method_ach: null,
  payment_method_check: null,
  update_date: null,
  update_user: null
)
```

