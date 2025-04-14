# Vba::PlanBenefitsPlace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefits.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefits.Benefit_Code value in parent table. |  |
| **place_code** | **String** | This allows the User to apply the speecified Ex Code to any claims containing the selected place code. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | This is the Ex Code that will be applied to any claims containing the selected place code. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitsPlace.new(
  plan_id: null,
  benefit_code: null,
  place_code: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  update_date: null,
  update_user: null
)
```

