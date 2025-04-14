# Vba::GroupPayorAccountProviderFederal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupPayorAccount.Group_ID on the parent record. |  |
| **setting_id** | **String** | References GroupPayorAccount.Setting_ID on the parent record. |  |
| **federal_id** | **String** | If the setting is Tax ID specific, you would include that Tax ID here. |  |

## Example

```ruby
require 'vba'

instance = Vba::GroupPayorAccountProviderFederal.new(
  group_id: null,
  setting_id: null,
  federal_id: null
)
```

