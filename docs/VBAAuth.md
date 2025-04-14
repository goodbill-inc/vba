# Vba::VBAAuth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_last_name** | **String** |  | [optional] |
| **provider_first_name** | **String** |  | [optional] |
| **provider_org_name** | **String** |  | [optional] |
| **provider_entity_id** | **String** |  | [optional] |
| **provider_type** | **String** |  | [optional] |
| **payee_name** | **String** |  | [optional] |
| **member_last_name** | **String** |  | [optional] |
| **member_first_name** | **String** |  | [optional] |
| **member_birth_date** | **Time** |  | [optional] |
| **member_vip_flag** | **Boolean** |  | [optional] |
| **auth_adjust_count** | **Integer** |  | [optional] |
| **auth_ref_count** | **Integer** |  | [optional] |
| **auth_detail** | [**Auth**](Auth.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAAuth.new(
  provider_last_name: null,
  provider_first_name: null,
  provider_org_name: null,
  provider_entity_id: null,
  provider_type: null,
  payee_name: null,
  member_last_name: null,
  member_first_name: null,
  member_birth_date: null,
  member_vip_flag: null,
  auth_adjust_count: null,
  auth_ref_count: null,
  auth_detail: null
)
```

