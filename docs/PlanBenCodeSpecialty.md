# Vba::PlanBenCodeSpecialty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefits.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefits.Benefit_Code value in parent table. |  |
| **specialty_code** | **String** | Specifies the Provider specialty that the User wishes to either include or exclude as part of the benefit on top of the system-wide definition of the benefit. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exclude** | **Boolean** | Indicates whether the specified code is included or excluded. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenCodeSpecialty.new(
  plan_id: null,
  benefit_code: null,
  specialty_code: null,
  entry_date: null,
  entry_user: null,
  exclude: null,
  update_date: null,
  update_user: null
)
```

