# Vba::CallTracking

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_key** | **Integer** | ID assigned to the Call.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **auth_number** | **String** | Authorization number of the claim associated with the call. | [optional] |
| **call_destination** | **String** | Identifies the location where the call was received. &#39;Call Destinations&#39; are configured within &#39;Call Tracking Configuration&#39;. | [optional] |
| **call_length** | **Integer** | Identifies the length of the call. | [optional] |
| **call_start** | **Time** | Identifies the date and time when the call was started. | [optional] |
| **call_status** | **String** | Identifies the status of the call. &#39;Call Statuses&#39; are configured within &#39;Call Tracking Configuration&#39;. | [optional] |
| **call_type** | **String** | Identifies the type of call. This usually identifies the subject or purpose of the call. &#39;Call Types&#39; are configured within &#39;Call Tracking Configuration&#39;. | [optional] |
| **caller_type** | **String** | Identifies the type of Caller. &#39;Caller Types&#39; are configured within &#39;Call Tracking Configuration&#39;. | [optional] |
| **contacts_list** | **Boolean** | Indicates that the associated Caller may be found within the &#39;Contacts Folder&#39;. | [optional] |
| **email_address** | **String** | Email address of the Caller. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **extension** | **String** | Extension of the Caller&#39;s phone number. | [optional] |
| **fax_number** | **String** | Fax number of the Caller. | [optional] |
| **first_name** | **String** | First name of the Caller. | [optional] |
| **general_notes** | **String** | Text area where the User may enter any relevant notes regarding the call. | [optional] |
| **last_name** | **String** | Last name of the Caller. | [optional] |
| **organization** | **String** | Organization that the Caller belongs to. | [optional] |
| **phone_country_code** | **String** | Country code of the Caller&#39;s phone number. | [optional] |
| **phone_number** | **String** | Phone number of the Caller. | [optional] |
| **provider_id** | **String** | ID of the Provider associated with the call. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CallTracking.new(
  call_key: null,
  auth_number: null,
  call_destination: null,
  call_length: null,
  call_start: null,
  call_status: null,
  call_type: null,
  caller_type: null,
  contacts_list: null,
  email_address: null,
  entry_date: null,
  entry_user: null,
  extension: null,
  fax_number: null,
  first_name: null,
  general_notes: null,
  last_name: null,
  organization: null,
  phone_country_code: null,
  phone_number: null,
  provider_id: null,
  update_date: null,
  update_user: null
)
```

