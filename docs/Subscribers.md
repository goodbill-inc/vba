# Vba::Subscribers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | Unique identifier for each family unit inside VBA. This value can be imported, assigned or randomly assigned by the system at time of record creation. | [optional] |
| **address** | **String** | Address of the Subscriber. | [optional] |
| **address2** | **String** | Address Line 2 of the Subscriber. | [optional] |
| **billing_cycle_id** | **String** | Assigns a default billing cycle to be used when the Group Division &#39;Inv. Level&#39; is set to &#39;Subscriber&#39;. | [optional] |
| **billing_invoice_create** | **Integer** | Specifies the number of projected billing cycles to include per invoice generation. | [optional] |
| **city** | **String** | City of the Subscriber. | [optional] |
| **country_id** | **String** | Country of the Subscriber. | [optional] |
| **county_code** | **String** | County of the Subscriber. | [optional] |
| **date_enrolled** | **Time** | Date when the Subscriber was first enrolled. | [optional] |
| **disenroll_date** | **Time** | Date when the Subscriber was disenrolled. | [optional] |
| **email** | **String** | Email of the Subscriber. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **first_name** | **String** | First name of the Subscriber. | [optional] |
| **home_country_code** | **String** | Country Code for the home phone number of the Subscriber. | [optional] |
| **home_phone** | **String** | Home phone number of the Subscriber. | [optional] |
| **issue_state** | **String** | For Life &amp; Disability clients, this holds the issue state for processing taxes and reporting. | [optional] |
| **last_name** | **String** | Last name of the Subscriber. | [optional] |
| **middle_name** | **String** | Middle initial of the Subscriber. | [optional] |
| **name_suffix** | **String** | Suffix or title associated with the Subscriber. | [optional] |
| **notes** | **String** | No longer in use. Replaced by NotData, NoteSource and NoteReference tables. | [optional] |
| **other_name** | **String** | Information only. Used for custom reporting or client integrations. | [optional] |
| **pay_period** | **String** | Number of annual pay periods for the Subscriber. This field is informational only. | [optional] |
| **pay_to_account** | **Integer** | References the FundingAccount.Account_Key and indicates the account to pay when payment reference this subscriber. | [optional] |
| **pend_ex_code** | **String** | Assigns an Ex Code that can be applied to newly adjudicated Subscriber claims. | [optional] |
| **pend_flag** | **String** | While active, assigned Ex Codes will be applied to any newly adjudicated Subscriber claims. | [optional] |
| **region_code** | **String** | Region code of the Member&#39;s primary address. | [optional] |
| **salutation** | **String** | Used by CSR to indicate the proper salutation used when communicating with the Insured. | [optional] |
| **sponsor_id** | **String** | This holds the Subscriber ID of the subscriber that sponsored this subscriber. | [optional] |
| **sponsor_relate_code** | **String** | This identifies the relationship between the sponor and this subscriber. | [optional] |
| **state** | **String** | State of the Subscriber. | [optional] |
| **status** | **String** | No longer in use. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **work_country_code** | **String** | Country Code for the work phone number of the Subscriber. | [optional] |
| **work_phone** | **String** | Work phone number of the Subscriber. | [optional] |
| **zip_code** | **String** | Zip Code of the Subscriber. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Subscribers.new(
  subscriber_id: null,
  address: null,
  address2: null,
  billing_cycle_id: null,
  billing_invoice_create: null,
  city: null,
  country_id: null,
  county_code: null,
  date_enrolled: null,
  disenroll_date: null,
  email: null,
  entry_date: null,
  entry_user: null,
  first_name: null,
  home_country_code: null,
  home_phone: null,
  issue_state: null,
  last_name: null,
  middle_name: null,
  name_suffix: null,
  notes: null,
  other_name: null,
  pay_period: null,
  pay_to_account: null,
  pend_ex_code: null,
  pend_flag: null,
  region_code: null,
  salutation: null,
  sponsor_id: null,
  sponsor_relate_code: null,
  state: null,
  status: null,
  update_date: null,
  update_user: null,
  work_country_code: null,
  work_phone: null,
  zip_code: null
)
```

