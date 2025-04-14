# Vba::GroupSelfAdmin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_self_admin_key** | **Integer** | Unique identifier for each Self Admin configuration. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **active** | **Boolean** | Notes if this coniguration is active for calculation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age** | **Integer** | The age for this invoice calculation. | [optional] |
| **benefit_code** | **String** | If there is Benefit level configuration, you would apply that here. If blank, this configuration applies to all benefits inside the group. | [optional] |
| **dependents** | **Integer** | The dependent count for this invoice calculation. | [optional] |
| **division_id** | **String** | If there is Division level configuration, you would apply that here. If blank, this confiruation applies to the entire group. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **group_id** | **String** | References Groups.Group_ID values on parent record. |  |
| **invoice_level** | **String** | Notes the invoice level for self-admin invoicing. Works smilar to GroupDivision setting in that it combines other self-admin confiration to the common level. | [optional] |
| **members** | **Integer** | The member count for this invoice calculation. | [optional] |
| **plan_id** | **String** | If there is Plan level configuration, you would apply that here. If blank, this configuration applies to all plans inside the group. | [optional] |
| **sex** | **String** | The gender for this invoice calculation. | [optional] |
| **subscribers** | **Integer** | The subscriber count for this invoice calculation. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |
| **use_volume_scale** | **Boolean** | Indicates if volume scale determines the volume for this invoice calculation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **volume** | **Float** | The volume for this invoice calculation. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupSelfAdmin.new(
  group_self_admin_key: null,
  active: null,
  age: null,
  benefit_code: null,
  dependents: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  invoice_level: null,
  members: null,
  plan_id: null,
  sex: null,
  subscribers: null,
  update_date: null,
  update_user: null,
  use_volume_scale: null,
  volume: null
)
```

