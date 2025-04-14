# Vba::Funding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_key** | **Integer** | ID of the Funding record.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **account_key** | **Integer** | ID of the funding account. | [optional] |
| **cleared_amount** | **Float** | Amount that was Cleared. | [optional] |
| **cleared_date** | **Time** | Date the Amount was Cleared. | [optional] |
| **deposit_key** | **Integer** | ID of the Deposit. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **funding_status** | **String** | Status of the Funding. | [optional] |
| **funding_type** | **String** | Type of the Funding. | [optional] |
| **issue_amount** | **Float** | Amount Issued of the Funding record. | [optional] |
| **issue_date** | **Time** | Date of the Issue. | [optional] |
| **issue_id** | **String** | ID of the Issue. | [optional] |
| **issue_name** | **String** | Name of the Issue. | [optional] |
| **issue_type** | **String** | The transaction type of the Issue Amount. | [optional] |
| **payor_id** | **String** | ID of the Payor associated with the Funding record. | [optional] |
| **received_date** | **Time** | Date Funding was Received. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Funding.new(
  funding_key: null,
  account_key: null,
  cleared_amount: null,
  cleared_date: null,
  deposit_key: null,
  entry_date: null,
  entry_user: null,
  funding_status: null,
  funding_type: null,
  issue_amount: null,
  issue_date: null,
  issue_id: null,
  issue_name: null,
  issue_type: null,
  payor_id: null,
  received_date: null,
  update_date: null,
  update_user: null
)
```

