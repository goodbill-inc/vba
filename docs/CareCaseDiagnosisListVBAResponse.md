# Vba::CareCaseDiagnosisListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;CareCaseDiagnosis&gt;**](CareCaseDiagnosis.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseDiagnosisListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

