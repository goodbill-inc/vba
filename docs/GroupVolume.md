# Vba::GroupVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_volume_key** | **Integer** | Unique identifier for each Volume configuration. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_code** | **String** | When configuration is Benefit specific, fill this in. When empty, applies to entire Group/Division/Plan. | [optional] |
| **dist_volume_amount** | **Float** | Based on volume type, this settings determines the volume. | [optional] |
| **dist_volume_pct** | **Boolean** | Based on volume type, this settings determines the volume. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **division_id** | **String** | When configuration is Division specific, fill this in. When empty, applies to the entire Group. | [optional] |
| **effective_date** | **Time** | The effective date of the volume setting. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **g_i_volume_max** | **Float** | Based on volume type, this settings determines the volume. | [optional] |
| **g_i_volume_min** | **Float** | Based on volume type, this settings determines the volume. | [optional] |
| **group_id** | **String** | References Groups.Group_ID value on the parent record. |  |
| **plan_id** | **String** | When configuration is Plan specific, fill this in. When empty, applies to entire Group/Division. | [optional] |
| **term_date** | **Time** | The term date for this volume setting. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_dist_volume** | **Boolean** | Based on volume type, this settings determines the volume. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **volume** | **Float** | Based on volume type, this settings determines the volume. | [optional] |
| **volume_id** | **String** | This is a User definable field to name the volume being entered. | [optional] |
| **volume_max** | **Float** | Based on volume type, this settings determines the volume. | [optional] |
| **volume_min** | **Float** | Based on volume type, this settings determines the volume. | [optional] |
| **volume_round_precision** | **Integer** | Based on volume type, this settings determines the volume. | [optional] |
| **volume_round_type** | **String** | Based on volume type, this settings determines the volume. | [optional] |
| **volume_type** | **String** | This value indicates what setting is used to calculate volume. The fileds that reference this setting are noted and drive the specific volume type. Reference VBASoftware application documentation for detailed explanation. | [optional] |
| **volume_type_from** | **Integer** | Based on volume type, this settings determines the volume. | [optional] |
| **volume_type_pct** | **Float** | Based on volume type, this settings determines the volume. | [optional] |
| **volume_type_thru** | **Integer** | Based on volume type, this settings determines the volume. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupVolume.new(
  group_volume_key: null,
  benefit_code: null,
  dist_volume_amount: null,
  dist_volume_pct: null,
  division_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  g_i_volume_max: null,
  g_i_volume_min: null,
  group_id: null,
  plan_id: null,
  term_date: null,
  update_date: null,
  update_user: null,
  use_dist_volume: null,
  volume: null,
  volume_id: null,
  volume_max: null,
  volume_min: null,
  volume_round_precision: null,
  volume_round_type: null,
  volume_type: null,
  volume_type_from: null,
  volume_type_pct: null,
  volume_type_thru: null
)
```

