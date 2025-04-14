# Vba::GroupPayorAccountPlanType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupPayorAccount.Group_ID on the parent record. |  |
| **setting_id** | **String** | References GroupPayorAccount.Setting_ID on the parent record. |  |
| **plan_type** | **String** | If the setting is Plan Type specific, you would include that Plan Type here. |  |

## Example

```ruby
require 'vba'

instance = Vba::GroupPayorAccountPlanType.new(
  group_id: null,
  setting_id: null,
  plan_type: null
)
```

