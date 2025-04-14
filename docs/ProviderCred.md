# Vba::ProviderCred

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Unique identifier assigned to this credentialing process. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **application_start_date** | **Time** | The date the application for this credentialing process based on the CredType. | [optional] |
| **committee_date** | **Time** | Date when the Committee approved the credential. | [optional] |
| **cred_type_key** | **Integer** | Identifies the type of credential. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_organization** | **String** | Indicates the organization through which the Provider was credentialed. | [optional] |
| **cred_status** | **String** | Indicates the status of the credentialing. These status options are configured from &#39;Credential Status&#39; within &#39;Credentialing Congifuration&#39;. | [optional] |
| **effective_date** | **Time** | Date when the credentialing status becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **practice_payee_id** | **String** | The Payee that is associated with the Provider&#39;s credential. | [optional] |
| **practice_send_check_to** | **String** | Indicates where checks should be sent. This is often to the Provider themselves or to their practice. | [optional] |
| **practice_send_check_to_address** | **String** | Allows the User to select from the available practice addresses if &#39;Practice&#39; is selected from the &#39;Send Check To&#39; option. | [optional] |
| **provider_bio** | **String** | Free form entry of a provider bio for the provider directory on VBAGateway. | [optional] |
| **provider_id** | **String** | Provider assigned to this credentialing process. |  |
| **specialty_code** | **String** | Identifies the specialty that is associated with the Provider&#39;s credential. | [optional] |
| **term_date** | **Time** | Date when the credentialing status expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCred.new(
  provider_cred_key: null,
  application_start_date: null,
  committee_date: null,
  cred_type_key: null,
  cred_organization: null,
  cred_status: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  practice_payee_id: null,
  practice_send_check_to: null,
  practice_send_check_to_address: null,
  provider_bio: null,
  provider_id: null,
  specialty_code: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

