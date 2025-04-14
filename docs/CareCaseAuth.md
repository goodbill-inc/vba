# Vba::CareCaseAuth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_auth_key** | **Integer** |  |  |
| **approved** | **String** |  | [optional] |
| **authorization_number** | **String** |  | [optional] |
| **care_site_id** | **Integer** |  | [optional] |
| **case_key** | **Integer** |  | [optional] |
| **comment** | **String** |  | [optional] |
| **disclaimer_given** | **Boolean** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **medical_concordance_level** | **String** |  | [optional] |
| **not_concordant** | **String** |  | [optional] |
| **notification** | **String** |  | [optional] |
| **provider_info** | **String** |  | [optional] |
| **referred_by** | **String** |  | [optional] |
| **requested** | **String** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseAuth.new(
  care_case_auth_key: null,
  approved: null,
  authorization_number: null,
  care_site_id: null,
  case_key: null,
  comment: null,
  disclaimer_given: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  medical_concordance_level: null,
  not_concordant: null,
  notification: null,
  provider_info: null,
  referred_by: null,
  requested: null,
  start_date: null,
  update_date: null,
  update_user: null
)
```

