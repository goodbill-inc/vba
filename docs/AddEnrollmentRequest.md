# Vba::AddEnrollmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requesting_user_id** | **String** | User ID of the person making this request. |  |
| **add_members** | **Boolean** | Flag indicating if members should be enrolled in addition to the subscriber.  If false, only subscriber is enrolled; If true, members + subscriber is enrolled. | [optional] |
| **sub_enrollment** | [**SubEnrollment**](SubEnrollment.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AddEnrollmentRequest.new(
  requesting_user_id: null,
  add_members: null,
  sub_enrollment: null
)
```

