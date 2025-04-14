# Vba::VBAAppInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The current version of the application. | [optional] |
| **files** | [**Array&lt;FileDetail&gt;**](FileDetail.md) | A list of file details related to the release, such as installation files or updates. | [optional] |
| **path** | **String** | The path where the application files are located. | [optional] |
| **sha512** | **String** | A SHA-512 hash for verifying the integrity of the main application file. | [optional] |
| **release_notes** | **String** | Notes about changes, enhancements, or fixes in this release. | [optional] |
| **release_date** | **Time** | The date when the release was made available. | [optional] |
| **release_message** | **String** | A user-friendly message or announcement associated with the release. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAAppInfo.new(
  version: null,
  files: null,
  path: null,
  sha512: null,
  release_notes: null,
  release_date: null,
  release_message: null
)
```

