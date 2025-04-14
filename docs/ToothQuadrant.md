# Vba::ToothQuadrant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quadrant** | **String** | Quadrant of the mouth where the tooth is located |  |
| **description** | **String** | Description of the quadrant of the mouth | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ToothQuadrant.new(
  quadrant: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

