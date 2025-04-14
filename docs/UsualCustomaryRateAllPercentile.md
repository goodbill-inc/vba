# Vba::UsualCustomaryRateAllPercentile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_type** | **String** |  | [optional] |
| **zip_code_start** | **String** |  | [optional] |
| **zip_code_end** | **String** |  | [optional] |
| **modifier** | **String** |  | [optional] |
| **procedure_code** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **rate_50** | **Float** |  | [optional] |
| **rate_60** | **Float** |  | [optional] |
| **rate_70** | **Float** |  | [optional] |
| **rate_75** | **Float** |  | [optional] |
| **rate_80** | **Float** |  | [optional] |
| **rate_85** | **Float** |  | [optional] |
| **rate_90** | **Float** |  | [optional] |
| **rate_95** | **Float** |  | [optional] |
| **rate_medicare** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::UsualCustomaryRateAllPercentile.new(
  claim_type: null,
  zip_code_start: null,
  zip_code_end: null,
  modifier: null,
  procedure_code: null,
  effective_date: null,
  term_date: null,
  rate_50: null,
  rate_60: null,
  rate_70: null,
  rate_75: null,
  rate_80: null,
  rate_85: null,
  rate_90: null,
  rate_95: null,
  rate_medicare: null
)
```

