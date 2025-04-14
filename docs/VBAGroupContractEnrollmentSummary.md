# Vba::VBAGroupContractEnrollmentSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **coverage_start** | **Time** |  | [optional] |
| **coverage_end** | **Time** |  | [optional] |
| **total_subscribers** | **Integer** |  | [optional] |
| **total_members** | **Integer** |  | [optional] |
| **total_subscribers_current** | **Integer** |  | [optional] |
| **total_members_current** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAGroupContractEnrollmentSummary.new(
  group_id: null,
  division_id: null,
  coverage_start: null,
  coverage_end: null,
  total_subscribers: null,
  total_members: null,
  total_subscribers_current: null,
  total_members_current: null
)
```

