# Vba::PlanBenefitsPlaceCoIns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefitsPlace.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefitsPlace.Benefit_Code value in parent table. |  |
| **place_code** | **String** | References the PlanBenefitsPlace.Place_Code value in parent table. |  |
| **co_ins_net_pct** | **String** | Indicates whether the In Network Co-Insurance amount is a percentage. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_ins_pct** | **String** | Indicates whether the Out of Network Co-Insurance amount is a percentage. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_insurance** | **Float** | Out of Network Co-Insurance amount. | [optional] |
| **co_insurance_net** | **Float** | In Network Co-Insurance amount. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitsPlaceCoIns.new(
  plan_id: null,
  benefit_code: null,
  place_code: null,
  co_ins_net_pct: null,
  co_ins_pct: null,
  co_insurance: null,
  co_insurance_net: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

