# Vba::MemberAddressHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_address_history_key** | **Integer** | ID of the Member Address History record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **address** | **String** | Primary address of the Member. | [optional] |
| **address2** | **String** | Address line 2 of the Member&#39;s primary address. | [optional] |
| **cell_country_code** | **String** | Country code of the Member&#39;s cell phone number. | [optional] |
| **cell_phone** | **String** | Cell phone number of the Member. | [optional] |
| **city** | **String** | City of the Member&#39;s primary address. | [optional] |
| **country_id** | **String** | Identifier of the country of the Member&#39;s primary address. | [optional] |
| **county_code** | **String** | County code of the Member&#39;s primary address. | [optional] |
| **effective_date** | **Time** | Date when the Member Address becomes/became effective. | [optional] |
| **email_address** | **String** | Email address of the Member. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **home_country_code** | **String** | Country code of the Member&#39;s home phone number. | [optional] |
| **home_phone** | **String** | Home phone number of the Member. | [optional] |
| **latitude** | **String** | Latitudinal coordinate of the Member&#39;s primary address. | [optional] |
| **longitude** | **String** | Longitudinal coordinate of the Member&#39;s primary address. | [optional] |
| **member_seq** | **String** | Sequential identifier assigned to the Member. |  |
| **region_code** | **String** | Region code of the Member&#39;s primary address. | [optional] |
| **secondary_address** | **String** | Secondary address associated with the Member. | [optional] |
| **secondary_address2** | **String** | Line 2 of secondary address associated with the Member. | [optional] |
| **secondary_city** | **String** | City of the Member&#39;s secondary address. | [optional] |
| **secondary_county_code** | **String** | County code of the Secondary Address | [optional] |
| **secondary_state** | **String** | State of the Member&#39;s secondary address. | [optional] |
| **secondary_zip_code** | **String** | Zip code of the Member&#39;s secondary address. | [optional] |
| **state** | **String** | State of the Member&#39;s primary address. | [optional] |
| **subscriber_id** | **String** | Identifier assigned to the Subscriber associated with this Member. |  |
| **term_date** | **Time** | Date when the Member Address is no longer valid/effective. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **work_country_code** | **String** | Country code of the Member&#39;s home phone number. | [optional] |
| **work_phone** | **String** | Work phone number of the Member. | [optional] |
| **zip_code** | **String** | Zip code of the Member&#39;s primary address. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberAddressHistory.new(
  member_address_history_key: null,
  address: null,
  address2: null,
  cell_country_code: null,
  cell_phone: null,
  city: null,
  country_id: null,
  county_code: null,
  effective_date: null,
  email_address: null,
  entry_date: null,
  entry_user: null,
  home_country_code: null,
  home_phone: null,
  latitude: null,
  longitude: null,
  member_seq: null,
  region_code: null,
  secondary_address: null,
  secondary_address2: null,
  secondary_city: null,
  secondary_county_code: null,
  secondary_state: null,
  secondary_zip_code: null,
  state: null,
  subscriber_id: null,
  term_date: null,
  update_date: null,
  update_user: null,
  work_country_code: null,
  work_phone: null,
  zip_code: null
)
```

