# Vba::PlanDisplay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_display_key** | **Integer** | Unique identifier for each Plan Display value. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **display** | **String** | Allows the User to input text that will be tied to the chosen display type and can be exported to the User&#39;s designated ID card printer. | [optional] |
| **display_type** | **String** | Allows the User to choose which type of display they would like to add text for. These display types are defined from &#39;Display Types&#39; within Plan Benefit Configuration. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **plan_id** | **String** | References the Plans.Plan_ID value in parent table. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanDisplay.new(
  plan_display_key: null,
  display: null,
  display_type: null,
  entry_date: null,
  entry_user: null,
  plan_id: null,
  update_date: null,
  update_user: null
)
```

