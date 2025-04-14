# Vba::FeeSchedProviderTypeDiscount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_sched_provider_type_discount_key** | **Integer** | Unique identifier assigned to the provider type discount.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **discount_pct** | **Float** | Percentage that the service line will be adjusted after it has been priced by the ‘Fee Schedule’. | [optional] |
| **discount_seq** | **Integer** | Sequential identifier that determines the order of adjudication for each rule. (Seq. 01 will be applied first and so forth.)  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **effective_date** | **Time** | Date when the discount will begin/began applying to claims. This date will be compared to the date of service on the claim. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **fee_sched** | **String** | Unique name given to the Fee Scheudle. |  |
| **provider_type** | **String** | Identifies Provider types that should receive the selected discount percentage. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FeeSchedProviderTypeDiscount.new(
  fee_sched_provider_type_discount_key: null,
  discount_pct: null,
  discount_seq: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  fee_sched: null,
  provider_type: null,
  update_date: null,
  update_user: null
)
```

