# Vba::VBAPremInvoiceSubscriberHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustment** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **invoice_key** | **Integer** |  | [optional] |
| **prem_rate_id** | **String** |  | [optional] |
| **category_description** | **String** |  | [optional] |
| **basis_description** | **String** |  | [optional] |
| **plan_name** | **String** |  | [optional] |
| **tier** | **String** |  | [optional] |
| **rate_type** | **String** |  | [optional] |
| **rate_type_description** | **String** |  | [optional] |
| **rate_description** | **String** |  | [optional] |
| **premium** | **Float** |  | [optional] |
| **premium_received** | **Float** |  | [optional] |
| **reason** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAPremInvoiceSubscriberHistory.new(
  adjustment: null,
  subscriber_id: null,
  invoice_key: null,
  prem_rate_id: null,
  category_description: null,
  basis_description: null,
  plan_name: null,
  tier: null,
  rate_type: null,
  rate_type_description: null,
  rate_description: null,
  premium: null,
  premium_received: null,
  reason: null
)
```

