# Vba::CapitationPlanRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capitation_plan_rate_key** | **Integer** | ID of the capitation plan rate. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adult** | **Boolean** | Indicates that the Member associated with the capitation must be an adult in order for the plan rate to apply to a capitation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age_from** | **Integer** | Beginning age for the required age range for the plan rate to apply to a capitation. | [optional] |
| **age_thru** | **Integer** | Ending age for the required age range for the plan rate to apply to a capitation. | [optional] |
| **capitation_category** | **String** | Indicates the category required for the plan rate to apply to a capitation. | [optional] |
| **capitation_type** | **String** | Indicates the type required for the plan rate to apply to a capitation. | [optional] |
| **child** | **Boolean** | Indicates that the Member associated with the capitation must be an child in order for the plan rate to apply to a capitation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the plan rate becomes/became effective. | [optional] |
| **end_date** | **Time** | Date when the plan rate expires/expired. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **plan_id** | **String** | ID of the plan associated with the plan rate. | [optional] |
| **rate** | **Float** | Indicates the rate that will be applied by the plan rate. | [optional] |
| **sex** | **String** | Indicates the sex required for the plan rate to apply to a capitation. | [optional] |
| **tier** | **String** | Indicates the tier required for the plan rate to apply to a capiation. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CapitationPlanRate.new(
  capitation_plan_rate_key: null,
  adult: null,
  age_from: null,
  age_thru: null,
  capitation_category: null,
  capitation_type: null,
  child: null,
  effective_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  plan_id: null,
  rate: null,
  sex: null,
  tier: null,
  update_date: null,
  update_user: null
)
```

