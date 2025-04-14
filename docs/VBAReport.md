# Vba::VBAReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_definition_key** | **Integer** | Unique identifier for the report definition. | [optional] |
| **report_id** | **String** | ID of the report, often used as a unique string identifier. | [optional] |
| **report_name** | **String** | Name of the report. | [optional] |
| **report_category** | **String** | Category under which the report falls. | [optional] |
| **report_description** | **String** | Description of the report and its purpose. | [optional] |
| **embed_url** | **String** | URL for embedding the report in other applications. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAReport.new(
  report_definition_key: null,
  report_id: null,
  report_name: null,
  report_category: null,
  report_description: null,
  embed_url: null
)
```

