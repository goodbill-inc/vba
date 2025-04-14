# Vba::GroupFlexSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_flex_schedule_key** | **Integer** | The unique identifier for the flex schedule. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calendar_year** | **String** | References GroupFlex.Calendar_Year value on the parent record. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** | References GroupFlex.Group_ID value on the parent record. |  |
| **plan_id** | **String** | References GroupFlex.Plan_ID value on the parent record. |  |
| **schedule_date** | **Time** | The scheduled date of the flex payment. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **schedule_type** | **String** | The type of schedule to apply for payments. If this value is CUSTOM, the user defines the value by hand for \&quot;Schedule_Date\&quot;. For all other types the \&quot;Schedule_Date\&quot; is calculated and populated. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupFlexSchedule.new(
  group_flex_schedule_key: null,
  calendar_year: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  plan_id: null,
  schedule_date: null,
  schedule_type: null,
  update_date: null,
  update_user: null
)
```

