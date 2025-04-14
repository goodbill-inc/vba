# Vba::CopyGroupDivision

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The owning Group |  |
| **source_division_id** | **String** | The division from which values will be copied. |  |
| **destination_group_id** | **String** | The Destination Group ID |  |
| **destination_division_id** | **String** | Name of the new divion |  |
| **copy_contracts** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_plans** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_riders** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_additional** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_class_options** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_commissions** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_disability_options** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_networks_tiers** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_plan_years** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_premiums** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_self_admin** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_student_age** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_volume_details** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |
| **copy_id_codes** | **String** | Flag indicating to copy this field or not. Default is false. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CopyGroupDivision.new(
  group_id: null,
  source_division_id: null,
  destination_group_id: null,
  destination_division_id: null,
  copy_contracts: null,
  copy_plans: null,
  copy_riders: null,
  copy_additional: null,
  copy_class_options: null,
  copy_commissions: null,
  copy_disability_options: null,
  copy_networks_tiers: null,
  copy_plan_years: null,
  copy_premiums: null,
  copy_self_admin: null,
  copy_student_age: null,
  copy_volume_details: null,
  copy_id_codes: null
)
```

