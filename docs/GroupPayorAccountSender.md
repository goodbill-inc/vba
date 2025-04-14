# Vba::GroupPayorAccountSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupPayorAccount.Group_ID on the parent record. |  |
| **setting_id** | **String** | References GroupPayorAccount.Setting_ID on the parent record. |  |
| **sender_id** | **String** | If the setting is Sender ID (x12 837) specific, you would include that Sender ID here. |  |

## Example

```ruby
require 'vba'

instance = Vba::GroupPayorAccountSender.new(
  group_id: null,
  setting_id: null,
  sender_id: null
)
```

