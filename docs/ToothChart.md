# Vba::ToothChart

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tooth_number** | **Integer** | Number indicating which tooth is specified |  |
| **chart_type** | **String** | Identifier for the type of chart, including Universal, Palmer or FDI two_Gigit Notation |  |
| **chart_value** | **String** | Number of the specific tooth in the selected type of tooth chart |  |

## Example

```ruby
require 'vba'

instance = Vba::ToothChart.new(
  tooth_number: null,
  chart_type: null,
  chart_value: null
)
```

