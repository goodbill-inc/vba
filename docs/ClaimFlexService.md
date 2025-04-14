# Vba::ClaimFlexService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_flex_service_key** | **Integer** |  |  |
| **amount** | **Float** |  | [optional] |
| **claim_flex_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **ex_code** | **String** |  | [optional] |
| **flex_description** | **String** |  | [optional] |
| **mcc** | **String** |  | [optional] |
| **matching_transaction_id** | **String** |  | [optional] |
| **merchant_name** | **String** |  | [optional] |
| **payment_reference** | **String** |  | [optional] |
| **place_of_service** | **String** |  | [optional] |
| **procedure_code** | **String** |  | [optional] |
| **service_date** | **Time** |  | [optional] |
| **service_thru** | **Time** |  | [optional] |
| **transaction_code** | **String** |  | [optional] |
| **transaction_source** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimFlexService.new(
  claim_flex_service_key: null,
  amount: null,
  claim_flex_key: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  flex_description: null,
  mcc: null,
  matching_transaction_id: null,
  merchant_name: null,
  payment_reference: null,
  place_of_service: null,
  procedure_code: null,
  service_date: null,
  service_thru: null,
  transaction_code: null,
  transaction_source: null,
  update_date: null,
  update_user: null
)
```

