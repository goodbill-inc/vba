# Vba::Auth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_number** | **String** | Unique identifier assigned to the authorization. | [optional] |
| **actual_from** | **Time** | Date when authorization usage begins/began. | [optional] |
| **actual_location** | **String** | Location where the authorization was used. | [optional] |
| **actual_thru** | **Time** | Date when authorization usage ends/ended. | [optional] |
| **additional_visits** | **Float** | No longer in use. This would track if an Auth had been adjusted to increase the number of approved visits. This is now done through the Auth Adjustment process where a new Auth is created referencing the original Auth. | [optional] |
| **amount_actual** | **Float** | Total approved amount that has been used. | [optional] |
| **amount_approved** | **Float** | Approved amount of the authorization. | [optional] |
| **amount_denied** | **Float** | Denied amount of the authorization. | [optional] |
| **amount_requested** | **Float** | Requested amount of the authorization. | [optional] |
| **approved_by** | **String** | User that either approved, pended, or denied the authorization. | [optional] |
| **approved_date** | **Time** | Date when the authorization was approved, denied, or pended as specified by the status field. | [optional] |
| **approved_frequency** | **String** | Authorization frequency that is/was approved. | [optional] |
| **approved_from** | **Time** | Date when the authorization approval starts/started. | [optional] |
| **approved_location** | **String** | Approved location of the authorization. | [optional] |
| **approved_thru** | **Time** | Date when the authorization approval expires/expired. | [optional] |
| **assigned_user** | **String** | User that the authorization was assigned to. | [optional] |
| **audit_flag** | **String** | Information field used in custom reporting. | [optional] |
| **auth_code** | **String** | Code that indicates the authorization status. | [optional] |
| **auth_type** | **String** | Indicates the type of authorization. Auth types can be configured within &#39;Auth Configuration&#39;. | [optional] |
| **auto_accident** | **String** | Check this box to indicate that the authorization is related to an automotive accident. | [optional] |
| **body_code_id** | **String** | No longer in use. | [optional] |
| **care_manager_key** | **Integer** | ID of the Care Manager associated with the auth. | [optional] |
| **case_index_actual** | **String** | Informational field used to identify the case index. | [optional] |
| **case_index_approved** | **String** | Informational field used to identify the case index. | [optional] |
| **case_index_denied** | **String** | Informational field used to identify the case index. | [optional] |
| **case_index_requested** | **String** | Informational field used to identify the case index. | [optional] |
| **case_number** | **String** | Informational field used to house the case number. | [optional] |
| **city_code_id** | **String** | No longer in use. | [optional] |
| **closed** | **Boolean** | Field no longer used. This is repalced by the Status field.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **dr_g_category** | **String** | Identifies the category of the selected DRG Code. | [optional] |
| **dr_g_code** | **String** | Specifies a DRG code that is to be associated with the authorization. | [optional] |
| **daily_living** | **Integer** | Identifies that the authoization is associated with a claim that is affecting the patient&#39;s daily living. | [optional] |
| **denied_from** | **Time** | Date when the authorization denial starts/started. | [optional] |
| **denied_thru** | **Time** | Date when the authorization denial expires/expired. | [optional] |
| **discharge_date** | **Time** | Date when the patient was discharged. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **federal_id** | **String** | Unique identifier assigned to the Provider associated with the Auth. This field can be populated by right-clicking and selecting &#39;Lookup&#39; from the context menu. | [optional] |
| **iv_r_flag** | **String** | Indicates that the Auth was Initiated via IVR. | [optional] |
| **injury_date** | **Time** | Date when the injury occurred. | [optional] |
| **member_seq** | **String** | Sequential identifier assigned to the Member. | [optional] |
| **monthly_amount** | **Float** | Information field used in custom reporting. | [optional] |
| **narrative** | **String** | Field no longer used. For Notes/Comments/Narrative information you would use the Note Services area. | [optional] |
| **new_or_extended** | **Boolean** | Indicates that the associated authorization is a new authorization or an extension of the original authorization.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **notes** | **String** | Field that allows the User to add any additional information to the authorization. | [optional] |
| **ordered_by_id** | **String** | ID of the Provider who ordered this auth. | [optional] |
| **ordered_by_name** | **String** | Name of the Provider who ordered this auth. | [optional] |
| **other_coverage_primary** | **String** | Information field used in custom reporting. | [optional] |
| **other_insurance** | **String** | Check this box to indicate that the associated Member has other insurance. | [optional] |
| **payee_id** | **String** | ID of the Payee associated with the auth. | [optional] |
| **plan_id** | **String** | Unique identifier assigned to the plan. | [optional] |
| **previous_auth** | **String** | This field is no longer used as it has been replaced by the the Auth Adjustment process where an AuthReference record is created instead. | [optional] |
| **previous_treatment** | **Boolean** | Check this box to indicate that previous treatment had been administered.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **prior_auth** | **String** | References Prior Auth | [optional] |
| **provider_id** | **String** | Unique identifier assigned to the Provider associated with the Auth. This field can be populated by right-clicking and selecting &#39;Lookup&#39; from the context menu. | [optional] |
| **radiating_pain** | **Integer** | Identifies that the authoization is associated with a claim where the patient is experiencing radiating pain. | [optional] |
| **range_of_motion** | **Integer** | Identifies that the authoization is associated with a claim that is affecting the patient&#39;s range of motion. | [optional] |
| **received_date** | **Time** | Date when the authorization was received. | [optional] |
| **referred_by_id** | **String** | Unique identifier assigned to the Provider who is referring. This field can be populated by right-clicking and selecting &#39;Lookup&#39; from the context menu. | [optional] |
| **referred_by_name** | **String** | Name of the referring Provider. This field is automatically populated by the &#39;Referred By ID&#39; field. | [optional] |
| **region** | **String** | Information field used in custom reporting. | [optional] |
| **reins_notification_date** | **Time** | Date when the Reinsurance Notification report was run. Process automation will be prompted to send the auth reinsurance notification on this date. | [optional] |
| **requested_frequency** | **String** | Authorization frequency that is/was requested. | [optional] |
| **requested_from** | **Time** | Date when the authorization is/was requested to be effective. | [optional] |
| **requested_location** | **String** | Requested location of the authorization. | [optional] |
| **requested_thru** | **Time** | Date when the authorization is/was requested to expire. | [optional] |
| **service_code** | **String** | Code used to identify the service type associated with the authorization. | [optional] |
| **service_type** | **String** | Type of service associated with the authorization. | [optional] |
| **status** | **String** | Identifies the current status of the authorization. | [optional] |
| **subscriber_id** | **String** | Unique identifier assigned to the Subscriber associated with the Auth. This field can be populated by right-clicking and selecting &#39;Lookup&#39; from the context menu. | [optional] |
| **t_plan_down_loaded** | **Boolean** | Indicates if the Treatment Plan was downloaded from the application.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **t_plan_down_loaded_date** | **Time** | Indicates the date the Treatment Plan was downloaded from the application. | [optional] |
| **t_plan_down_loaded_user** | **String** | Indicates the user what downloaded the Treatment Plan from the application. | [optional] |
| **t_plan_printed** | **String** | Flag indicating if this Auth has been printed as a Treatment Plan. |  |
| **t_plan_printed_date** | **Time** | The date this Auth has been printed as a Treatment Plan. | [optional] |
| **total_actual** | **Float** | No longer in use. | [optional] |
| **total_approved** | **Float** | No longer in use. | [optional] |
| **total_requested** | **Float** | No longer in use. | [optional] |
| **total_unit_type** | **String** | No longer in use. | [optional] |
| **treatment_type** | **String** | Indicates the type of treatment that is being authorized. | [optional] |
| **type_of_service** | **String** | No longer in use. | [optional] |
| **unit_type** | **String** | Unit type that is used for the associated service. Unit types can be configured in &#39;Auth Configuration&#39;. | [optional] |
| **units_actual** | **Float** | Total number of approved units that have been used. | [optional] |
| **units_approved** | **Float** | Number of units approved as part of the authorization. | [optional] |
| **units_denied** | **Float** | Number of units denied as part of the authorization. | [optional] |
| **units_requested** | **Float** | Number of units requested as part of the authorization. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **urgent** | **Boolean** | Check this box to indicate that the authorization request is urgent.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **visits_actual** | **Float** | Number of visits used as part of the authorization. | [optional] |
| **visits_approved** | **Float** | Number of visits approved as part of the authorization. | [optional] |
| **visits_requested** | **Float** | Number of visits requested as part of the authorization. | [optional] |
| **visits_to_date** | **Float** | Number of visits that have been used up to the current date. | [optional] |
| **work_related** | **String** | Check this box to indicate that the authorization is related to work. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Auth.new(
  auth_number: null,
  actual_from: null,
  actual_location: null,
  actual_thru: null,
  additional_visits: null,
  amount_actual: null,
  amount_approved: null,
  amount_denied: null,
  amount_requested: null,
  approved_by: null,
  approved_date: null,
  approved_frequency: null,
  approved_from: null,
  approved_location: null,
  approved_thru: null,
  assigned_user: null,
  audit_flag: null,
  auth_code: null,
  auth_type: null,
  auto_accident: null,
  body_code_id: null,
  care_manager_key: null,
  case_index_actual: null,
  case_index_approved: null,
  case_index_denied: null,
  case_index_requested: null,
  case_number: null,
  city_code_id: null,
  closed: null,
  dr_g_category: null,
  dr_g_code: null,
  daily_living: null,
  denied_from: null,
  denied_thru: null,
  discharge_date: null,
  entry_date: null,
  entry_user: null,
  federal_id: null,
  iv_r_flag: null,
  injury_date: null,
  member_seq: null,
  monthly_amount: null,
  narrative: null,
  new_or_extended: null,
  notes: null,
  ordered_by_id: null,
  ordered_by_name: null,
  other_coverage_primary: null,
  other_insurance: null,
  payee_id: null,
  plan_id: null,
  previous_auth: null,
  previous_treatment: null,
  prior_auth: null,
  provider_id: null,
  radiating_pain: null,
  range_of_motion: null,
  received_date: null,
  referred_by_id: null,
  referred_by_name: null,
  region: null,
  reins_notification_date: null,
  requested_frequency: null,
  requested_from: null,
  requested_location: null,
  requested_thru: null,
  service_code: null,
  service_type: null,
  status: null,
  subscriber_id: null,
  t_plan_down_loaded: null,
  t_plan_down_loaded_date: null,
  t_plan_down_loaded_user: null,
  t_plan_printed: null,
  t_plan_printed_date: null,
  total_actual: null,
  total_approved: null,
  total_requested: null,
  total_unit_type: null,
  treatment_type: null,
  type_of_service: null,
  unit_type: null,
  units_actual: null,
  units_approved: null,
  units_denied: null,
  units_requested: null,
  update_date: null,
  update_user: null,
  urgent: null,
  visits_actual: null,
  visits_approved: null,
  visits_requested: null,
  visits_to_date: null,
  work_related: null
)
```

