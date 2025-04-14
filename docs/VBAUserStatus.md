# Vba::VBAUserStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reminders** | [**Array&lt;Event&gt;**](Event.md) | Gets or sets the list of reminders for the user. | [optional] |
| **login_status** | **Integer** | Gets or sets the current login status of the user.    1: LoggedIn  2: LoggedOut  3: Kicked | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAUserStatus.new(
  reminders: null,
  login_status: null
)
```

