# Vba::GroupContractPlanPremium

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_contract_plan_premium_key** | **Integer** | No longer in use. Replaced by Premium Billing module. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adult** | **Boolean** | No longer in use. Replaced by Premium Billing module. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age_from** | **Integer** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **age_thru** | **Integer** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **applies_to** | **String** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **billing_basis** | **String** | No longer in use. Replaced by Premium Billing module. |  |
| **child** | **Boolean** | No longer in use. Replaced by Premium Billing module. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **coverage_start** | **Time** | No longer in use. Replaced by Premium Billing module. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **division_id** | **String** | No longer in use. Replaced by Premium Billing module. |  |
| **entry_date** | **Time** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **entry_user** | **String** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **group_id** | **String** | No longer in use. Replaced by Premium Billing module. |  |
| **maximum** | **Float** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **plan_id** | **String** | No longer in use. Replaced by Premium Billing module. |  |
| **premium** | **Float** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **sex** | **String** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **tier** | **String** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **update_date** | **Time** | No longer in use. Replaced by Premium Billing module. | [optional] |
| **update_user** | **String** | No longer in use. Replaced by Premium Billing module. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupContractPlanPremium.new(
  group_contract_plan_premium_key: null,
  adult: null,
  age_from: null,
  age_thru: null,
  applies_to: null,
  billing_basis: null,
  child: null,
  coverage_start: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  maximum: null,
  plan_id: null,
  premium: null,
  sex: null,
  tier: null,
  update_date: null,
  update_user: null
)
```

