# Vba::GetPremInvoiceSubscriberListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** | Unique identifier for the invoice. | [optional] |
| **group_id** | **String** | Identifier for the group associated with the invoice. | [optional] |
| **division_id** | **String** | Identifier for the division within the group. | [optional] |
| **subscriber_id** | **String** | Identifier for the subscriber. | [optional] |
| **subscriber_name** | **String** | Name of the subscriber. | [optional] |
| **premium** | **Float** | Total premium amount for the invoice. | [optional] |
| **adjustment** | **Float** | Adjustment amount applied to the invoice. | [optional] |
| **received** | **Float** | Total amount received for the invoice. | [optional] |
| **due** | **Float** | Total amount due for the invoice. Due &#x3D; (Premium +  Adjustment) -  Received | [optional] |
| **premium_waived** | **Boolean** | Flag indicating whether the premium was waived. | [optional] |
| **dependent_count** | **Integer** | Count of dependents associated with the subscriber. | [optional] |
| **member_count** | **Integer** | Total count of members (subscriber and dependents). | [optional] |
| **premium_waived_calc** | **Integer** | Calculated value indicating whether the premium was waived. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GetPremInvoiceSubscriberListResult.new(
  invoice_key: null,
  group_id: null,
  division_id: null,
  subscriber_id: null,
  subscriber_name: null,
  premium: null,
  adjustment: null,
  received: null,
  due: null,
  premium_waived: null,
  dependent_count: null,
  member_count: null,
  premium_waived_calc: null
)
```

