# Vba::PlanDisplayType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_type** | **String** | Allows the User to choose which type of display they would like to add text for. These display types are defined from &#39;Display Types&#39; within Plan Benefit Configuration. |  |
| **description** | **String** | Allows the User to input text that will be tied to the chosen display type and can be exported to the User&#39;s designated ID card printer. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanDisplayType.new(
  display_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

