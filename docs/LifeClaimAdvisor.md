# Vba::LifeClaimAdvisor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **volume** | **Float** |  | [optional] |
| **claim_number** | **String** |  | [optional] |
| **death_date** | **Time** |  | [optional] |
| **last_day_worked** | **Time** |  | [optional] |
| **cause_of_death** | **Integer** |  | [optional] |
| **illness** | **Integer** |  | [optional] |
| **illness_duration** | **Integer** |  | [optional] |
| **illness_duration_type** | **String** |  | [optional] |
| **attending_provider_id** | **String** |  | [optional] |
| **attending_first_name** | **String** |  | [optional] |
| **attending_last_name** | **String** |  | [optional] |
| **attending_org_name** | **String** |  | [optional] |
| **attending_address** | **String** |  | [optional] |
| **attending_address2** | **String** |  | [optional] |
| **attending_city** | **String** |  | [optional] |
| **attending_state** | **String** |  | [optional] |
| **attending_zip_code** | **String** |  | [optional] |
| **attending_entity_id** | **String** |  | [optional] |
| **diag_type** | **String** |  | [optional] |
| **diag1** | **String** |  | [optional] |
| **diag2** | **String** |  | [optional] |
| **diag3** | **String** |  | [optional] |
| **diag4** | **String** |  | [optional] |
| **pay_to** | **String** |  | [optional] |
| **mail_to** | **String** |  | [optional] |
| **ex_code1** | **String** |  | [optional] |
| **ex_code2** | **String** |  | [optional] |
| **place** | **String** |  | [optional] |
| **received_date** | **Time** |  | [optional] |
| **procedure_code** | **String** |  | [optional] |
| **create_payment** | **Boolean** |  | [optional] |
| **custom_fields** | [**Array&lt;IDCodeValue&gt;**](IDCodeValue.md) |  | [optional] |
| **beneficiaries** | [**Array&lt;MemberBeneficiary&gt;**](MemberBeneficiary.md) |  | [optional] |
| **life_benefits** | [**Array&lt;ClaimBatchLifeBenefit&gt;**](ClaimBatchLifeBenefit.md) |  | [optional] |
| **documents** | [**Array&lt;NoteNoteAttachment&gt;**](NoteNoteAttachment.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::LifeClaimAdvisor.new(
  subscriber_id: null,
  member_seq: null,
  plan_id: null,
  volume: null,
  claim_number: null,
  death_date: null,
  last_day_worked: null,
  cause_of_death: null,
  illness: null,
  illness_duration: null,
  illness_duration_type: null,
  attending_provider_id: null,
  attending_first_name: null,
  attending_last_name: null,
  attending_org_name: null,
  attending_address: null,
  attending_address2: null,
  attending_city: null,
  attending_state: null,
  attending_zip_code: null,
  attending_entity_id: null,
  diag_type: null,
  diag1: null,
  diag2: null,
  diag3: null,
  diag4: null,
  pay_to: null,
  mail_to: null,
  ex_code1: null,
  ex_code2: null,
  place: null,
  received_date: null,
  procedure_code: null,
  create_payment: null,
  custom_fields: null,
  beneficiaries: null,
  life_benefits: null,
  documents: null
)
```

