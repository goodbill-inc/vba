# Vba::PaymentScheduleVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**PaymentSchedule**](PaymentSchedule.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PaymentScheduleVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

