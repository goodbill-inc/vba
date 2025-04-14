# Vba::CareCaseClinicalTrial

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_clinical_trial_key** | **Integer** | Identifier for the Clinical Trial  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **care_case_clinical_trial_arm_id** | **String** | User Managed field that ties to the Clinical Trial Arm in the system | [optional] |
| **care_case_clinical_trial_reason_id** | **String** | User Managed field that ties to the Clinical Trial Reason in the system. | [optional] |
| **care_case_clinical_trial_study_phase_id** | **String** | User Managed field that ties to the Study Phase in the system | [optional] |
| **case_key** | **Integer** | Identifier of the case. | [optional] |
| **comment** | **String** | User Managed field that displays the Comment of this Clinical Trial | [optional] |
| **disease** | **String** | User Managed field that displays the Disease of this Clinical Trial | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **inclusion_exclusion** | **String** | User Managed field that displays the Inclusion Exclusion of this Clinical Trial | [optional] |
| **location** | **String** | User Managed field that displays the Location of this Clinical Trial | [optional] |
| **protocol_number** | **String** | User Managed field that displays the Protocol Number of this Clinical Trial | [optional] |
| **study_drug** | **String** | User Managed field that displays the Study Drug of this Clinical Trial | [optional] |
| **study_length** | **String** | User Managed field that displays the Study Length of this Clinical Trial | [optional] |
| **study_title** | **String** | User Managed field that displays the Study Title of this Clinical Trial | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **website** | **String** | User Managed field that displays the Website of this Clinical Trial | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseClinicalTrial.new(
  care_case_clinical_trial_key: null,
  care_case_clinical_trial_arm_id: null,
  care_case_clinical_trial_reason_id: null,
  care_case_clinical_trial_study_phase_id: null,
  case_key: null,
  comment: null,
  disease: null,
  entry_date: null,
  entry_user: null,
  inclusion_exclusion: null,
  location: null,
  protocol_number: null,
  study_drug: null,
  study_length: null,
  study_title: null,
  update_date: null,
  update_user: null,
  website: null
)
```

