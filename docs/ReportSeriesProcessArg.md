# Vba::ReportSeriesProcessArg

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_series_process_key** | **Integer** | ID of the report series process to which the argument is related. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **argument_name** | **String** | Name for the report series process argument. |  |
| **argument_description** | **String** | Description of the report series process argument. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **note_column** | **Integer** | Optional field for storing any additional notes about the report series process argument | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportSeriesProcessArg.new(
  report_series_process_key: null,
  argument_name: null,
  argument_description: null,
  entry_date: null,
  entry_user: null,
  note_column: null,
  update_date: null,
  update_user: null
)
```

