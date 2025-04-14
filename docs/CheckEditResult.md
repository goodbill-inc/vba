# Vba::CheckEditResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unique_key** | **Integer** | Sequenced Unique Key for the Edit being performent. |  |
| **check_edit_object** | **String** | Object used by the check edit to process. | [optional] |
| **description** | **String** | Description of the check edit. | [optional] |
| **display** | **String** | Name for the check edit. | [optional] |
| **result** | **Integer** | The result of the Check Edit being performed. 0 is Success.  If -1 then error has occurred, look at Result_Message.  If &gt; 0, then edit has found a problem that needs user review. | [optional] |
| **result_message** | **String** | If there is an error in Result (-1), then this will hold the Result error message. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CheckEditResult.new(
  unique_key: null,
  check_edit_object: null,
  description: null,
  display: null,
  result: null,
  result_message: null
)
```

