# Vba::ContactEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_email_key** | **Integer** |  |  |
| **contact_key** | **Integer** |  |  |
| **email_address** | **String** |  | [optional] |
| **email_type** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ContactEmail.new(
  contact_email_key: null,
  contact_key: null,
  email_address: null,
  email_type: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

