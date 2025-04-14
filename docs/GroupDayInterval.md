# Vba::GroupDayInterval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The Group this Day Interval belongs to |  |
| **interval_year** | **Integer** | Which Year this Group Day Interval is Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **interval_month** | **Integer** | Which Month this Group Day Interval is Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **interval_day** | **Integer** | Which Day this Group Day Interval is Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **payday** | **Boolean** | Whether or not the date this record belongs to is a Payday or not Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupDayInterval.new(
  group_id: null,
  interval_year: null,
  interval_month: null,
  interval_day: null,
  entry_date: null,
  entry_user: null,
  payday: null,
  update_date: null,
  update_user: null
)
```

