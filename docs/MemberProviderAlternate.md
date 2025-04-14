# Vba::MemberProviderAlternate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_provider_key** | **Integer** | References MemberProvider.MemberProvider_Key value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **provider_id** | **String** | References MemberProvider.Provider_ID value on the parent record. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberProviderAlternate.new(
  member_provider_key: null,
  provider_id: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

