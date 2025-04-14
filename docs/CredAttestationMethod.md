# Vba::CredAttestationMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cred_attestation_method_key** | **Integer** | Identifies the method by which attestation question was administered. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | A description area used to provider more detail about the attestation method. | [optional] |
| **display** | **String** | Identifies the display name of the attestation method. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CredAttestationMethod.new(
  cred_attestation_method_key: null,
  description: null,
  display: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

