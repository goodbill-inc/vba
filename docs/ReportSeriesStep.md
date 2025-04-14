# Vba::ReportSeriesStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_series_step_key** | **Integer** | ID of the report series step. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **e_mail_body** | **String** | Body text of the email. | [optional] |
| **e_mail_from** | **String** | Identifies the sender email. | [optional] |
| **e_mail_server** | **String** | Indicates the server over which the email will be sent. | [optional] |
| **e_mail_subject** | **String** | Subject line of the email. | [optional] |
| **e_mail_to** | **String** | Indentifies the receiver email. | [optional] |
| **end_date** | **Time** | Indicates the date when the event will stop occurring. | [optional] |
| **end_option** | **Integer** | Indicates how the event will end. | [optional] |
| **end_time** | **Time** | Indicates at what time the event will cease to occur on the defined date(s). | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **event_priority** | **String** | Indicates the priority of the event. | [optional] |
| **event_processor** | **String** | PowerBuilder object used to process. | [optional] |
| **event_subject** | **String** | Describes the subject of the event. | [optional] |
| **event_user_group_key** | **Integer** | Identifies the Group that will be notified by the event. | [optional] |
| **event_user_id** | **String** | Identifies the User who will be notified by the event. | [optional] |
| **frequency** | **Integer** | Month the event occurs. | [optional] |
| **frequency_factor** | **Integer** | Day the event occurs. | [optional] |
| **friday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **interval_option** | **Integer** | Interval Options are Days, Weekdays, Day in Month, Relative Day in Month, Date, or date in Month. | [optional] |
| **monday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **note_category** | **String** | Identifies which category that the note belongs to. | [optional] |
| **note_data** | **String** | Body text of the note. | [optional] |
| **note_subject** | **String** | Subject line of the note. | [optional] |
| **relative_frequency** | **Integer** | Day of the week the event occurs. | [optional] |
| **report_definition_key** | **Integer** | ID of the report definition utilized in this step. | [optional] |
| **report_series_key** | **Integer** | ID of the report series to which the step belongs. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **report_criteria_object** | **String** | Object of the Report_Criteria. | [optional] |
| **report_library** | **String** | Identifies which report library the User wishes to choose from. | [optional] |
| **report_object** | **String** | Indicates which report will be used with the automation step. | [optional] |
| **report_printer** | **String** | Indicates which method will be used to print the selected report. | [optional] |
| **report_save_location** | **String** | Folder the report is saved to. | [optional] |
| **_retry** | **Integer** | Retry of the Retry. Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided. | [optional] |
| **saturday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **schedule_interval** | **Integer** | Indicates how often the event will occur. The interval will determine which options are available for the event schedule. | [optional] |
| **start_date** | **Time** | Indicates the date when the event will begin occurring by the defined recurrence options. | [optional] |
| **start_time** | **Time** | Indicates at what time the event will occur on the defined date(s). | [optional] |
| **step_date** | **Time** | Date when the step will occur. | [optional] |
| **step_delay** | **Integer** | Identifies the number of the selected time period that the step will be delayed by. | [optional] |
| **step_delay_type** | **String** | Identifies the time period that the step will be delayed by. | [optional] |
| **step_description** | **String** | Description of the report series step. | [optional] |
| **step_key** | **Integer** | Field used to flag a record for processing by Process Automation. | [optional] |
| **step_meta_data** | **String** | Generic column to store meta data. | [optional] |
| **step_seq** | **Integer** | Identifies the sequence number assigned to the step. This number dictates which order the report series steps will occur (ascending order). Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **step_type** | **String** | Identifies the type associated with this step. | [optional] |
| **sunday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **thursday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **total_occurrences** | **Integer** | Number of occurrences that will take place before the event ends. | [optional] |
| **tuesday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **vba_gateway_document_category** | **String** | Identifies which category the document belongs to. | [optional] |
| **vba_gateway_document_field1** | **String** | Field1 of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_field2** | **String** | Field2 of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_field3** | **String** | Field3 of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_field4** | **String** | Field4 of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_field5** | **String** | Field5 of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_file** | **String** | File of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_folder** | **String** | Folder of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_id** | **String** | Name of the document. | [optional] |
| **vba_gateway_document_label** | **String** | Short description of the document. | [optional] |
| **vba_gateway_document_type** | **String** | Identifies the type associated with the document. | [optional] |
| **vba_gateway_document_value1** | **String** | Value1 of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_value2** | **String** | Value2 of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_value3** | **String** | Value3 of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_value4** | **String** | Value4 of the VBAGateway_Document. | [optional] |
| **vba_gateway_document_value5** | **String** | Value5 of the VBAGateway_Document. | [optional] |
| **vba_gateway_user_id** | **String** | ID of the Gateway User who will receive the chosen document. | [optional] |
| **wednesday** | **Boolean** | Indicates that the event should occur on this day of the week. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **fax_number** | **String** | For FAX step type, this indicates the fax number to send the fax to. | [optional] |
| **text_number** | **String** | For TEXT step type, this indicates the phone number to send the text to. | [optional] |
| **text_message** | **String** | For TEXT step type, this indicates the message to send in the text. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportSeriesStep.new(
  report_series_step_key: null,
  e_mail_body: null,
  e_mail_from: null,
  e_mail_server: null,
  e_mail_subject: null,
  e_mail_to: null,
  end_date: null,
  end_option: null,
  end_time: null,
  entry_date: null,
  entry_user: null,
  event_priority: null,
  event_processor: null,
  event_subject: null,
  event_user_group_key: null,
  event_user_id: null,
  frequency: null,
  frequency_factor: null,
  friday: null,
  interval_option: null,
  monday: null,
  note_category: null,
  note_data: null,
  note_subject: null,
  relative_frequency: null,
  report_definition_key: null,
  report_series_key: null,
  report_criteria_object: null,
  report_library: null,
  report_object: null,
  report_printer: null,
  report_save_location: null,
  _retry: null,
  saturday: null,
  schedule_interval: null,
  start_date: null,
  start_time: null,
  step_date: null,
  step_delay: null,
  step_delay_type: null,
  step_description: null,
  step_key: null,
  step_meta_data: null,
  step_seq: null,
  step_type: null,
  sunday: null,
  thursday: null,
  total_occurrences: null,
  tuesday: null,
  update_date: null,
  update_user: null,
  vba_gateway_document_category: null,
  vba_gateway_document_field1: null,
  vba_gateway_document_field2: null,
  vba_gateway_document_field3: null,
  vba_gateway_document_field4: null,
  vba_gateway_document_field5: null,
  vba_gateway_document_file: null,
  vba_gateway_document_folder: null,
  vba_gateway_document_id: null,
  vba_gateway_document_label: null,
  vba_gateway_document_type: null,
  vba_gateway_document_value1: null,
  vba_gateway_document_value2: null,
  vba_gateway_document_value3: null,
  vba_gateway_document_value4: null,
  vba_gateway_document_value5: null,
  vba_gateway_user_id: null,
  wednesday: null,
  fax_number: null,
  text_number: null,
  text_message: null
)
```

