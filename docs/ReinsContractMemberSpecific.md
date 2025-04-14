# Vba::ReinsContractMemberSpecific

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_key** | **Integer** | Refernces the ReinsContract.ReinsContract_Key on parent record. Each value is a laser deductible for a member on this contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **subscriber_id** | **String** | The member that is identified for this laser deductible. |  |
| **member_seq** | **String** | The member that is identified for this laser deductible. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **specific_deductible** | **Float** | The lasered deductible to be carved out within this contract. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractMemberSpecific.new(
  reins_contract_key: null,
  subscriber_id: null,
  member_seq: null,
  entry_date: null,
  entry_user: null,
  specific_deductible: null,
  update_date: null,
  update_user: null
)
```

