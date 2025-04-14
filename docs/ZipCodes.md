# Vba::ZipCodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **zip_code** | **String** | Zip Code as specified by the US Postal Service |  |
| **city** | **String** | City where the Zip Code is located | [optional] |
| **country_id** | **String** | Country ID as specified by the US Postal Service | [optional] |
| **county** | **String** | County where the Zip Code is located | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **state** | **String** | State where the Zip Code is located | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ZipCodes.new(
  zip_code: null,
  city: null,
  country_id: null,
  county: null,
  entry_date: null,
  entry_user: null,
  state: null,
  update_date: null,
  update_user: null
)
```

