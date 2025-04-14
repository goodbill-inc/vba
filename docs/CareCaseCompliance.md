# Vba::CareCaseCompliance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_compliance_key** | **Integer** |  |  |
| **care_case_compliance_user** | **String** |  | [optional] |
| **care_case_eligibility_status_id** | **String** |  | [optional] |
| **case_key** | **Integer** |  |  |
| **comment** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseCompliance.new(
  care_case_compliance_key: null,
  care_case_compliance_user: null,
  care_case_eligibility_status_id: null,
  case_key: null,
  comment: null,
  entry_date: null,
  entry_user: null,
  start_date: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

