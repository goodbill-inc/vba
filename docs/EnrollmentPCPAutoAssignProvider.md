# Vba::EnrollmentPCPAutoAssignProvider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** |  | [optional] |
| **zip_code** | **String** |  | [optional] |
| **practice_type** | **String** |  | [optional] |
| **network_id** | **String** |  | [optional] |
| **accepting_patients** | **Boolean** |  | [optional] |
| **specialty_code** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **expiration_date** | **Time** |  | [optional] |
| **accepting_age_from** | **Integer** |  | [optional] |
| **accepting_age_thru** | **Integer** |  | [optional] |
| **member_provider_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EnrollmentPCPAutoAssignProvider.new(
  provider_id: null,
  zip_code: null,
  practice_type: null,
  network_id: null,
  accepting_patients: null,
  specialty_code: null,
  effective_date: null,
  expiration_date: null,
  accepting_age_from: null,
  accepting_age_thru: null,
  member_provider_count: null
)
```

