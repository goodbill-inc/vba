# Vba::FundingNameOnCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_check_to** | **String** |  |  |
| **pay_to_id** | **String** |  |  |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **name_on_check** | **String** |  | [optional] |
| **address_on_check** | **String** |  | [optional] |
| **address2_on_check** | **String** |  | [optional] |
| **city_on_check** | **String** |  | [optional] |
| **state_on_check** | **String** |  | [optional] |
| **zip_on_check** | **String** |  | [optional] |
| **country_id_on_check** | **String** |  | [optional] |
| **name_on_address** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingNameOnCheck.new(
  send_check_to: null,
  pay_to_id: null,
  subscriber_id: null,
  member_seq: null,
  name_on_check: null,
  address_on_check: null,
  address2_on_check: null,
  city_on_check: null,
  state_on_check: null,
  zip_on_check: null,
  country_id_on_check: null,
  name_on_address: null
)
```

