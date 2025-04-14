# Vba::EventSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_id** | **Integer** | ID of the event schedule. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the event schedule. | [optional] |
| **end_date** | **Time** | Indicates the date when the event will stop occurring. | [optional] |
| **end_option** | **Integer** | Indicates how the event will end. | [optional] |
| **end_time** | **Time** | Indicates at what time the event will cease to occur on the defined date(s). | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **event_id** | **Integer** | ID of the event. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **frequency** | **Integer** | Month the event occurs. | [optional] |
| **frequency_factor** | **Integer** | Day the event occurs. | [optional] |
| **friday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **interval_option** | **Integer** | Interval Options are Days, Weekdays, Day in Month, Relative Day in Month, Date, or date in Month. | [optional] |
| **monday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **next_scheduled_date** | **Time** | Date when the next event occurrence will take place. | [optional] |
| **next_scheduled_time** | **Time** | Time when the next event occurrence will take place. | [optional] |
| **play_sound** | **Boolean** | Flag identifying a sound is associated with the event Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **regenerate_event** | **Boolean** | Flag specifying the event should be regenerated upon completion Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **regeneration_date_part** | **String** | Date part used to qualify the length of interval when the event will regenerate | [optional] |
| **regeneration_interval** | **Integer** | Length of interval when the event will regenerate | [optional] |
| **relative_frequency** | **Integer** | Day of the week the event occurs. | [optional] |
| **saturday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **schedule_interval** | **Integer** | Indicates how often the event will occur. The interval will determine which options are available for the event schedule. | [optional] |
| **sound_file** | **String** | Sound file to be played in association with the event | [optional] |
| **start_date** | **Time** | Indicates the date when the event will begin occurring by the defined recurrence options. | [optional] |
| **start_time** | **Time** | Indicates at what time the event will occur on the defined date(s). | [optional] |
| **sunday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **thursday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **total_occurrences** | **Integer** | Number of occurrences that will take place before the event ends. | [optional] |
| **tuesday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **wednesday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::EventSchedule.new(
  schedule_id: null,
  description: null,
  end_date: null,
  end_option: null,
  end_time: null,
  entry_date: null,
  entry_user: null,
  event_id: null,
  frequency: null,
  frequency_factor: null,
  friday: null,
  interval_option: null,
  monday: null,
  next_scheduled_date: null,
  next_scheduled_time: null,
  play_sound: null,
  regenerate_event: null,
  regeneration_date_part: null,
  regeneration_interval: null,
  relative_frequency: null,
  saturday: null,
  schedule_interval: null,
  sound_file: null,
  start_date: null,
  start_time: null,
  sunday: null,
  thursday: null,
  total_occurrences: null,
  tuesday: null,
  update_date: null,
  update_user: null,
  wednesday: null
)
```

