# Vba::GroupATP

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_atp_key** | **Integer** |  |  |
| **claim_type** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **federal_id** | **String** |  | [optional] |
| **group_id** | **String** |  |  |
| **place_of_service_from** | **String** |  | [optional] |
| **place_of_service_thru** | **String** |  | [optional] |
| **provider_npi** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupATP.new(
  group_atp_key: null,
  claim_type: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  federal_id: null,
  group_id: null,
  place_of_service_from: null,
  place_of_service_thru: null,
  provider_npi: null,
  update_date: null,
  update_user: null
)
```

