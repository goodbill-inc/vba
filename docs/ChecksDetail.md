# Vba::ChecksDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_id** | **Integer** | ID of the check. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **item_seq** | **Integer** | Sequential identifier of the check item. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adjustment** | **Float** | Adjustment amount for the check line. | [optional] |
| **admin_amt** | **Float** | Admin fee associated with the check line. | [optional] |
| **amount_due** | **Float** | Total amount due for the check. | [optional] |
| **claim_number** | **Integer** | Number of the claim associated with the check line. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **interest** | **Float** | Interest amount associated with the check line. | [optional] |
| **item_date** | **Time** | Date when the check line item was received. | [optional] |
| **item_description** | **String** | Description of the item associated with the check line. | [optional] |
| **item_type** | **String** | Identifies the type of item associated with the check line. | [optional] |
| **message** | **String** | The message on the check. | [optional] |
| **processed** | **String** | Indicates tha the check has been processed. | [optional] |
| **provider_id** | **String** | ID of the Provider associated with the check line. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ChecksDetail.new(
  check_id: null,
  item_seq: null,
  adjustment: null,
  admin_amt: null,
  amount_due: null,
  claim_number: null,
  entry_date: null,
  entry_user: null,
  interest: null,
  item_date: null,
  item_description: null,
  item_type: null,
  message: null,
  processed: null,
  provider_id: null,
  update_date: null,
  update_user: null
)
```

