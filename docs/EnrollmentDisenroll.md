# Vba::EnrollmentDisenroll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user for which this request is executed on behalf of. |  |
| **subscriber_id** | **String** | The Subscirber ID of the Member being disenrolled.  You can get the Subscriber ID via the SearchConfig process using ENROLLMENT searchConfigId (https://vbapi-docs.vbasoftware.com/developer-portal/search/). |  |
| **member_seq** | **String** | The Member Sequence of the Member being disenrolled.  If this is a Subscriber Disenroll, the Member Sequence provided is the Insured Member Sequence.  You can get the Member Seq via the SearchConfig process using ENROLLMENT searchConfigId (https://vbapi-docs.vbasoftware.com/developer-portal/search/). |  |
| **group_id** | **String** | The Group ID of the current Subenrollment record (the members current or most recent enrollment).  You can use the List SubEnrollment API (https://vbapi.vbasoftware.com/vbasoftware/subscribers/{subscriberID}/enrollments) to get the values you need. |  |
| **division_id** | **String** | The Division ID of the current Subenrollment record (the members current or most recent enrollment).  You can use the List SubEnrollment API (https://vbapi.vbasoftware.com/vbasoftware/subscribers/{subscriberID}/enrollments) to get the values you need. |  |
| **group_coverage_start** | **Time** | The Group Coverage Start of the current Subenrollment record (the members current or most recent enrollment).  You can use the List SubEnrollment API (https://vbapi.vbasoftware.com/vbasoftware/subscribers/{subscriberID}/enrollments) to get the values you need.  This is only required on Subscriber/Member Disenrolls, for Group/Division Disenroll, this can be blank. |  |
| **start_date** | **Time** | The Start Date of the current Subenrollment record (the members current or most recent enrollment).  You can use the List SubEnrollment API (https://vbapi.vbasoftware.com/vbasoftware/subscribers/{subscriberID}/enrollments) to get the values you need.  This is only required on Subscriber/Member Disenrolls, for Group/Division Disenroll, this can be blank. |  |
| **disenroll_date** | **Time** | The Disenroll Date for this disenroll process. |  |
| **term_date** | **Time** | Term Date is an informational field used in some reports.  It doesn&#39;t impact the process but is often populated with the same value as the Disenroll Date. | [optional] |
| **subscriber** | **Boolean** | The Subscriber value is a flag indicating if the member being disenrolled is the Insured.  Send 1 if this is the Subscriber, send 0 if this is a Spouse/Dependent/Other.  This is only required on Subscriber/Member Disenrolls, for Group/Division Disenroll, this can be blank. |  |
| **reason_id** | **Integer** | Reason ID is the reson for this disenroll.  You can get a list of valid Reason IDs from the List Reasons API (https://vbapi.vbasoftware.com/vbasoftware/reasons). |  |
| **premium** | **Float** | When not using the PremRates list of PremRate_Key values, this indicates the COBRA Premium for some reports. | [optional] |
| **disenroll_family** | **Integer** | The DisenrollFamily indicator lets the Disenroll process know exactly how to perform the Disenroll.  You can get a list of valid DisenrollFamily values from the List Disenrollment Family Options API (https://vbapi.vbasoftware.com/vbasoftware/disenroll-family-options). |  |
| **terminate_auth** | **Boolean** | The TerminateAuth flag lets us know if Auths approved or requested beyond the Disenroll Date should be cancelled. |  |
| **disenroll_future** | **Integer** | The DisenrollFuture indicator will tell us how to handle any future enrollments beyond the Disenroll Date related to this disenroll.  The valid values are:  2 - Disenroll Future Enrollments  3 - Do Not Disenroll any Future Enrollments |  |
| **prem_rates** | **Array&lt;Integer&gt;** | The list of COBRA Rates associated with this Disenroll process. | [optional] |
| **prem_invoice_adjustments** | [**Array&lt;PremInvoiceAdjustment&gt;**](PremInvoiceAdjustment.md) | If you intend to auto-adjust existing premiums based on this disenroll you would populate your adjustments here. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EnrollmentDisenroll.new(
  user_id: null,
  subscriber_id: null,
  member_seq: null,
  group_id: null,
  division_id: null,
  group_coverage_start: null,
  start_date: null,
  disenroll_date: null,
  term_date: null,
  subscriber: null,
  reason_id: null,
  premium: null,
  disenroll_family: null,
  terminate_auth: null,
  disenroll_future: null,
  prem_rates: null,
  prem_invoice_adjustments: null
)
```

