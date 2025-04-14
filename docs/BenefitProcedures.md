# Vba::BenefitProcedures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **benefit_code** | **String** | References the BenefitCodes.Benefit_Code from the parent table. |  |
| **from_procedure** | **String** | First Procedure Code for the specified range. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exclude** | **Boolean** | Indicates whether the specified range of codes is included or excluded. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **override_from_procedure** | **String** | No longer in use. | [optional] |
| **override_thru_procedure** | **String** | No longer in use. | [optional] |
| **thru_procedure** | **String** | Last Procedure Code for the specified range. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BenefitProcedures.new(
  benefit_code: null,
  from_procedure: null,
  entry_date: null,
  entry_user: null,
  exclude: null,
  override_from_procedure: null,
  override_thru_procedure: null,
  thru_procedure: null,
  update_date: null,
  update_user: null
)
```

