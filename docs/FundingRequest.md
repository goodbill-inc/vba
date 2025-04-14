# Vba::FundingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_key** | **Integer** | ID of the funding request.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **account_key** | **Integer** | ID of the Account associated with the funding request. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **funding_format** | **String** | Format of the funding request. | [optional] |
| **invalid_request** | **Boolean** | Indicates that the funding request is invalid. | [optional] |
| **payor_id** | **String** | ID of the Payor associated with the funding request. | [optional] |
| **primary_contact_method** | **String** | Method of the funding request. | [optional] |
| **request_amount** | **Float** | Amount of the funding request. | [optional] |
| **request_date** | **Time** | Date when the funding request was submitted. |  |
| **request_status** | **String** | Indicates the &#39;Request Status&#39; of the funding request. &#39;Request Types&#39; are configured within &#39;Accounting Configuration&#39;. | [optional] |
| **request_type** | **String** | Indicates the &#39;Request Type&#39; of the funding request. &#39;Request Types&#39; are configured within &#39;Accounting Configuration&#39;. | [optional] |
| **request_user** | **String** | ID of the User who submitted the funding request. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingRequest.new(
  request_key: null,
  account_key: null,
  entry_date: null,
  entry_user: null,
  funding_format: null,
  invalid_request: null,
  payor_id: null,
  primary_contact_method: null,
  request_amount: null,
  request_date: null,
  request_status: null,
  request_type: null,
  request_user: null,
  update_date: null,
  update_user: null
)
```

