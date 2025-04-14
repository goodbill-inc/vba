# Vba::ReinsContractFactor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_factor_key** | **Integer** | Unique identifier for each contract factor configuration. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age_from** | **Integer** | The reinsurance contract factor configuration value used to determine if a member falls into this factor calculation. | [optional] |
| **age_thru** | **Integer** | The reinsurance contract factor configuration value used to determine if a member falls into this factor calculation. | [optional] |
| **effective_date** | **Time** | The effective date of this factor within the reinsurance contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **factor** | **Float** | The calculated factor for each eligiblity member that falls into this configuration. | [optional] |
| **plan_id** | **String** | The reinsurance contract factor configuration value used to determine if a member falls into this factor calculation. | [optional] |
| **reins_contract_key** | **Integer** | References the ReinsContract.ReinsContract_Key on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **term_date** | **Time** | The term date of this factor within the reinsurance contract. | [optional] |
| **tier** | **String** | The reinsurance contract factor configuration value used to determine if a member falls into this factor calculation. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **zip_from** | **String** | The reinsurance contract factor configuration value used to determine if a member falls into this factor calculation. | [optional] |
| **zip_thru** | **String** | The reinsurance contract factor configuration value used to determine if a member falls into this factor calculation. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractFactor.new(
  reins_contract_factor_key: null,
  age_from: null,
  age_thru: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  factor: null,
  plan_id: null,
  reins_contract_key: null,
  term_date: null,
  tier: null,
  update_date: null,
  update_user: null,
  zip_from: null,
  zip_thru: null
)
```

