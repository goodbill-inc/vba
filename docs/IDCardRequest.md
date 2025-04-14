# Vba::IDCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_card_request_key** | **Integer** | Key value of the ID Card request  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **as_of_date** | **Time** | Date the ID card will be effective | [optional] |
| **cancellation_reason** | **String** | Reason indicating why the ID Card Request was cancelled | [optional] |
| **card_record_status** | **String** | Status of the card | [optional] |
| **division_id** | **String** | Division ID of the subscriber enrollment for the ID card | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | Group ID of the subscriber enrollment for the ID card | [optional] |
| **issuance_type** | **String** | Issuance type of the ID card | [optional] |
| **member_seq** | **String** | Member Sequence of the family member for the ID card | [optional] |
| **renewal** | **Boolean** | Flag indicating the ID card request was for a renewal  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **request_date** | **Time** | Date the ID card was requested | [optional] |
| **request_quantity** | **Integer** | Quantity of ID cards requested | [optional] |
| **request_status** | **String** | Status of the ID card request | [optional] |
| **request_type** | **String** | Identifier for the ID card request type or source | [optional] |
| **subscriber_id** | **String** | Subscriber ID of the subscriber for the ID card | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::IDCardRequest.new(
  id_card_request_key: null,
  as_of_date: null,
  cancellation_reason: null,
  card_record_status: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  issuance_type: null,
  member_seq: null,
  renewal: null,
  request_date: null,
  request_quantity: null,
  request_status: null,
  request_type: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

