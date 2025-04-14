# Vba::MemberDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **middle_name** | **String** |  | [optional] |
| **relationship** | **String** |  | [optional] |
| **birth_date** | **Time** |  | [optional] |
| **date_enrolled** | **Time** |  | [optional] |
| **disenroll_date** | **Time** |  | [optional] |
| **sex** | **String** |  | [optional] |
| **alternate_id** | **String** |  | [optional] |
| **ssn** | **String** |  | [optional] |
| **unique_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberDetail.new(
  subscriber_id: null,
  member_seq: null,
  last_name: null,
  first_name: null,
  middle_name: null,
  relationship: null,
  birth_date: null,
  date_enrolled: null,
  disenroll_date: null,
  sex: null,
  alternate_id: null,
  ssn: null,
  unique_id: null
)
```

