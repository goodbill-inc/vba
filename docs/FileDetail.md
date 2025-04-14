# Vba::FileDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL where the file can be downloaded. | [optional] |
| **sha512** | **String** | A SHA-512 hash for verifying the integrity of this specific file. | [optional] |
| **size** | **Integer** | The size of the file in bytes. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FileDetail.new(
  url: null,
  sha512: null,
  size: null
)
```

