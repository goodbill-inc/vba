# Vba::ProviderBenefitAdmin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Unique idenfitier assigned to the Proivider record. |  |
| **benefit_code** | **String** | Benefit code required for adjudication matching. |  |
| **effective_date** | **Time** | Start of the range of acceptable service dates for the admin fee. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **admin_column** | **String** | Defines what the fee percentage is taken from. This field is only used when the fee is a percentage. | [optional] |
| **admin_fee** | **Float** | Specifies the admin fee amount. | [optional] |
| **admin_pct** | **Boolean** | Indicates that the associated fee is percentage based. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **network_id** | **String** | This field is currently informational only. | [optional] |
| **term_date** | **Time** | End of the range of acceptable service dates for the admin fee. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderBenefitAdmin.new(
  provider_id: null,
  benefit_code: null,
  effective_date: null,
  admin_column: null,
  admin_fee: null,
  admin_pct: null,
  entry_date: null,
  entry_user: null,
  network_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

