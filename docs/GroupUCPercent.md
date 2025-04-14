# Vba::GroupUCPercent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_uc_percent_key** | **Integer** | Unique identifier for each UC Percent configuration for this Group. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_type** | **String** | Claim type that the UC percent settings will be applied to. |  |
| **custom_percent** | **Float** | Identifies the custom percentage that will be applied by the UC percent settings. | [optional] |
| **custom_percent_claim_type** | **String** | When using a custom percent, this applies a claim type restriction to the rule limiting which claim types can have UC applied. | [optional] |
| **effective_date** | **Time** | Date when the UC percent settings become/became effective. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **fee_sched** | **String** | When a fee schedule is used as the rate structure than the UC tables. | [optional] |
| **group_id** | **String** | References the Groups.Group_ID value on the parent record. |  |
| **term_date** | **Time** | Date when the UC percent settings expire/expired. | [optional] |
| **u_c_percent** | **String** | Allows the User to select a default percentage that will be applied by the UC percent settings. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_custom_percent** | **Boolean** | Allows the User to build a custom percentage for the UC percent settings instead of using one of the default percentages. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::GroupUCPercent.new(
  group_uc_percent_key: null,
  claim_type: null,
  custom_percent: null,
  custom_percent_claim_type: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  fee_sched: null,
  group_id: null,
  term_date: null,
  u_c_percent: null,
  update_date: null,
  update_user: null,
  use_custom_percent: null
)
```

