# Vba::CommissionActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_activity_key** | **Integer** | Unique identifier for the CommissionActivity table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **end_date** | **Time** | Date the activity was completed | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **machine_id** | **String** | Unique identifier for the Machine | [optional] |
| **start_date** | **Time** | Date the activity began | [optional] |
| **undo_date** | **Time** | Date activity was undone | [optional] |
| **undo_user** | **String** | User who undid the activity | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **user_id** | **String** | Unique identifier for the User | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionActivity.new(
  commission_activity_key: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  machine_id: null,
  start_date: null,
  undo_date: null,
  undo_user: null,
  update_date: null,
  update_user: null,
  user_id: null
)
```

