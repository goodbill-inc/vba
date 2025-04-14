# Vba::EDICustomFieldValueClaim

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edi_custom_field_value_claim_key** | **Integer** | Key value that identifies a custom field value from a claim  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **adjustment_seq** | **String** | Adjustment sequence of the claim where the custom field will be stored |  |
| **batch_claim** | **Integer** | Batch claim number of the claim where the custom field will be stored  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **batch_number** | **Integer** | Batch number of the claim where the custom field will be stored  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **claim_seq** | **String** | Batch claim sequence of the claim where the custom field will be stored |  |
| **edi_custom_field_key** | **Integer** | Key value that identifies a custom field on and EDI load  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **field_data_type** | **String** | Data type of the custom field on the EDI claim load | [optional] |
| **field_value** | **String** | Data value of the custom field on the EDI claim load | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EDICustomFieldValueClaim.new(
  edi_custom_field_value_claim_key: null,
  adjustment_seq: null,
  batch_claim: null,
  batch_number: null,
  claim_seq: null,
  edi_custom_field_key: null,
  field_data_type: null,
  field_value: null
)
```

