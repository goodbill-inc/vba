# Vba::GroupBillCyclePaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_bill_cycle_payment_method_key** | **Integer** | Unique identifier for the Group Billing Cycle Payment Method Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **billing_cycle_id** | **String** | Unique identifier for the Billing Cycle | [optional] |
| **division_id** | **String** | Unique ID for the Division | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** | Unique ID for the Group | [optional] |
| **payment_method** | **String** | The primary key of the payment method | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupBillCyclePaymentMethod.new(
  group_bill_cycle_payment_method_key: null,
  billing_cycle_id: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  payment_method: null,
  update_date: null,
  update_user: null
)
```

