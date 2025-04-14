# Vba::ClaimPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_payment_key** | **Integer** | Unique Payment identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | Account of the Payment | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **funding_key** | **Integer** | Funding record of the Payment | [optional] |
| **payment_amount** | **Float** | Amount of the Payment | [optional] |
| **payment_date** | **Time** | Date of the Payment | [optional] |
| **payment_name** | **String** | Name of the Payment | [optional] |
| **payment_type** | **String** | Type of the Payment | [optional] |
| **payor_id** | **String** | Unique identifier for the Payor | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimPayment.new(
  claim_payment_key: null,
  account_key: null,
  entry_date: null,
  entry_user: null,
  funding_key: null,
  payment_amount: null,
  payment_date: null,
  payment_name: null,
  payment_type: null,
  payor_id: null,
  update_date: null,
  update_user: null
)
```

