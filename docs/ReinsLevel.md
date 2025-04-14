# Vba::ReinsLevel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_key** | **Integer** | References the ReinsContract.ReinsContract_Key on parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **reins_level_seq** | **Integer** | The unique sequence for this reinsurance level on this contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_code** | **String** | The benefit code assigned to this reinsurance level. | [optional] |
| **deductible_pct** | **Float** | The reinsurance level deductible percent to be applied during transaction creation. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **reins_level_from** | **Float** | The reinsurance level range. | [optional] |
| **reins_level_thru** | **Float** | The reinsurance level range. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsLevel.new(
  reins_contract_key: null,
  reins_level_seq: null,
  benefit_code: null,
  deductible_pct: null,
  entry_date: null,
  entry_user: null,
  reins_level_from: null,
  reins_level_thru: null,
  update_date: null,
  update_user: null
)
```

