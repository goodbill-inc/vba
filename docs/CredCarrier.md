# Vba::CredCarrier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cred_carrier_key** | **Integer** | Unique Identity Key associated with this table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **address** | **String** | Address of the credentialing Carrier. | [optional] |
| **address2** | **String** | Address line 2 of the credentialing Carrier. | [optional] |
| **city** | **String** | City of the address of the credentialing Carrier. | [optional] |
| **country_id** | **String** | Country ID of the credentialing Carrier&#39;s address. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **fax** | **String** | Fax number of the credentialing Carrier. | [optional] |
| **fax_country_code** | **String** | Country code of the credentialing Carrier&#39;s fax number. | [optional] |
| **name** | **String** | Name of the credentialing Carrier. | [optional] |
| **phone** | **String** | Phone number of the credentialing Carrier. | [optional] |
| **phone_country_code** | **String** | Country code of the credentialing Carrier&#39;s phone number. | [optional] |
| **state** | **String** | State of the address of the credentialing Carrier. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **zip_code** | **String** | Zip code of the credentialing Carrier. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CredCarrier.new(
  cred_carrier_key: null,
  address: null,
  address2: null,
  city: null,
  country_id: null,
  entry_date: null,
  entry_user: null,
  fax: null,
  fax_country_code: null,
  name: null,
  phone: null,
  phone_country_code: null,
  state: null,
  update_date: null,
  update_user: null,
  zip_code: null
)
```

