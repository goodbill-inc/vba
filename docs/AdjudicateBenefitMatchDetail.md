# Vba::AdjudicateBenefitMatchDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  | [optional] |
| **batch_claim** | **Integer** |  | [optional] |
| **claim_seq** | **String** |  | [optional] |
| **adjustment_seq** | **String** |  | [optional] |
| **service_date** | **Time** |  | [optional] |
| **benefit_code** | **String** |  | [optional] |
| **place_of_service_match** | **Integer** |  | [optional] |
| **procedure_code_match** | **Integer** |  | [optional] |
| **diagnostic_code_match** | **Integer** |  | [optional] |
| **provider_type_match** | **Integer** |  | [optional] |
| **specialty_match** | **Integer** |  | [optional] |
| **network_match** | **Integer** |  | [optional] |
| **relationship_match** | **Integer** |  | [optional] |
| **gender_match** | **Integer** |  | [optional] |
| **service_age_match** | **Integer** |  | [optional] |
| **received_age_match** | **Integer** |  | [optional] |
| **months_enrolled_match** | **Integer** |  | [optional] |
| **days_enrolled_match** | **Integer** |  | [optional] |
| **modifier_match** | **Integer** |  | [optional] |
| **billed_match** | **Integer** |  | [optional] |
| **billing_taxonomy_match** | **Integer** |  | [optional] |
| **rendering_taxonomy_match** | **Integer** |  | [optional] |
| **service_facility_taxonomy_match** | **Integer** |  | [optional] |
| **benefit_description** | **String** |  | [optional] |
| **match_count** | **Integer** |  | [optional] |
| **total_match_count** | **Integer** |  | [optional] |
| **benefit_effective_date** | **Time** |  | [optional] |
| **benefit_term_date** | **Time** |  | [optional] |
| **federal_id_match** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AdjudicateBenefitMatchDetail.new(
  batch_number: null,
  batch_claim: null,
  claim_seq: null,
  adjustment_seq: null,
  service_date: null,
  benefit_code: null,
  place_of_service_match: null,
  procedure_code_match: null,
  diagnostic_code_match: null,
  provider_type_match: null,
  specialty_match: null,
  network_match: null,
  relationship_match: null,
  gender_match: null,
  service_age_match: null,
  received_age_match: null,
  months_enrolled_match: null,
  days_enrolled_match: null,
  modifier_match: null,
  billed_match: null,
  billing_taxonomy_match: null,
  rendering_taxonomy_match: null,
  service_facility_taxonomy_match: null,
  benefit_description: null,
  match_count: null,
  total_match_count: null,
  benefit_effective_date: null,
  benefit_term_date: null,
  federal_id_match: null
)
```

