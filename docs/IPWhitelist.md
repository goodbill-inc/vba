# Vba::IPWhitelist

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_whitelist_key** | **Integer** | Identity key for the record.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **description** | **String** | User-defined description for the record to help identify the reason for usage. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **i_p_address** | **String** | IP Address that will be whitelisted for accessing the APIs. This field supports both single IPv4 addresses and CIDR blocks for specifying IP ranges.     - **Single IP Address:** Provide a specific IPv4 address (e.g., \&quot;192.168.1.1\&quot;) to whitelist that single address.  - **CIDR Block:** Provide a CIDR block (e.g., \&quot;192.168.1.0/24\&quot;) to whitelist a range of addresses.                 Notes:  - The value must be unique within the whitelist.  - The maximum length of this field is 39 characters to accommodate IPv4 addresses and CIDR notation.  - Ensure that the provided IP address or CIDR block is correctly formatted to avoid validation errors. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::IPWhitelist.new(
  ip_whitelist_key: null,
  description: null,
  entry_date: null,
  entry_user: null,
  i_p_address: null,
  update_date: null,
  update_user: null
)
```

