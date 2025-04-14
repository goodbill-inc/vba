# Vba::AuthProcCodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_proc_codes_key** | **Integer** | Unique identifier for each record. |  |
| **auth_number** | **String** | Unique identifier assigned to the authorization. |  |
| **exclude_modifier_match** | **Boolean** | Checking this box means that adjudication will not require a match on the procedure modifiers when automatically assigning this auth. |  |
| **modifier1** | **String** | Required modifier for adjudication to match this authorization to a claim. | [optional] |
| **modifier2** | **String** | Required modifier for adjudication to match this authorization to a claim. | [optional] |
| **modifier3** | **String** | Required modifier for adjudication to match this authorization to a claim. | [optional] |
| **modifier4** | **String** | Required modifier for adjudication to match this authorization to a claim. | [optional] |
| **procedure_cluster** | **String** | Allows the User to apply a procedure cluster to the procedure code line. This can be selected by right-clicking within the field and selecting &#39;Lookup&#39; from the context menu. | [optional] |
| **procedure_code** | **String** | Unique identifier assigned to the procedure that will be tied to the authorization. This can be selected by right-clicking within the field and selecting &#39;Lookup&#39; from the context menu. | [optional] |
| **units_actual** | **Float** | Total number of approved units of the associated procedure that have been used. | [optional] |
| **units_approved** | **Float** | Approved number of units of the associated procedure. | [optional] |
| **units_requested** | **Float** | Requested number of units of the associated procedure. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthProcCodes.new(
  auth_proc_codes_key: null,
  auth_number: null,
  exclude_modifier_match: null,
  modifier1: null,
  modifier2: null,
  modifier3: null,
  modifier4: null,
  procedure_cluster: null,
  procedure_code: null,
  units_actual: null,
  units_approved: null,
  units_requested: null
)
```

