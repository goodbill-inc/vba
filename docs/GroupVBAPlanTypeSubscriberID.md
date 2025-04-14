# Vba::GroupVBAPlanTypeSubscriberID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_vba_plan_type_subscriber_id_key** | **Integer** | Unique identifier for each Plan Type Sub ID configuration. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** | References the Groups.Group_ID value on the parent record. |  |
| **i_d_prefix** | **String** | The prefix to be applied to custom VBA Plan Type IDs. | [optional] |
| **i_d_suffix** | **String** | The suffix to be applied to custom VBA Plan Type IDs. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **vb_a_plan_type** | **String** | The VBA Plan Type (Medical, Dental, Vision) to have this ID Prefix/Suffiix applied when generating custom IDs. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupVBAPlanTypeSubscriberID.new(
  group_vba_plan_type_subscriber_id_key: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  i_d_prefix: null,
  i_d_suffix: null,
  update_date: null,
  update_user: null,
  vb_a_plan_type: null
)
```

