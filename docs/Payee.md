# Vba::Payee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | Unique identifier assigned to the Payee.  If a Payee ID is not provided, one will be assigned at the time of creation. | [optional] |
| **address** | **String** | Address of the Payee. | [optional] |
| **address2** | **String** | Address line 2 of the Payee. | [optional] |
| **alternate_id** | **String** | Field using for storing a custom alternate ID associated with this Payee. | [optional] |
| **blid** | **String** | The BaseLoad identifier associated with this Billing entity (Payee). | [optional] |
| **city** | **String** | City of the Payee&#39;s address. | [optional] |
| **contact** | **String** | Name of the desired contact person associated with the Payee. | [optional] |
| **country_id** | **String** | Identifier of the country where the Payee resides. | [optional] |
| **email_address** | **String** | Email address of the Payee. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **fax_country_code** | **String** | Country code of the Payee&#39;s fax number. | [optional] |
| **fax_number** | **String** | Fax number of the Payee. | [optional] |
| **federal_id** | **String** | Identifier assigned to the Payee that is used for federal tax purposes. | [optional] |
| **inactive** | **Boolean** | This field indicates that the Payee is currently inactive  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **latitude** | **Float** | Latitudinal coordinates for the Payee&#39;s location. | [optional] |
| **longitude** | **Float** | Longitudinal coordinate for the Payee&#39;s location. | [optional] |
| **name** | **String** | Name of the Payee. | [optional] |
| **name_for_check** | **String** | Name that should be writen on checks that are made out to the Payee. Only provide this information if the name differs from the Payee name. | [optional] |
| **need_1099** | **String** | Indicates that the Payee needs a 1099 generated yearly by VBA. Checking this box enables additional 1099 address information. Only provide this information if it differs from the Payee address. | [optional] |
| **pay_to_address** | **String** | Address that should be used for payments to the Payee. Payments will default to the Payee address if this field is not completed. | [optional] |
| **pay_to_address2** | **String** | Line 2 of the address that should be used for payments to the Payee. | [optional] |
| **pay_to_city** | **String** | City of the address that should be used for payments to the Payee. | [optional] |
| **pay_to_country_id** | **String** | Identifier of the country where the Payee&#39;s payments are received. | [optional] |
| **pay_to_state** | **String** | State of the Payee&#39;s address used for payments. | [optional] |
| **pay_to_zip** | **String** | Zip Code of the Payee&#39;s address used for payments. | [optional] |
| **pend_ex_code** | **String** | Specifies the Ex Code that should be applied when the &#39;Apply Ex Code&#39; option is selected. | [optional] |
| **pend_flag** | **Boolean** | Indicates whether an Ex Code should be applied to claims that involve payments to the selected Payee. | [optional] |
| **phone_country_code** | **String** | Country code of the Payee&#39;s phone number. | [optional] |
| **phone_number** | **String** | Phone number of the Payee. | [optional] |
| **state** | **String** | State of the Payee&#39;s address. | [optional] |
| **tax_address** | **String** | Address that the Payee uses for tax purposes. | [optional] |
| **tax_address2** | **String** | Address line 2 that the Payee uses for tax purposes. | [optional] |
| **tax_city** | **String** | City of the address that the Payee uses for tax purposes. | [optional] |
| **tax_contact** | **String** | Contact that the Payee uses for tax purposes. | [optional] |
| **tax_fax_number** | **String** | Fax number of the Contact that the Payee uses for tax purposes. | [optional] |
| **tax_name** | **String** | Name that the Payee uses for tax purposes. | [optional] |
| **tax_phone_number** | **String** | Phone number of the Contact that the Payee uses for tax purposes. | [optional] |
| **tax_state** | **String** | State of the address that the Payee uses for tax purposes. | [optional] |
| **tax_zip_code** | **String** | Zip Code of the address that the Payee uses for tax purposes. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **virtual_office** | **Boolean** | Indicates whether the Payee functions as a virtual office. This can be used for data exporting purposes.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **void_checks** | **Boolean** | No longer in use.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **w9_received** | **Boolean** | This field indicates that a W9 has been received from this Payee. This field is informational only.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **website** | **String** | Website of the Payee. | [optional] |
| **wire_transfer** | **Boolean** | Indicates whether the Payee account accepts wire transfers.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **zip_code** | **String** | Zip Code of the Payee&#39;s address. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Payee.new(
  payee_id: null,
  address: null,
  address2: null,
  alternate_id: null,
  blid: null,
  city: null,
  contact: null,
  country_id: null,
  email_address: null,
  entry_date: null,
  entry_user: null,
  fax_country_code: null,
  fax_number: null,
  federal_id: null,
  inactive: null,
  latitude: null,
  longitude: null,
  name: null,
  name_for_check: null,
  need_1099: null,
  pay_to_address: null,
  pay_to_address2: null,
  pay_to_city: null,
  pay_to_country_id: null,
  pay_to_state: null,
  pay_to_zip: null,
  pend_ex_code: null,
  pend_flag: null,
  phone_country_code: null,
  phone_number: null,
  state: null,
  tax_address: null,
  tax_address2: null,
  tax_city: null,
  tax_contact: null,
  tax_fax_number: null,
  tax_name: null,
  tax_phone_number: null,
  tax_state: null,
  tax_zip_code: null,
  update_date: null,
  update_user: null,
  virtual_office: null,
  void_checks: null,
  w9_received: null,
  website: null,
  wire_transfer: null,
  zip_code: null
)
```

