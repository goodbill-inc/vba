# Vba::Payor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | Unique identifier assigned to the Payor. |  |
| **address** | **String** | Address of the Payor. | [optional] |
| **address2** | **String** | Address line 2 of the Payor. | [optional] |
| **admin_fee** | **Float** | Specifies the &#39;Admin Fee&#39; amount that will be applied to the associated check. | [optional] |
| **admin_pct** | **String** | Identifies whether the associated &#39;Admin Fee&#39; is a percentage. | [optional] |
| **city** | **String** | City of the Payor&#39;s address. | [optional] |
| **contact** | **String** | Name of the intended contact person for the Payor. | [optional] |
| **country_id** | **String** | Identifier of the country where the Payor resides. | [optional] |
| **county_code** | **String** | Indentifier of the county where the Payor resides. | [optional] |
| **default_pay_date_range** | **Integer** | This option allows the User to post-date &#39;Check Paid Date&#39; field at the Payor level by the designated number of days. | [optional] |
| **ed_i_id** | **String** | EDI ID associated with the Payor. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Allows the User to select an Ex Code that will be applied to any claims associated with the Payor whenever the &#39;Apply Ex Code&#39; option is selected. | [optional] |
| **fax_country_code** | **String** | Country code of the Payor&#39;s fax number. | [optional] |
| **fax_number** | **String** | Fax number of the Payor. | [optional] |
| **federal_id** | **String** | Identifier assigned to the Payor that is used for federal tax purposes. | [optional] |
| **force_filter** | **Boolean** | This option will limit filters available from the Claim Funding screen to the filters that have been built on the Funds Filter tab. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **last_wire_check** | **Integer** | Displays the check number of the Payor&#39;s last wire transfer. | [optional] |
| **name** | **String** | Name of the Payor individual or institution. | [optional] |
| **phone_country_code** | **String** | Country code of the Payor&#39;s phone number. | [optional] |
| **phone_number** | **String** | Phone number of the Payor. | [optional] |
| **state** | **String** | State of the Payor&#39;s address. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **zip_code** | **String** | Zip Code of the Payor&#39;s address. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Payor.new(
  payor_id: null,
  address: null,
  address2: null,
  admin_fee: null,
  admin_pct: null,
  city: null,
  contact: null,
  country_id: null,
  county_code: null,
  default_pay_date_range: null,
  ed_i_id: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  fax_country_code: null,
  fax_number: null,
  federal_id: null,
  force_filter: null,
  last_wire_check: null,
  name: null,
  phone_country_code: null,
  phone_number: null,
  state: null,
  update_date: null,
  update_user: null,
  zip_code: null
)
```

