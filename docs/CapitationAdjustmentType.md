# Vba::CapitationAdjustmentType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capitation_adjustment_type** | **String** | Name for the &#39;Capitation Adjustment Type&#39;. |  |
| **description** | **String** | Description of the &#39;Capitation Adjustment Type&#39;. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CapitationAdjustmentType.new(
  capitation_adjustment_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

