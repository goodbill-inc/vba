# Vba::Tooth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tooth_number** | **Integer** | Number indicating which tooth is specified |  |
| **description** | **String** | Description of the specific tooth | [optional] |
| **quadrant** | **String** | Quadrant of the mouth where the tooth is located | [optional] |
| **tooth_id** | **Integer** | ID indicating which tooth is specified on the tooth chart |  |
| **tooth_type** | **String** | Value indicating what type of tooth is specified |  |

## Example

```ruby
require 'vba'

instance = Vba::Tooth.new(
  tooth_number: null,
  description: null,
  quadrant: null,
  tooth_id: null,
  tooth_type: null
)
```

