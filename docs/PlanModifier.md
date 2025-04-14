# Vba::PlanModifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the Plans.Plan_ID value in parent table. |  |
| **modifier** | **String** | Identifies the modifier that this rule applies to. |  |
| **effective_date** | **Time** | Date when the modifier rule becomes effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **apply_oon** | **Boolean** | Indicates whether the modifier fee applies to Out of Network claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **apply_uc** | **Boolean** | Indicates whether the modifier fee is applied to Usual and Customary claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **fee_percent** | **Float** | Fee amount to be associated with the selected modifier. | [optional] |
| **term_date** | **Time** | Date when the modifier rule is no longer effective. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanModifier.new(
  plan_id: null,
  modifier: null,
  effective_date: null,
  apply_oon: null,
  apply_uc: null,
  entry_date: null,
  entry_user: null,
  fee_percent: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

