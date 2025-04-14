# Vba::ReinsDomesticClaimCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_domestic_claim_criteria_key** | **Integer** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_reduction_pct** | **Float** |  | [optional] |
| **criteria_key** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **reins_contract_key** | **Integer** |  | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsDomesticClaimCriteria.new(
  reins_domestic_claim_criteria_key: null,
  claim_reduction_pct: null,
  criteria_key: null,
  description: null,
  entry_date: null,
  entry_user: null,
  reins_contract_key: null,
  update_date: null,
  update_user: null
)
```

