# Vba::Networks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Unique identifier assigned to the network. |  |
| **ap_c_schedule** | **String** | Identifies the default APC schedule that is to be used for the network. | [optional] |
| **address** | **String** | Address line 1 of the network. | [optional] |
| **address_2** | **String** | Address line 2 of the network. | [optional] |
| **city** | **String** | City of the network&#39;s address. | [optional] |
| **claim_days_allowed** | **Integer** | This option is informational only and currently has no functionality. | [optional] |
| **dr_g_schedule** | **String** | Identifies the default DRG schedule that is to be used for the network. | [optional] |
| **e_mail** | **String** | Email of the Network. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Specifies the Ex Code that will be applied while the Ex Code flag is selected. | [optional] |
| **ex_code_flag** | **String** | This option tells adjudication to apply an Ex Code to claims associated with the network. | [optional] |
| **fax** | **String** | Fax number of the Network. | [optional] |
| **logo_file** | **String** | Allows the User to upload a logo that can be attached to custom reporting. | [optional] |
| **network_description** | **String** | Description of the associated network. | [optional] |
| **phone** | **String** | Phone number of the Network. | [optional] |
| **state** | **String** | State of the network&#39;s address. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **withhold_percent** | **Float** | This option is informational only and currently has no functionality. | [optional] |
| **zip_code** | **String** | Zip code of the Network&#39;s address. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Networks.new(
  network_id: null,
  ap_c_schedule: null,
  address: null,
  address_2: null,
  city: null,
  claim_days_allowed: null,
  dr_g_schedule: null,
  e_mail: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  ex_code_flag: null,
  fax: null,
  logo_file: null,
  network_description: null,
  phone: null,
  state: null,
  update_date: null,
  update_user: null,
  withhold_percent: null,
  zip_code: null
)
```

