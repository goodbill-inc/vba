# Vba::ProviderAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_account_key** | **Integer** | Unique identifier for each account record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | References the FundingAccount.Account_Key record for account details. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the Provider account becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **provider_id** | **String** | Unique idenfitier assigned to the Proivider record. |  |
| **term_date** | **Time** | Date when the Provider account expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **wire_transfer** | **Boolean** | Indicates if this account accepts wire transfers. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::ProviderAccount.new(
  provider_account_key: null,
  account_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  provider_id: null,
  term_date: null,
  update_date: null,
  update_user: null,
  wire_transfer: null
)
```

