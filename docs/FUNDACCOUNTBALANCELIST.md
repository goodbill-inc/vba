# Vba::FUNDACCOUNTBALANCELIST

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_request** | **Integer** |  | [optional] |
| **generate_full_request** | **Integer** |  | [optional] |
| **cand_zero_pay** | **Integer** |  | [optional] |
| **gen_req_email** | **Integer** |  | [optional] |
| **payor_id** | **String** |  | [optional] |
| **account_key** | **Integer** |  | [optional] |
| **payor_name** | **String** |  | [optional] |
| **payor_contact** | **String** |  | [optional] |
| **payor_fax_number** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **account_balance** | **Float** |  | [optional] |
| **candidate_balance** | **Float** |  | [optional] |
| **requested_balance** | **Float** |  | [optional] |
| **hold_balance** | **Float** |  | [optional] |
| **hold_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FUNDACCOUNTBALANCELIST.new(
  generate_request: null,
  generate_full_request: null,
  cand_zero_pay: null,
  gen_req_email: null,
  payor_id: null,
  account_key: null,
  payor_name: null,
  payor_contact: null,
  payor_fax_number: null,
  account_name: null,
  account_balance: null,
  candidate_balance: null,
  requested_balance: null,
  hold_balance: null,
  hold_count: null
)
```

