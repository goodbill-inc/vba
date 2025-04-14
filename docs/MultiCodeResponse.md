# Vba::MultiCodeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Array&lt;KeyValuePair&gt;**](KeyValuePair.md) | List of key/value pairs that represent the unique id for the entity operation. | [readonly] |
| **status** | **Integer** | http status of the operation (eg, 200, 201, 500) | [readonly] |
| **body** | **String** | operation message (eg, Updated, Created, Error message) | [readonly] |

## Example

```ruby
require 'vba'

instance = Vba::MultiCodeResponse.new(
  id: null,
  status: null,
  body: null
)
```

