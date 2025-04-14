# Vba::MemberCareAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_care_alert_key** | **Integer** | Unique identifier for each Member Care Alert record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **alert_details** | **String** | A description area used to provide more detail about the care alert. | [optional] |
| **care_alert_status** | **String** | Status of the care alert that will be sent to the Member based upon the alert criteria. The status can be set to either &#39;Due Soon&#39;, &#39;Past Due&#39;, or &#39;Completed&#39;. | [optional] |
| **diagnostic_code** | **String** | Diagnostic code tied to the care alert. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **frequency** | **Integer** | Identifies the frequency of the care alert by specifying the number of the associated frequency type that should be used. | [optional] |
| **frequency_type** | **String** | Identifies the frequency at which the care alerts should be sent. This can be based upon a certain number of months, an annual basis, or a certain number of years. | [optional] |
| **last_service_date** | **Time** | Identifies the last date that the Member received the service associated with the care alert. | [optional] |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **next_service_date** | **Time** | Idenfities the next date that the Member is to receive the service associated with the care alert. | [optional] |
| **procedure_code** | **String** | Procedure code tied the care alert. | [optional] |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberCareAlert.new(
  member_care_alert_key: null,
  alert_details: null,
  care_alert_status: null,
  diagnostic_code: null,
  entry_date: null,
  entry_user: null,
  frequency: null,
  frequency_type: null,
  last_service_date: null,
  member_seq: null,
  next_service_date: null,
  procedure_code: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

