# Vba::GroupPayorAccountPayTo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupPayorAccount.Group_ID on the parent record. |  |
| **setting_id** | **String** | References GroupPayorAccount.Setting_ID on the parent record. |  |
| **send_check_to** | **String** | If the setting is Pay To specific, you would include that Pay To here. |  |

## Example

```ruby
require 'vba'

instance = Vba::GroupPayorAccountPayTo.new(
  group_id: null,
  setting_id: null,
  send_check_to: null
)
```

