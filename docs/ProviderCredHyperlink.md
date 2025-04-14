# Vba::ProviderCredHyperlink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_hyperlink_key** | **Integer** | Unique identifier for each hyperlink record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **display** | **String** | Indicates display order for export. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **hyperlink** | **String** | Hyperlink associated with the Provider&#39;s credential. | [optional] |
| **provider_cred_key** | **Integer** | Associates these custom hyperlink values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredHyperlink.new(
  provider_cred_hyperlink_key: null,
  display: null,
  entry_date: null,
  entry_user: null,
  hyperlink: null,
  provider_cred_key: null,
  update_date: null,
  update_user: null
)
```

