# Vba::SecurityGroupDivisionUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_group_division_user_key** | **Integer** | Key of the SecurityGroupDivisionUser record |  |
| **division_id** | **String** | No longer in use | [optional] |
| **excluded** | **Boolean** | Selecting this option means that the User will have access to every group EXCEPT the selected Group. |  |
| **group_id** | **String** | Identifier of the Group that the restriction is being configured for. |  |
| **user_id** | **String** | ID of the User whom the restriction is being configured for. |  |

## Example

```ruby
require 'vba'

instance = Vba::SecurityGroupDivisionUser.new(
  security_group_division_user_key: null,
  division_id: null,
  excluded: null,
  group_id: null,
  user_id: null
)
```

