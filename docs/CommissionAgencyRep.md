# Vba::CommissionAgencyRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_agency_rep_key** | **Integer** | Unique identifier for the CommissionAgencyRep table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **agent_number** | **String** | Unique identifier for the Agent | [optional] |
| **cluster_level** | **String** |  | [optional] |
| **commission_agency_key** | **Integer** | Unique identifier for the CommissionAgency table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **commission_rep_key** | **Integer** | Unique identifier for the CommissionRep table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **e_o_coverage_deductible** | **Float** | Informational | [optional] |
| **e_o_coverage_end** | **Time** | Informational | [optional] |
| **e_o_coverage_level** | **String** | Informational | [optional] |
| **e_o_coverage_name** | **String** | Informational | [optional] |
| **e_o_coverage_start** | **Time** | Informational | [optional] |
| **effective_date** | **Time** | Beginning date range the Agent represents the Agency | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **payee_id** | **String** | Payee of the Agent | [optional] |
| **send_check_to** | **String** | Determine if the Payee, Agnecy, or Agent is paid | [optional] |
| **term_date** | **Time** | Ending date range the Agent represents the Agency | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionAgencyRep.new(
  commission_agency_rep_key: null,
  agent_number: null,
  cluster_level: null,
  commission_agency_key: null,
  commission_rep_key: null,
  e_o_coverage_deductible: null,
  e_o_coverage_end: null,
  e_o_coverage_level: null,
  e_o_coverage_name: null,
  e_o_coverage_start: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  payee_id: null,
  send_check_to: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

