# Vba::AuthDiagCodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_number** | **String** | Unique identifier assigned to the authorization. |  |
| **diagnostic_code** | **String** | Unique identifier assigned to the diagnosis that will be tied to the authorization. This can be selected by right-clicking within the field and selecting &#39;Lookup&#39; from the context menu. |  |
| **diagnostic_code_type** | **String** | Identifies the ICD version that is associated with the diagnosis code. |  |
| **disable_provider_match** | **Boolean** | Checking this box means that adjudication will not require a match on the diagnosis code when automatically assigning this auth. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **primary_diag** | **String** | Indicates that the associated diagnosis is the primary diagnosis. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **disable_diag_code_match** | **Boolean** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthDiagCodes.new(
  auth_number: null,
  diagnostic_code: null,
  diagnostic_code_type: null,
  disable_provider_match: null,
  entry_date: null,
  entry_user: null,
  primary_diag: null,
  update_date: null,
  update_user: null,
  disable_diag_code_match: null
)
```

