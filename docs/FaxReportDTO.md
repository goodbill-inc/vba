# Vba::FaxReportDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_activity_id** | **String** | Activity ID that spawned this | [optional] |
| **_when** | **Time** |  | [optional] |
| **on_success** | [**CallbackDTO**](CallbackDTO.md) |  | [optional] |
| **on_failure** | [**CallbackDTO**](CallbackDTO.md) |  | [optional] |
| **report_id** | **String** | ID of the Report | [optional] |
| **export_type** | **String** | Export Type. Valid values are: Excel, Html, Pdf, Word, PPT, CSV | [optional] |
| **filename** | **String** | Filename of the report. | [optional] |
| **report_parameters** | **Hash&lt;String, String&gt;** | A json object of report parameters  Required if a report requires them. | [optional] |
| **fax_number** | **String** | Fax destination | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FaxReportDTO.new(
  parent_activity_id: null,
  _when: null,
  on_success: null,
  on_failure: null,
  report_id: null,
  export_type: null,
  filename: null,
  report_parameters: null,
  fax_number: null
)
```

