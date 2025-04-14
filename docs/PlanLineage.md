# Vba::PlanLineage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_lineage_id** | **String** | Unique identifier for each Plan Lineage configuration. This is used to group a set of ranked plans for Plan Lineage logic in VBASoftware and VBAGateway. |  |
| **description** | **String** | The description of this Plan Lineage configuration. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanLineage.new(
  plan_lineage_id: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

