# Vba::CapitationService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capitation_service_key** | **Integer** | ID of the capitation service. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **diagnostic_code_type** | **String** | Identifies the ICD version associated with the listed diagnostic codes. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the capitation service becomes/became effective. | [optional] |
| **end_date** | **Time** | Date when the capitation service expires/expired. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **from_diag_code** | **String** | Starting code for the range of acceptable diagnostic codes for the capitation service. | [optional] |
| **from_procedure** | **String** | Starting code for the range of acceptable procedure codes for the capitation service. | [optional] |
| **network_id** | **String** | ID of the network associated with the capitation service. | [optional] |
| **place_of_service** | **String** | Place of service associated with the capitation service. | [optional] |
| **require_pcp** | **Boolean** | When this flag is set, the list of TINS must match the PCP for this member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **specialty_code** | **String** | Specialty code of the Provider associated with the capitation service. | [optional] |
| **thru_diag_code** | **String** | Ending code for the range of acceptable diagnostic codes for the capitation service. | [optional] |
| **thru_procedure** | **String** | Ending code for the range of acceptable procedure codes for the network. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CapitationService.new(
  capitation_service_key: null,
  diagnostic_code_type: null,
  effective_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  from_diag_code: null,
  from_procedure: null,
  network_id: null,
  place_of_service: null,
  require_pcp: null,
  specialty_code: null,
  thru_diag_code: null,
  thru_procedure: null,
  update_date: null,
  update_user: null
)
```

