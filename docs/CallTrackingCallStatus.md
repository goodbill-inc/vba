# Vba::CallTrackingCallStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_status** | **String** | Name for the &#39;Call Status&#39;. |  |
| **default_status** | **Boolean** | Sets the associated &#39;Call Status&#39; as the default. New calls will automatically have this &#39;Call Status&#39; listed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the &#39;Call Status&#39;. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CallTrackingCallStatus.new(
  call_status: null,
  default_status: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

