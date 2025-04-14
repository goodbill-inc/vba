# Vba::PlanCoordination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_coordination_key** | **Integer** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **criteria_key** | **Integer** |  | [optional] |
| **destination_ex_code** | **String** |  | [optional] |
| **destination_plan_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **eff_date_type** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** |  | [optional] |
| **include_cob** | **Boolean** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **originating_plan_id** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanCoordination.new(
  plan_coordination_key: null,
  criteria_key: null,
  destination_ex_code: null,
  destination_plan_id: null,
  division_id: null,
  eff_date_type: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  include_cob: null,
  originating_plan_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

