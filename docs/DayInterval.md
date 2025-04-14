# Vba::DayInterval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval_year** | **Integer** | Year of the date or interval used in internal date calculations |  |
| **interval_month** | **Integer** | Month of the date or interval used in internal date calculations |  |
| **interval_day** | **Integer** | Day of the date or interval used in internal date calculations |  |
| **day_from_date** | **Time** | Date and time stamp of the beginning of the specified day | [optional] |
| **day_name** | **String** | Full name of the day of the week | [optional] |
| **day_short_name** | **String** | Abbreviated name of the day of the week | [optional] |
| **day_thru_date** | **Time** | Date and time stamp of the end of the specified day | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **holiday** | **Boolean** | Bit indicating if the specified day falls on recognized holiday |  |
| **month_from_date** | **Time** | First day of the month containing the date specified | [optional] |
| **month_thru_date** | **Time** | Last day of the month containing the date specified | [optional] |
| **quarter** | **Integer** | Number indicating the quarter containing the date specified | [optional] |
| **quarter_from_date** | **Time** | First day of the quarter containing the date specified | [optional] |
| **quarter_thru_date** | **Time** | Last day of the quarter containing the date specified | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **week_day** | **Integer** | Number of the day of the week where Sunday is 1 | [optional] |
| **weekend** | **Boolean** | Bit indicating if the specified day falls on the weekend | [optional] |
| **year_month_day_seq** | **Integer** | Sequence number used for simple date comparisons | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DayInterval.new(
  interval_year: null,
  interval_month: null,
  interval_day: null,
  day_from_date: null,
  day_name: null,
  day_short_name: null,
  day_thru_date: null,
  entry_date: null,
  entry_user: null,
  holiday: null,
  month_from_date: null,
  month_thru_date: null,
  quarter: null,
  quarter_from_date: null,
  quarter_thru_date: null,
  update_date: null,
  update_user: null,
  week_day: null,
  weekend: null,
  year_month_day_seq: null
)
```

