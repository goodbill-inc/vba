# Vba::CheckEdit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_edit_key** | **Integer** | ID of the check edit. |  |
| **check_edit_object** | **String** | PB object used by the check edit to process. | [optional] |
| **description** | **String** | Description of the check edit. | [optional] |
| **display** | **String** | Name for the check edit. | [optional] |
| **result_object** | **String** | PB object used by the check edit to display results. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CheckEdit.new(
  check_edit_key: null,
  check_edit_object: null,
  description: null,
  display: null,
  result_object: null
)
```

