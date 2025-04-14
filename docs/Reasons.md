# Vba::Reasons

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason_id** | **Integer** | Identifier for a specific enrollment change Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cobr_a_length** | **Integer** | Time period for COBRA election | [optional] |
| **cobr_a_length_type** | **String** | Units of the time period for COBRA election | [optional] |
| **description** | **String** | Description for a specific enrollment change | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **hipa_a_code** | **String** | HIPAA code associate with the reason | [optional] |
| **hsr_s_code** | **String** | Human Services Reporting System code associated with the reason | [optional] |
| **reason_type** | **String** | Specifies if the reason is a qualifying event, standard reason or not specified | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Reasons.new(
  reason_id: null,
  cobr_a_length: null,
  cobr_a_length_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  hipa_a_code: null,
  hsr_s_code: null,
  reason_type: null,
  update_date: null,
  update_user: null
)
```

