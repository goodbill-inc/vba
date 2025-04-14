# Vba::ReportQueueDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_queue_detail_key** | **Integer** | ID of the report queue detail. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **queue_export_file_name** | **String** | File Name of the file to export. | [optional] |
| **queue_export_type** | **String** | Type of Export of the Queue. | [optional] |
| **queue_file** | **String** | Used to store a file used by the Queue. | [optional] |
| **queue_result** | **String** | Result code used when Queue completes. | [optional] |
| **queue_result_date** | **Time** | Date the Result was updated. | [optional] |
| **queue_xml** | **String** | Used to store XML used by the Queue. | [optional] |
| **report_definition_key** | **Integer** | ID of the report definition. | [optional] |
| **report_queue_key** | **Integer** | ID of the report queue. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **report_library** | **String** | Identifies which report library the User wishes to choose from. | [optional] |
| **report_object** | **String** | Indicates which report will be used with the automation step. | [optional] |
| **report_save_location** | **String** | Utilize the file explorer to choose a location where the report will be saved. | [optional] |
| **report_save_type** | **String** | File type used to save. | [optional] |
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

## Example

```ruby
require 'vba'

instance = Vba::ReportQueueDetail.new(
  report_queue_detail_key: null,
  entry_date: null,
  entry_user: null,
  queue_export_file_name: null,
  queue_export_type: null,
  queue_file: null,
  queue_result: null,
  queue_result_date: null,
  queue_xml: null,
  report_definition_key: null,
  report_queue_key: null,
  report_library: null,
  report_object: null,
  report_save_location: null,
  report_save_type: null,
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
  vba_gateway_user_id: null
)
```

