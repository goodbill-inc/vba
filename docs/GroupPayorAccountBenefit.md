# Vba::GroupPayorAccountBenefit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupPayorAccount.Group_ID on the parent record. |  |
| **setting_id** | **String** | References GroupPayorAccount.Setting_ID on the parent record. |  |
| **benefit_code** | **String** | If the setting is Benefit Code specific, you would include the Benefit Code here. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupPayorAccountBenefit.new(
  group_id: null,
  setting_id: null,
  benefit_code: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

