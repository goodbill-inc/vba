# Vba::Tolerance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tolerance_key** | **Integer** | Unique identifier for the Tolerance entry. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | The group to which the Tolerance applies.. | [optional] |
| **payment_method** | **String** | The subscriber&#39;s Payment Method for which the Tolerance applies. | [optional] |
| **tolerance1** | **Float** | The amount that is used to determine if an invoice should be closed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Tolerance.new(
  tolerance_key: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  payment_method: null,
  tolerance1: null,
  update_date: null,
  update_user: null
)
```

