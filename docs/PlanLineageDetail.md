# Vba::PlanLineageDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_lineage_detail_key** | **Integer** | Unique identifier for each Plan Lineage detail record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **plan_id** | **String** | Referneces the Plans.Plan_ID table and is the Plan ranked inside this plan lineage. |  |
| **plan_lineage_id** | **String** | References the PlanLineage.Plan_Lineage_ID value in the parent table. |  |
| **plan_rank** | **Integer** | A required rank value that ranks each plan within this Plan_Lineage_ID. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanLineageDetail.new(
  plan_lineage_detail_key: null,
  entry_date: null,
  entry_user: null,
  plan_id: null,
  plan_lineage_id: null,
  plan_rank: null,
  update_date: null,
  update_user: null
)
```

