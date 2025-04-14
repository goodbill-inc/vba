# Vba::ReportSeriesProcess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_series_process_key** | **Integer** | ID of the report series process. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the report series process. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **note_category** | **String** | Indicates which category notes for this report series will be assigned. | [optional] |
| **p_a_stored_proc** | **String** | Name of the stored procedure that corresponds to the Report Series used in VBAReport. | [optional] |
| **trigger_description** | **String** | Description of how the report series will trigger. | [optional] |
| **trigger_option** | **String** | This flag enables an option used by Process Automation. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportSeriesProcess.new(
  report_series_process_key: null,
  description: null,
  entry_date: null,
  entry_user: null,
  note_category: null,
  p_a_stored_proc: null,
  trigger_description: null,
  trigger_option: null,
  update_date: null,
  update_user: null
)
```

