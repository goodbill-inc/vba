# Vba::PremInvoiceApplyPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** |  |  |
| **subscriber_id** | **String** | Required for:      ApplyPaymentSubscriber      ApplyPaymentSubscriberPayorID      ApplyPaymentSubscriberPlanType      ApplyPaymentSelfAdmin  Not used for:      ApplyPaymentHeaderAdjustment | [optional] |
| **plan_type** | **String** | Required for:      ApplyPaymentSubscriberPlanType  Not used for:      ApplyPaymentSubscriber      ApplyPaymentSubscriberPayorID      ApplyPaymentHeaderAdjustment | [optional] |
| **payor_id** | **String** | Required for:      ApplyPaymentSubscriberPayorID  Not used for:      ApplyPaymentSubscriber      ApplyPaymentSubscriberPlanType      ApplyPaymentHeaderAdjustment | [optional] |
| **prem_payment_key** | **Integer** |  |  |
| **adjustment_reason** | **Integer** | Required for:      ApplyPaymentHeaderAdjustment  Not used for:      ApplyPaymentSubscriber      ApplyPaymentSubscriberPayorID      ApplyPaymentSubscriberPlanType | [optional] |
| **payment_posted** | **Float** |  |  |
| **payment_posted_date** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **prem_invoice_self_admins** | [**Array&lt;PremInvoiceSelfAdmin&gt;**](PremInvoiceSelfAdmin.md) | If using the ApplyPaymentSelfAdmin process, you pass in the PremInvoiceSelfAdmins to apply the payment to.  For non-self-admin invoices leave this empty | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoiceApplyPayment.new(
  invoice_key: null,
  subscriber_id: null,
  plan_type: null,
  payor_id: null,
  prem_payment_key: null,
  adjustment_reason: null,
  payment_posted: null,
  payment_posted_date: null,
  user_id: null,
  prem_invoice_self_admins: null
)
```

