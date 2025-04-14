# Vba::ReinsContractCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_criteria_key** | **Integer** | Unique identifier for each criteria on this contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **criteria_type** | **String** | Indicates if this is a Spec or Agg criteria. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **incurred_from** | **Time** | The incurred (service date) from. | [optional] |
| **incurred_thru** | **Time** | The incurred (service date) thru. | [optional] |
| **paid_from** | **Time** | The paid (check run date) from. | [optional] |
| **paid_thru** | **Time** | The paid (check run date) thru. | [optional] |
| **reins_contract_key** | **Integer** | References the ReinsContract.ReinsContract_Key on parent table. This holds the Spec or Agg Inccurred/Paid ranges that create the basis for claims being attached to transactions. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractCriteria.new(
  reins_contract_criteria_key: null,
  criteria_type: null,
  entry_date: null,
  entry_user: null,
  incurred_from: null,
  incurred_thru: null,
  paid_from: null,
  paid_thru: null,
  reins_contract_key: null,
  update_date: null,
  update_user: null
)
```

