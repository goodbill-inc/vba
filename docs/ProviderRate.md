# Vba::ProviderRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_rate_key** | **Integer** | Unique identifier for each Rate setting. |  |
| **add_on_rate_drg** | **Boolean** | Indicates that this line is added onto an existing ‘DRG’ rate. |  |
| **add_on_rate_per_diem** | **Boolean** | Indicates that this line is added onto an existing ‘Per Diem’ rate. |  |
| **effective_date** | **Time** | Start of the range of acceptable service dates for the rate line. | [optional] |
| **end_date** | **Time** | End of the range of acceptable service dates for the rate line. | [optional] |
| **ex_code** | **String** | Ex code associated with the price line. | [optional] |
| **inpatient** | **Boolean** | Indicates whether the associated rate is applied to inpatient services. |  |
| **outpatient** | **Boolean** | Indicates whether the associated rate is applied to outpatient services. |  |
| **percent_type** | **String** | No longer in use. | [optional] |
| **provider_id** | **String** | Unique idenfitier assigned to the Proivider record. |  |
| **rate** | **Float** | Rate used in price calculations. | [optional] |
| **rate_percent** | **Boolean** | Tells the system to read the rate as a percentage instead of flat rate. |  |
| **rate_type** | **String** | Determines how the selected rate is applied: Per Service Line – applies the associated rate to each service line that matches the defined criteria. All Service Lines – if any line within a claim matches the criteria, the associated rate is applied to ALL service lines on the claim. Per Unit – multiplies the rate by the number of units on the matching service line. Case Rate – treats the entire claim like a case. The ‘Case Rate’ is applied to an available matching line, and all other service lines are repriced to zero dollars. Only ONE ‘Case Rate’ is allowed per claim. If multiple service lines match a ‘Case Rate’, the claim will error. ASC Grouper – treats the entire claim like case. The ‘ASC Grouper Rate’ is applied to ALL available matching lines, and all other service lines are repriced to zero dollars. This rate is like ‘Case Rate’, but it allows the matching of multiple service lines. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderRate.new(
  provider_rate_key: null,
  add_on_rate_drg: null,
  add_on_rate_per_diem: null,
  effective_date: null,
  end_date: null,
  ex_code: null,
  inpatient: null,
  outpatient: null,
  percent_type: null,
  provider_id: null,
  rate: null,
  rate_percent: null,
  rate_type: null
)
```

