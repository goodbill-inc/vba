# Vba::GroupCompanyDataExCodeOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_company_data_ex_code_override_key** | **Integer** | Unique identifier for each Ex Code override configuration. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **company_data_ex_code_field** | **String** | Indicates the Ex_Code field on CompanyData that is having an override applied for this Group/Division. |  |
| **division_id** | **String** | References GroupDivision.Division_ID value on the parent record. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **group_id** | **String** | References GroupDivision.Group_ID value on the parent record. |  |
| **override_ex_code** | **String** | References ExplanationCodes.Ex_Code and is the override value that is used instead of the setting on CompanyData during adjudication. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupCompanyDataExCodeOverride.new(
  group_company_data_ex_code_override_key: null,
  company_data_ex_code_field: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  override_ex_code: null,
  update_date: null,
  update_user: null
)
```

