# Vba::PremInvoiceGroupSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_count** | **Integer** |  |  |
| **paid_subscriber_count** | **Integer** |  |  |
| **dependent_count** | **Integer** |  |  |
| **paid_dependent_count** | **Integer** |  |  |
| **member_count** | **Integer** |  |  |
| **paid_member_count** | **Integer** |  |  |
| **premium** | **Float** |  |  |
| **premium_received** | **Float** |  |  |
| **posted_payment** | **Float** |  |  |
| **unposted_amount** | **Float** |  |  |
| **amount_due** | **Float** |  |  |
| **header_adjustment** | **Float** |  |  |
| **subscriber_adjustment** | **Float** |  |  |
| **adjustment_received** | **Float** |  |  |
| **detail_adjustment** | **Float** |  |  |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceGroupSummary.new(
  subscriber_count: null,
  paid_subscriber_count: null,
  dependent_count: null,
  paid_dependent_count: null,
  member_count: null,
  paid_member_count: null,
  premium: null,
  premium_received: null,
  posted_payment: null,
  unposted_amount: null,
  amount_due: null,
  header_adjustment: null,
  subscriber_adjustment: null,
  adjustment_received: null,
  detail_adjustment: null
)
```

