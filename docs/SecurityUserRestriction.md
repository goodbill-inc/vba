# Vba::SecurityUserRestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_user_restriction_key** | **Integer** | User Retriction Key |  |
| **restriction_all** | **Boolean** | No Longer in use |  |
| **restriction_exclude** | **Boolean** | Selecting this option means that the User will have access to every subject of the same type EXCEPT the selected subject. |  |
| **restriction_field** | **String** | Identifies the subject of the associated restriction. | [optional] |
| **restriction_value** | **String** | Subject that the restriction is being determined for. The User will ONLY have access to the selected subject - unless the ‘Exclude’ option is selected. | [optional] |
| **user_id** | **String** | ID of the User to whom the restrictions will be applied. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityUserRestriction.new(
  security_user_restriction_key: null,
  restriction_all: null,
  restriction_exclude: null,
  restriction_field: null,
  restriction_value: null,
  user_id: null
)
```

