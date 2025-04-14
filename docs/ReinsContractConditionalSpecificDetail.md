# Vba::ReinsContractConditionalSpecificDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_conditional_specific_detail_key** | **Integer** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **diagnostic_code_type** | **String** |  | [optional] |
| **diagnostic_group** | **String** |  | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **exclude** | **Boolean** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **from_diag_code** | **String** |  | [optional] |
| **reins_contract_conditional_specific_key** | **Integer** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **thru_diag_code** | **String** |  | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **use_diagnostic_group** | **Boolean** | Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractConditionalSpecificDetail.new(
  reins_contract_conditional_specific_detail_key: null,
  diagnostic_code_type: null,
  diagnostic_group: null,
  entry_date: null,
  entry_user: null,
  exclude: null,
  from_diag_code: null,
  reins_contract_conditional_specific_key: null,
  thru_diag_code: null,
  update_date: null,
  update_user: null,
  use_diagnostic_group: null
)
```

