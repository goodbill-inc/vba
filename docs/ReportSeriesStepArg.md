# Vba::ReportSeriesStepArg

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_series_step_arg_key** | **Integer** | ID of the report series step argument.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **argument_name** | **String** | Name of the step argument. | [optional] |
| **argument_type** | **String** | Identifies the type associated with the argument. | [optional] |
| **argument_value** | **String** | The value of the argument. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **report_series_step_key** | **Integer** | ID of the report series step that the argument is associated with.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportSeriesStepArg.new(
  report_series_step_arg_key: null,
  argument_name: null,
  argument_type: null,
  argument_value: null,
  entry_date: null,
  entry_user: null,
  report_series_step_key: null,
  update_date: null,
  update_user: null
)
```

