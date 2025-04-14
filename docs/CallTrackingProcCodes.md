# Vba::CallTrackingProcCodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_tracking_proc_codes_key** | **Integer** | Unique identifier for each record.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **call_key** | **Integer** | Unique identifier assigned to the call tracking.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **procedure_code** | **String** | Unique identifier assigned to the procedure that will be tied to the call tracking. This can be selected by right-clicking within the field and selecting &#39;Lookup&#39; from the context menu. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CallTrackingProcCodes.new(
  call_tracking_proc_codes_key: null,
  call_key: null,
  entry_date: null,
  entry_user: null,
  procedure_code: null,
  update_date: null,
  update_user: null
)
```

