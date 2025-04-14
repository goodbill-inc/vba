# Vba::ReinsContractConditionalSpecific

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_conditional_specific_key** | **Integer** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** |  | [optional] |
| **display** | **String** |  | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **reins_contract_key** | **Integer** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **specific_deductible** | **Float** |  | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractConditionalSpecific.new(
  reins_contract_conditional_specific_key: null,
  description: null,
  display: null,
  entry_date: null,
  entry_user: null,
  reins_contract_key: null,
  specific_deductible: null,
  update_date: null,
  update_user: null
)
```

