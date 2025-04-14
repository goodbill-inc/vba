# Vba::MemberBeneficiary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **beneficiary_id** | **String** | Unique identifier for this beneficiary on this member. |  |
| **address** | **String** | Primary address of the Beneficiary. | [optional] |
| **address2** | **String** | Address line 2 of the Beneficiary&#39;s primary address. | [optional] |
| **assignment** | **Float** | A set amount paid to a beneficiary. | [optional] |
| **city** | **String** | City of the Beneficiary&#39;s primary address. | [optional] |
| **country_id** | **String** | Identifier of the country of the Beneficiary&#39;s primary address. | [optional] |
| **date_of_birth** | **Time** | Date of birth of the Beneficiary. | [optional] |
| **end_date** | **Time** | End date of the Beneficiary&#39;s status. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exclude_interest** | **Boolean** | Indicates if interest should be excluded when adjudicating Life claims paid to this beneficiary.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **first_name** | **String** | First name of the Beneficiary. | [optional] |
| **last_name** | **String** | Last name of the Beneficiary. | [optional] |
| **long_name** | **String** | Full name of the Beneficiary. | [optional] |
| **middle_name** | **String** | Middle name of the Beneficiary. | [optional] |
| **percentage** | **Float** | Percentage of the benefit that is allotted to the associated Beneficiary. | [optional] |
| **primary_beneficiary** | **Boolean** | Indicates whether the associated Beneficiary is the primary Beneficiary. | [optional] |
| **relationship** | **String** | Relationship of the Beneficiary to the Member. | [optional] |
| **ssn** | **String** | Social security number of the Beneficiary. | [optional] |
| **secondary_beneficiary** | **Boolean** | This flag indicates if this beneficiary is secondary. | [optional] |
| **start_date** | **Time** | Start date of the Beneficiary&#39;s status. | [optional] |
| **state** | **String** | State of the Beneficiary&#39;s primary address. | [optional] |
| **tertiary_beneficiary** | **Boolean** | This flag indicates if this tertiary is secondary. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **zip** | **String** | Zip code of the Beneficiary&#39;s primary address. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberBeneficiary.new(
  subscriber_id: null,
  member_seq: null,
  beneficiary_id: null,
  address: null,
  address2: null,
  assignment: null,
  city: null,
  country_id: null,
  date_of_birth: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  exclude_interest: null,
  first_name: null,
  last_name: null,
  long_name: null,
  middle_name: null,
  percentage: null,
  primary_beneficiary: null,
  relationship: null,
  ssn: null,
  secondary_beneficiary: null,
  start_date: null,
  state: null,
  tertiary_beneficiary: null,
  update_date: null,
  update_user: null,
  zip: null
)
```

