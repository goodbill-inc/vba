# Vba::TransposeRequestMetaDataResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_key** | **Integer** | The primary key of the request. | [optional] |
| **request_attribute** | **String** | The name of the attribute (column) from the original request table. | [optional] |
| **request_attribute_value** | **String** | The value of the attribute (column) for the given request. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::TransposeRequestMetaDataResult.new(
  request_key: null,
  request_attribute: null,
  request_attribute_value: null
)
```

