# Vba::VBABenefitInquiryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **plan_year** | **String** |  | [optional] |
| **diag_code** | **String** |  | [optional] |
| **diag_code_type** | **String** |  | [optional] |
| **procedure_code** | **String** |  | [optional] |
| **place_of_service** | **String** |  | [optional] |
| **service_types** | **Array&lt;String&gt;** |  | [optional] |
| **taxonomy_code** | **String** |  | [optional] |
| **as_of_date** | **Time** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBABenefitInquiryRequest.new(
  subscriber_id: null,
  member_seq: null,
  group_id: null,
  plan_id: null,
  plan_year: null,
  diag_code: null,
  diag_code_type: null,
  procedure_code: null,
  place_of_service: null,
  service_types: null,
  taxonomy_code: null,
  as_of_date: null
)
```

