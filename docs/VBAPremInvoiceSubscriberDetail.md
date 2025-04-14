# Vba::VBAPremInvoiceSubscriberDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** | The key of the invoice associated with this subscriber detail. | [optional] |
| **group_id** | **String** | The group ID of the subscriber. | [optional] |
| **division_id** | **String** | The division ID of the subscriber. | [optional] |
| **subscriber_id** | **String** | The ID of the subscriber. | [optional] |
| **prem_rate_key** | **Integer** | The key of the premium rate associated with this subscriber detail. | [optional] |
| **premium** | **Float** | The premium amount. | [optional] |
| **total_premium_received** | **Float** | The total premium received. | [optional] |
| **payee_id** | **String** | The payee ID. | [optional] |
| **rate_type** | **String** | The type of rate (e.g., Member Rate). | [optional] |
| **rate_display** | **String** | The display of the rate. | [optional] |
| **prem_rate_basis_description** | **String** | The description of the rate basis. | [optional] |
| **prem_rate_category** | **String** | The category of the premium rate. | [optional] |
| **volume** | **Float** | The volume associated with this subscriber detail. | [optional] |
| **dist_volume** | **Float** | The distributed volume. | [optional] |
| **premium_received_date** | **Time** | The date when premium was received. | [optional] |
| **premium_received** | **Float** | The premium received amount. | [optional] |
| **payment_posted** | **Float** | The amount of payment posted. | [optional] |
| **payment_posted_date** | **Time** | The date when payment was posted. | [optional] |
| **payment_date** | **Time** | The date of payment. | [optional] |
| **payment_amount** | **Float** | The amount of payment. | [optional] |
| **payment_id** | **String** | The ID of the payment. | [optional] |
| **payment_name** | **String** | The name of the payment. | [optional] |
| **update_date** | **Time** | The date of the last update. | [optional] |
| **update_user** | **String** | The user who made the last update. | [optional] |
| **prem_invoice_received_key** | **Integer** | The key of the premium invoice received. | [optional] |
| **premium_waived** | **Boolean** | Indicates if premium is waived for this subscriber. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAPremInvoiceSubscriberDetail.new(
  invoice_key: null,
  group_id: null,
  division_id: null,
  subscriber_id: null,
  prem_rate_key: null,
  premium: null,
  total_premium_received: null,
  payee_id: null,
  rate_type: null,
  rate_display: null,
  prem_rate_basis_description: null,
  prem_rate_category: null,
  volume: null,
  dist_volume: null,
  premium_received_date: null,
  premium_received: null,
  payment_posted: null,
  payment_posted_date: null,
  payment_date: null,
  payment_amount: null,
  payment_id: null,
  payment_name: null,
  update_date: null,
  update_user: null,
  prem_invoice_received_key: null,
  premium_waived: null
)
```

