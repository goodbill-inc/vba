# Vba::GroupPayorAccountNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupPayorAccount.Group_ID on the parent record. |  |
| **setting_id** | **String** | References GroupPayorAccount.Setting_ID on the parent record. |  |
| **network_id** | **String** | If the setting is Network ID specific, you would include that Network ID here. |  |

## Example

```ruby
require 'vba'

instance = Vba::GroupPayorAccountNetwork.new(
  group_id: null,
  setting_id: null,
  network_id: null
)
```

