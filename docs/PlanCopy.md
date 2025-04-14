# Vba::PlanCopy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **benefits** | **Boolean** |  | [optional] |
| **cascade** | **Boolean** |  | [optional] |
| **capitation** | **Boolean** |  | [optional] |
| **restrictions** | **Boolean** |  | [optional] |
| **pre_ex** | **Boolean** |  | [optional] |
| **added_accum** | **Boolean** |  | [optional] |
| **maximums** | **Boolean** |  | [optional] |
| **pbm_co_pay** | **Boolean** |  | [optional] |
| **place_details** | **Boolean** |  | [optional] |
| **place_auth** | **Boolean** |  | [optional] |
| **place_co_pay** | **Boolean** |  | [optional] |
| **place_co_ins** | **Boolean** |  | [optional] |
| **ex_code_details** | **Boolean** |  | [optional] |
| **ex_code_procedure** | **Boolean** |  | [optional] |
| **ex_code_diagnosis** | **Boolean** |  | [optional] |
| **ex_code_place** | **Boolean** |  | [optional] |
| **context4_details** | **Boolean** |  | [optional] |
| **context4_pricing** | **Boolean** |  | [optional] |
| **auth_penalty** | **Boolean** |  | [optional] |
| **benefit_level** | **Boolean** |  | [optional] |
| **benefit_rates** | **Boolean** |  | [optional] |
| **id_codes** | **Boolean** |  | [optional] |
| **ex_code_modifiers** | **Boolean** |  | [optional] |
| **original_plan_id** | **String** |  | [optional] |
| **new_plan_id** | **String** |  | [optional] |
| **new_plan_description** | **String** |  | [optional] |
| **new_plan_type** | **String** |  | [optional] |
| **copy_mode** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanCopy.new(
  benefits: null,
  cascade: null,
  capitation: null,
  restrictions: null,
  pre_ex: null,
  added_accum: null,
  maximums: null,
  pbm_co_pay: null,
  place_details: null,
  place_auth: null,
  place_co_pay: null,
  place_co_ins: null,
  ex_code_details: null,
  ex_code_procedure: null,
  ex_code_diagnosis: null,
  ex_code_place: null,
  context4_details: null,
  context4_pricing: null,
  auth_penalty: null,
  benefit_level: null,
  benefit_rates: null,
  id_codes: null,
  ex_code_modifiers: null,
  original_plan_id: null,
  new_plan_id: null,
  new_plan_description: null,
  new_plan_type: null,
  copy_mode: null
)
```

