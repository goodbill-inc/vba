# Vba::ContactPhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_phone_key** | **Integer** | ID of the contact phone number.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **contact_key** | **Integer** | ID of the contact.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **phone_country_code** | **String** | Country code of the contact&#39;s phone number. | [optional] |
| **phone_number** | **String** | Phone number of the contact. | [optional] |
| **phone_type** | **String** | Identifies the type of phone number. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ContactPhone.new(
  contact_phone_key: null,
  contact_key: null,
  entry_date: null,
  entry_user: null,
  phone_country_code: null,
  phone_number: null,
  phone_type: null,
  update_date: null,
  update_user: null
)
```

