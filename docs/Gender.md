# Vba::Gender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gender_code** | **String** | User defined Gender Code for each gender value. |  |
| **description** | **String** | Brief description of this Gender Code. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **hipa_a_code** | **String** | Used to map to a valid x12 transaction value for 834 processing. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Gender.new(
  gender_code: null,
  description: null,
  entry_date: null,
  entry_user: null,
  hipa_a_code: null,
  update_date: null,
  update_user: null
)
```

