# Vba::BillingCycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_cycle_id** | **String** | Unique identifier for the Billing Cycle |  |
| **cycle_factor** | **Float** | Cycle Factor is a multiplier applied to the rate | [optional] |
| **cycle_frequency** | **Integer** | Cycle Frequency is the number of times the date type occurs | [optional] |
| **cycle_type** | **String** | Cycle Type is the date type of the Billing Cycle | [optional] |
| **description** | **String** | Description of the Billing Cycle | [optional] |
| **discount_pct** | **Float** | No longer in use. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **individual_billing** | **Boolean** | Individual Billing identifies the Billing Cycle for Subscriber level invoices  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **months** | **Integer** | Months on invoices with this Billing Cycle | [optional] |
| **times_per_year** | **Integer** | No longer in use. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BillingCycle.new(
  billing_cycle_id: null,
  cycle_factor: null,
  cycle_frequency: null,
  cycle_type: null,
  description: null,
  discount_pct: null,
  entry_date: null,
  entry_user: null,
  individual_billing: null,
  months: null,
  times_per_year: null,
  update_date: null,
  update_user: null
)
```

