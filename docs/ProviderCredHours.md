# Vba::ProviderCredHours

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_hours_key** | **Integer** | Unique identifier for each hours record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Allows the User to create a label or short description for the set of practice/office hours. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **friday_end** | **Time** | End time for Friday&#39;s credentialing hours. | [optional] |
| **friday_start** | **Time** | Start time for Friday&#39;s credentialing hours. | [optional] |
| **monday_end** | **Time** | End time for Monday&#39;s credentialing hours. | [optional] |
| **monday_start** | **Time** | Start time for Monday&#39;s credentialing hours. | [optional] |
| **payee_id** | **String** | Identifier of the Payee associated with the credentialing. | [optional] |
| **provider_cred_key** | **Integer** | Associates these custom hours values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **saturday_end** | **Time** | End time for Saturday&#39;s credentialing hours. | [optional] |
| **saturday_start** | **Time** | Start time for Saturday&#39;s credentialing hours. | [optional] |
| **sunday_end** | **Time** | End time for Friday&#39;s credentialing hours. | [optional] |
| **sunday_start** | **Time** | Start time for Friday&#39;s credentialing hours. | [optional] |
| **thursday_end** | **Time** | End time for Thursday&#39;s credentialing hours. | [optional] |
| **thursday_start** | **Time** | Start time for Thursday&#39;s credentialing hours. | [optional] |
| **tuesday_end** | **Time** | End time for Tuesday&#39;s credentialing hours. | [optional] |
| **tuesday_start** | **Time** | Start time for Tuesday&#39;s credentialing hours. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **wednesday_end** | **Time** | End time for Wednesday&#39;s credentialing hours. | [optional] |
| **wednesday_start** | **Time** | Start time for Wednesday&#39;s credentialing hours. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredHours.new(
  provider_cred_hours_key: null,
  description: null,
  entry_date: null,
  entry_user: null,
  friday_end: null,
  friday_start: null,
  monday_end: null,
  monday_start: null,
  payee_id: null,
  provider_cred_key: null,
  saturday_end: null,
  saturday_start: null,
  sunday_end: null,
  sunday_start: null,
  thursday_end: null,
  thursday_start: null,
  tuesday_end: null,
  tuesday_start: null,
  update_date: null,
  update_user: null,
  wednesday_end: null,
  wednesday_start: null
)
```

