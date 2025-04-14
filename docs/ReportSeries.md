# Vba::ReportSeries

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_series_key** | **Integer** | ID of the report series. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **series_date** | **Time** | Date when the automation will begin/began. | [optional] |
| **series_description** | **String** | Description of the report series. | [optional] |
| **series_status** | **String** | Identifies the current status of the report series. | [optional] |
| **series_type** | **String** | Identifies the automation type for the report series. | [optional] |
| **series_user** | **String** | User ID of the person either initiating or running the report series | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportSeries.new(
  report_series_key: null,
  entry_date: null,
  entry_user: null,
  series_date: null,
  series_description: null,
  series_status: null,
  series_type: null,
  series_user: null,
  update_date: null,
  update_user: null
)
```

