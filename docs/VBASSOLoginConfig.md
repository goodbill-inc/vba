# Vba::VBASSOLoginConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the SSO connection client. | [optional] |
| **description** | **String** | Description of this SSO connection. | [optional] |
| **login_url** | **String** | The URL used to login to the client&#39;s SSO instance | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBASSOLoginConfig.new(
  name: null,
  description: null,
  login_url: null
)
```

