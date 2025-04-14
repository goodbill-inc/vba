# Vba::VBAProcessLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vba_process_log_key** | **Integer** | Unique Identifier for the VBAProcessLog table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **log_message** | **String** | Message provided from the process. | [optional] |
| **log_reference_column1** | **String** | A column that the log references. | [optional] |
| **log_reference_column2** | **String** | A column that the log references. | [optional] |
| **log_reference_column3** | **String** | A column that the log references. | [optional] |
| **log_reference_column4** | **String** | A column that the log references. | [optional] |
| **log_reference_column5** | **String** | A column that the log references. | [optional] |
| **log_reference_value1** | **String** | A value that the log references. | [optional] |
| **log_reference_value2** | **String** | A value that the log references. | [optional] |
| **log_reference_value3** | **String** | A value that the log references. | [optional] |
| **log_reference_value4** | **String** | A value that the log references. | [optional] |
| **log_reference_value5** | **String** | A value that the log references. | [optional] |
| **log_result** | **String** | Result of the process. | [optional] |
| **log_type** | **String** | Type of the process. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **vba_process_key** | **Integer** | Unique Identifier for the VBAProcess table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vba_process_type** | **String** | Type used to determine the process that triggers. |  |

## Example

```ruby
require 'vba'

instance = Vba::VBAProcessLog.new(
  vba_process_log_key: null,
  entry_date: null,
  entry_user: null,
  log_message: null,
  log_reference_column1: null,
  log_reference_column2: null,
  log_reference_column3: null,
  log_reference_column4: null,
  log_reference_column5: null,
  log_reference_value1: null,
  log_reference_value2: null,
  log_reference_value3: null,
  log_reference_value4: null,
  log_reference_value5: null,
  log_result: null,
  log_type: null,
  update_date: null,
  update_user: null,
  vba_process_key: null,
  vba_process_type: null
)
```

