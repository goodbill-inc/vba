# Vba::GroupContractTier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupContract.Group_ID value on the parent record. |  |
| **division_id** | **String** | References GroupContract.Division_ID value on the parent record. |  |
| **coverage_start** | **Time** | References GroupContract.Coverage_Start value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **tier** | **String** | The tier being offered during this contract. References Tiers.Tier value in referenced table. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupContractTier.new(
  group_id: null,
  division_id: null,
  coverage_start: null,
  tier: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

