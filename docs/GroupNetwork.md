# Vba::GroupNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupContract.Group_ID value on the parent record. |  |
| **division_id** | **String** | References GroupContract.Division_ID value on the parent record. |  |
| **coverage_start** | **Time** | References GroupContract.Coverage_Start value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **network_id** | **String** | References Networks.Network_ID value on the parent record. |  |
| **state** | **String** | References State.State value on the parent record. |  |
| **ap_c_schedule** | **String** | Allows the User to attach an APC schedule to be applied as part of the Network. | [optional] |
| **claim_days_allowed** | **Integer** | Idenfities the allows number of claim days for claims within this Network. | [optional] |
| **dr_g_schedule** | **String** | Allows the User to attach a DRG schedule to be applied as part of the Network. | [optional] |
| **eff_date** | **Time** | Date when the Contract Network stettings become effective. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **network_type** | **String** | Identifies the type of the Network: 0 - Primary, 1 - Secondary, 2 - Wrap, 3 - Specialty. | [optional] |
| **priority** | **Integer** | Notes the priority of this network within this offering. Impacts which network is selected during network assignment during adjudication. | [optional] |
| **process_as_oon** | **Boolean** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupNetwork.new(
  group_id: null,
  division_id: null,
  coverage_start: null,
  network_id: null,
  state: null,
  ap_c_schedule: null,
  claim_days_allowed: null,
  dr_g_schedule: null,
  eff_date: null,
  entry_date: null,
  entry_user: null,
  network_type: null,
  priority: null,
  process_as_oon: null,
  update_date: null,
  update_user: null
)
```

