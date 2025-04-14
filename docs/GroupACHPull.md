# Vba::GroupACHPull

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References the Groups.Group_ID value on the parent record. |  |
| **ac_h_pull_day** | **Integer** | Day the ACH transaction occurs Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupACHPull.new(
  group_id: null,
  ac_h_pull_day: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

