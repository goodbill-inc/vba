# Vba::VBAPayorAccountCheckProcessing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | Unique identifier assigned to the Payor. |  |
| **account_key** | **Integer** | References the Funding Account&#39;s Account Key associated with this Payor/Account. |  |
| **payor_name** | **String** | Name of the Payor individual or institution. | [optional] |
| **account_name** | **String** | The Funding Account Name | [optional] |
| **account_balance** | **Float** | The Payor Account&#39;s calculated Account Balance | [optional] |
| **candidate_balance** | **Float** | Calculated balance for all candidate Claims | [optional] |
| **candidate_count** | **Integer** | Number of individual candidate Claims | [optional] |
| **signature_key** | **Integer** | The Funding or Payor Account&#39;s Signature key. | [optional] |
| **selected** | **Integer** | Presence indicator for Candidate Balance or Candidate Count | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAPayorAccountCheckProcessing.new(
  payor_id: null,
  account_key: null,
  payor_name: null,
  account_name: null,
  account_balance: null,
  candidate_balance: null,
  candidate_count: null,
  signature_key: null,
  selected: null
)
```

