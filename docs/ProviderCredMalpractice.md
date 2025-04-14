# Vba::ProviderCredMalpractice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Associates these custom carrier values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_carrier_key** | **Integer** | Identifies the malpractice insurance carrier. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **policy_number** | **String** | Policy number of the malpractice insurance. |  |
| **aggregate_limit** | **Float** | Aggregate limit of the malpractice policy. | [optional] |
| **effective_date** | **Time** | Date when the malpractice insurance becomes/became effective. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **occurrence_amount** | **Float** | Occurrence amount of the malpractice policy. | [optional] |
| **specific_limit** | **Float** | Specific limit of the malpractice policy. | [optional] |
| **term_date** | **Time** | Date when the malpractice insurance expires/expired. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredMalpractice.new(
  provider_cred_key: null,
  cred_carrier_key: null,
  policy_number: null,
  aggregate_limit: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  occurrence_amount: null,
  specific_limit: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

