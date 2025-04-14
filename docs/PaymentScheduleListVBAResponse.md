# Vba::PaymentScheduleListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;PaymentSchedule&gt;**](PaymentSchedule.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PaymentScheduleListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

