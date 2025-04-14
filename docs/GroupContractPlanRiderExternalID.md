# Vba::GroupContractPlanRiderExternalID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupContractPlanRider.Group_ID value on the parent record. |  |
| **division_id** | **String** | References GroupContractPlanRider.Division_ID value on the parent record. |  |
| **coverage_start** | **Time** | References GroupContractPlanRider.Coverage_Start value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **plan_id** | **String** | References GroupContractPlanRider.Plan_ID value on the parent record. |  |
| **benefit_code** | **String** | References GroupContractPlanRider.Benefit_Code value on the parent record. |  |
| **external_id** | **String** | The external ID used for custom tax reporting integrations. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupContractPlanRiderExternalID.new(
  group_id: null,
  division_id: null,
  coverage_start: null,
  plan_id: null,
  benefit_code: null,
  external_id: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

