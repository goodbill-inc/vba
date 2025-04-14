# Vba::ProviderPayee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Identifier of Proivider record. |  |
| **payee_id** | **String** | Idenfifier of the Provider Payee. |  |
| **effective_date** | **Time** | Date when the Payee becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **blid** | **String** | BaseLoad Key for this Service/Billing Provider location combination. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **term_date** | **Time** | Date when the Payee expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderPayee.new(
  provider_id: null,
  payee_id: null,
  effective_date: null,
  blid: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

