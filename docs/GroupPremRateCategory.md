# Vba::GroupPremRateCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References Groups.Group_ID value on the parent record. |  |
| **report_definition_key** | **Integer** | References ReportDefinition.ReportDefinition_Key on the referenced record. This is the report (of Report_Category \&quot;INV\&quot;) that will have a dynamic sequence of premrate categories. |  |
| **prem_rate_category** | **String** | References PremRateCategory.PremRate_Category on the referenced record. This si the category that will be sequenced on a \&quot;INV\&quot; report. |  |
| **sequence** | **Integer** | The suquence of this Category on the \&quot;INV\&quot; report. |  |

## Example

```ruby
require 'vba'

instance = Vba::GroupPremRateCategory.new(
  group_id: null,
  report_definition_key: null,
  prem_rate_category: null,
  sequence: null
)
```

