# Vba::VBAProcessParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vba_process_parameter_key** | **Integer** | Unique Identifier for the VBAProcessParameter table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **end_date** | **Time** | Date and time the process ended. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **parameter_name** | **String** | Name of the parameter passed. |  |
| **parameter_type** | **String** | Type of the parameter passed. |  |
| **parameter_value1** | **String** | A value passed to the process. | [optional] |
| **parameter_value10** | **String** | A value passed to the process. | [optional] |
| **parameter_value11** | **String** | A value passed to the process. | [optional] |
| **parameter_value12** | **String** | A value passed to the process. | [optional] |
| **parameter_value2** | **String** | A value passed to the process. | [optional] |
| **parameter_value3** | **String** | A value passed to the process. | [optional] |
| **parameter_value4** | **String** | A value passed to the process. | [optional] |
| **parameter_value5** | **String** | A value passed to the process. | [optional] |
| **parameter_value6** | **String** | A value passed to the process. | [optional] |
| **parameter_value7** | **String** | A value passed to the process. | [optional] |
| **parameter_value8** | **String** | A value passed to the process. | [optional] |
| **parameter_value9** | **String** | A value passed to the process. | [optional] |
| **process_automation** | **Boolean** | Flag is set by Process Automation to show it has been processed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **start_date** | **Time** | Date and time the process started. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **vba_process_key** | **Integer** | Unique Identifier for the VBAProcess table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_process_type** | **String** | Type used to determine the process that triggers. |  |
| **parameter_value13** | **String** | A value passed to the process. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAProcessParameter.new(
  vba_process_parameter_key: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  parameter_name: null,
  parameter_type: null,
  parameter_value1: null,
  parameter_value10: null,
  parameter_value11: null,
  parameter_value12: null,
  parameter_value2: null,
  parameter_value3: null,
  parameter_value4: null,
  parameter_value5: null,
  parameter_value6: null,
  parameter_value7: null,
  parameter_value8: null,
  parameter_value9: null,
  process_automation: null,
  start_date: null,
  update_date: null,
  update_user: null,
  vba_process_key: null,
  vba_process_type: null,
  parameter_value13: null
)
```

