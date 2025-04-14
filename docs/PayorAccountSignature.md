# Vba::PayorAccountSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_account_signature_key** | **Integer** | Unique identifer for this Account Signature. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the Payor signature becomes effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **payor_account_key** | **Integer** | The Payor/Account that this signature definite is attached. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **required** | **Boolean** | Indicates whether the Payor&#39;s signature is always required. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **signature_key** | **Integer** | Select the signature to be used on this Payor&#39;s check stock. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **term_date** | **Time** | Date when the Payor signature expires. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PayorAccountSignature.new(
  payor_account_signature_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  payor_account_key: null,
  required: null,
  signature_key: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

