# Vba::ProviderTypes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_type** | **String** | Name of the Provider type. |  |
| **all_providers** | **String** | Indicates that the selected Provider type encompasses all other types. | [optional] |
| **care_manager** | **String** | Indicates that the selected Provider type is a care manager. | [optional] |
| **cred_type** | **String** | No longer in use. | [optional] |
| **description** | **String** | Description of the Provider type. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **hospital** | **String** | Indicates that the selected Provider type is associated with hospital services. | [optional] |
| **inpatient** | **String** | Indicates that the selected Provider type is associated with inpatient services. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderTypes.new(
  provider_type: null,
  all_providers: null,
  care_manager: null,
  cred_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  hospital: null,
  inpatient: null,
  update_date: null,
  update_user: null
)
```

