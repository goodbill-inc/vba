# Vba::ProviderCredQuality

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Associates these custom quality values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_quality_key** | **Integer** | Specifies the quality item that will be scored and rated. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **quality_date** | **Time** | Date when the quality was rated. | [optional] |
| **quality_rating** | **Integer** | Quality rating that was given to the item. | [optional] |
| **quality_review** | **String** | Free form entry of quality and review information for this record. | [optional] |
| **quality_score** | **String** | Quality score that was given to the item. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredQuality.new(
  provider_cred_key: null,
  cred_quality_key: null,
  entry_date: null,
  entry_user: null,
  quality_date: null,
  quality_rating: null,
  quality_review: null,
  quality_score: null,
  update_date: null,
  update_user: null
)
```

