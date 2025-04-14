# Vba::AuthAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_action** | **String** | Specifies what action will be applied by the associated status code: Approved - full authorization amount will be approved. Denied - full authorization amount will be denied. Pended - requested authorization amount has been pended for review. Voided - authorization has been removed. Partial Approval - only a partial amount of the authorization has been approved. |  |
| **description** | **String** | Description of the authorization status tied to the associated code. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthAction.new(
  auth_action: null,
  description: null
)
```

