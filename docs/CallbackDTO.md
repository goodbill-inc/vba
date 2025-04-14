# Vba::CallbackDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verb** | **String** | The HTTP Verb (eg: GET, PUT, POST, DELETE) | [optional] |
| **url** | **String** | The fully-qualified URL to call using the Verb | [optional] |
| **payload** | [**Hash&lt;String, JsonValue&gt;**](JsonValue.md) | The serialized payload to send to the URL using the Verb and Headers | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CallbackDTO.new(
  verb: null,
  url: null,
  payload: null
)
```

