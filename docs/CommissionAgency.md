# Vba::CommissionAgency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_agency_key** | **Integer** | Unique identifier for the Commission Agency table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **address1** | **String** | Address1 of the Agency | [optional] |
| **address2** | **String** | Address2 of the Agency | [optional] |
| **agency_type** | **String** | Type of the Agency | [optional] |
| **city** | **String** | City of the Agency | [optional] |
| **cluster_hierarchy** | **String** |  | [optional] |
| **country_id** | **String** | Country ID of the Agency | [optional] |
| **county_code** | **String** | County Code of the Agency | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **fax_country_code** | **String** | Fax Country Code of the Agency | [optional] |
| **fax_number** | **String** | Fax Number of the Agency | [optional] |
| **name** | **String** | Name of the Agency | [optional] |
| **payee_id** | **String** | Payee ID of the Agency | [optional] |
| **payment_distribution_interval** | **String** | Payment Distribution Interval of the Agency | [optional] |
| **phone_country_code** | **String** | Phone Country Code of the Agency | [optional] |
| **phone_number** | **String** | Phone Number of the Agency | [optional] |
| **state** | **String** | State of the Agency | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **zip_code** | **String** | Zip Code of the Agency | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionAgency.new(
  commission_agency_key: null,
  address1: null,
  address2: null,
  agency_type: null,
  city: null,
  cluster_hierarchy: null,
  country_id: null,
  county_code: null,
  entry_date: null,
  entry_user: null,
  fax_country_code: null,
  fax_number: null,
  name: null,
  payee_id: null,
  payment_distribution_interval: null,
  phone_country_code: null,
  phone_number: null,
  state: null,
  update_date: null,
  update_user: null,
  zip_code: null
)
```

