# Vba::CallTrackingDiagCodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_tracking_diag_codes_key** | **Integer** | Unique identifier for each record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **call_key** | **Integer** | Unique identifier assigned to the call tracking. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **diagnostic_code** | **String** | Unique identifier assigned to the diagnosis that will be tied to the call tracking. This can be selected by right-clicking within the field and selecting &#39;Lookup&#39; from the context menu. |  |
| **diagnostic_code_type** | **String** | Identifies the ICD version that is associated with the diagnosis code. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the Diagnostic Code becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CallTrackingDiagCodes.new(
  call_tracking_diag_codes_key: null,
  call_key: null,
  diagnostic_code: null,
  diagnostic_code_type: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

