# Vba::ReportTrackStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_definition_key** | **Integer** | ID of the report definition. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **tracking_status** | **String** | Name for the &#39;Tracking Status&#39;. |  |
| **description** | **String** | Description of the &#39;Tracking Status&#39;. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **status_default** | **Boolean** | Indicates that this &#39;Tracking Status&#39; will be chosen by default for new reports. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportTrackStatus.new(
  report_definition_key: null,
  tracking_status: null,
  description: null,
  entry_date: null,
  entry_user: null,
  status_default: null,
  update_date: null,
  update_user: null
)
```

