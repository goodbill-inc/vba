# Vba::Suffix

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **suffix1** | **String** | Suffix used with personal or entity names |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Suffix.new(
  suffix1: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

