# Vba::BenefitProviderTypes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **benefit_code** | **String** | References the BenefitCodes.Benefit_Code from the parent table. |  |
| **provider_type** | **String** | Specifies the Provider type that the User wishes to either include or exclude as part of the benefit. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exclude** | **Boolean** | Indicates whether the specified code is included or excluded. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BenefitProviderTypes.new(
  benefit_code: null,
  provider_type: null,
  entry_date: null,
  entry_user: null,
  exclude: null,
  update_date: null,
  update_user: null
)
```

