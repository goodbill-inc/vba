# Vba::DisabilityEventDeductionChanged

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disability_event_deduction_changed_key** | **Integer** | Unique Identifier for the DisabilityEventDeductionChanged table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **deduction_type** | **String** | Identifies the type of deduction associated with the disability event change. &#39;Deduction Types&#39; are configured within &#39;Disability Claim Configuration&#39;. | [optional] |
| **disability_type** | **String** | Identifies the type of disability (injury or illness) associated with the deduction change. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **ex_code** | **String** | Indicates the Ex Code that will be applied to the claim receiving the disability event deduction change. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DisabilityEventDeductionChanged.new(
  disability_event_deduction_changed_key: null,
  deduction_type: null,
  disability_type: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  update_date: null,
  update_user: null
)
```

