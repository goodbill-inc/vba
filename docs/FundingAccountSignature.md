# Vba::FundingAccountSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_account_signature_key** | **Integer** | ID of the funding account signature. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | ID of the account which the signature is associated with. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the signature becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **signature_key** | **Integer** | ID of the signature. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **term_date** | **Time** | Date when the signature expires/expired. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingAccountSignature.new(
  funding_account_signature_key: null,
  account_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  signature_key: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

