# Vba::VBAClientEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **database_name** | **String** |  | [optional] |
| **sso_configs** | [**Array&lt;VBASSOLoginConfig&gt;**](VBASSOLoginConfig.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAClientEnvironment.new(
  database_name: null,
  sso_configs: null
)
```

