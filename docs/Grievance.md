# Vba::Grievance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grievance_key** | **Integer** | ID number of the grievance. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **admin_change** | **String** | Area where the User may describe the administrative change. | [optional] |
| **admin_change_date** | **Time** | Date when the administrative change took place. | [optional] |
| **admin_change_type** | **String** | Type of change that was made by Administration. &#39;Admin. Change Types&#39; are configured within &#39;Grievance Configuration&#39;. | [optional] |
| **call_key** | **Integer** | ID of the call from which the grievance was submitted. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **grievance_category** | **String** | Category of the grievance. &#39;Greivance Categories&#39; are configured within &#39;Grievance Configuration&#39;. | [optional] |
| **grievance_filed** | **Time** | Date when the grievance was viewed and filed by an Administartor. | [optional] |
| **grievance_received** | **Time** | Date when the grievance was submitted. | [optional] |
| **grievance_resolved** | **Time** | Date when the grievance was resolved. | [optional] |
| **grievance_source** | **String** | ID of the source of the grievance. | [optional] |
| **grievance_status** | **String** | Status of the grievance. &#39;Greivance Statuses&#39; are configured within &#39;Grievance Configuration&#39;. | [optional] |
| **grievance_type** | **String** | Type of the grievance. &#39;Grievance Types&#39; are configured within &#39;Grievance Configuration&#39;. | [optional] |
| **issue** | **String** | Area where the User may describe the issue. | [optional] |
| **issue_date** | **Time** | Date when the issue occurred. | [optional] |
| **issue_type** | **String** | Type of issue the grievance is associated with. &#39;Issue Types&#39; are configured within &#39;Grievance Configuration&#39;. | [optional] |
| **member_seq** | **String** | Sequential identifier of the Member associated with the grievance. | [optional] |
| **patient_account_number** | **String** | Account number of the Patient associated with the grievance. | [optional] |
| **provider_id** | **String** | ID of the Provider associated with the grievance. | [optional] |
| **resolution** | **String** | Area where the User may describe the resolution. | [optional] |
| **resolution_date** | **Time** | Date when the resolution was implemented. | [optional] |
| **resolution_type** | **String** | Type of resolution used to address the grievance. &#39;Resolution Types&#39; are configured within &#39;Grievance Configuration&#39;. | [optional] |
| **subscriber_id** | **String** | Unique system assigned number for the Subscriber | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Grievance.new(
  grievance_key: null,
  admin_change: null,
  admin_change_date: null,
  admin_change_type: null,
  call_key: null,
  entry_date: null,
  entry_user: null,
  grievance_category: null,
  grievance_filed: null,
  grievance_received: null,
  grievance_resolved: null,
  grievance_source: null,
  grievance_status: null,
  grievance_type: null,
  issue: null,
  issue_date: null,
  issue_type: null,
  member_seq: null,
  patient_account_number: null,
  provider_id: null,
  resolution: null,
  resolution_date: null,
  resolution_type: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

