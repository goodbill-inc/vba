# Vba::ToothAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tooth_action** | **String** | Code identifying the action taken on a tooth, including cleaning, filling, bridge, crown, extraction, prosthesis or root canal |  |
| **action_ex_code** | **String** | Ex Code that is applied when the specific action is taken | [optional] |
| **description** | **String** | Description of the action that was taken on the tooth | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ToothAction.new(
  tooth_action: null,
  action_ex_code: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

