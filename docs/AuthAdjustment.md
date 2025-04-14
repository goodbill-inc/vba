# Vba::AuthAdjustment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_number** | **String** | Unique identifier assigned to the authorization. |  |
| **approved_from** | **Time** | The new date when the authorization approval starts/started. | [optional] |
| **approved_thru** | **Time** | The new date when the authorization approval expires/expired | [optional] |
| **recalc_ibnr** | **Boolean** | Indicates if the IBNR should be recalculated after the Auth Adjustment |  |
| **copy_proc_codes** | **Boolean** | Indicates if the ProcCodes should be copied after Auth Adjustment |  |
| **copy_diag_codes** | **Boolean** | Indicates if the DiagCodes should be copied after Auth Adjustment |  |
| **procedure_code** | **String** | When CopyProcCodes is NOT used, you can pass a single Procedure Code here to populate the adjusted auth with a default Procedure Code value. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthAdjustment.new(
  auth_number: null,
  approved_from: null,
  approved_thru: null,
  recalc_ibnr: null,
  copy_proc_codes: null,
  copy_diag_codes: null,
  procedure_code: null
)
```

