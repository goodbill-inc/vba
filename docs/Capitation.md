# Vba::Capitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capitation_key** | **Integer** | ID for the capitation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | Account number of the Payor. | [optional] |
| **age** | **Integer** | Age of the Member who is associated with the capitation. | [optional] |
| **capitation_plan_rate_key** | **Integer** | ID of the capitation plan rate. | [optional] |
| **capitation_transaction_key** | **Integer** | ID for the capitation transaction. | [optional] |
| **capitation_amount** | **Float** | Amount of the capitation adjustment. | [optional] |
| **capitation_date** | **Time** | Date when the capitation adjustment takes place. | [optional] |
| **division_id** | **String** | ID of the Division that is associated with the capitation. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | ID of the Group that is associated with the capitation. | [optional] |
| **member_seq** | **String** | Sequential ID of the Member who is associated with the capitation. | [optional] |
| **payor_id** | **String** | ID of the Payor who is associated with the capitation. | [optional] |
| **plan_id** | **String** | ID of the plan that the capitation is associated with. | [optional] |
| **provider_id** | **String** | ID of the Provider who is associated with the capitation. | [optional] |
| **subscriber_id** | **String** | ID of the Subscriber who is associated with the capitation. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Capitation.new(
  capitation_key: null,
  account_key: null,
  age: null,
  capitation_plan_rate_key: null,
  capitation_transaction_key: null,
  capitation_amount: null,
  capitation_date: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  member_seq: null,
  payor_id: null,
  plan_id: null,
  provider_id: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

