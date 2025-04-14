# Vba::ProviderSpecialty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Unique idenfitier assigned to the Proivider record. |  |
| **specialty_code** | **String** | References the Specialty.Specialty_Code value on the referenced table. |  |

## Example

```ruby
require 'vba'

instance = Vba::ProviderSpecialty.new(
  provider_id: null,
  specialty_code: null
)
```

