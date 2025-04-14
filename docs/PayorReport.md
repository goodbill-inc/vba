# Vba::PayorReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  |  |
| **report_definition_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **report_type** | **String** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PayorReport.new(
  payor_id: null,
  report_definition_key: null,
  entry_date: null,
  entry_user: null,
  report_type: null,
  update_date: null,
  update_user: null
)
```

