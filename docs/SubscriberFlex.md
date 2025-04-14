# Vba::SubscriberFlex

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Subscribers.Subscriber_ID value on the parent record. |  |
| **group_id** | **String** | Identifier assigned to the Group associated with this Flex account. This is automatically populated by right-clicking inside of the field and selecting &#39;Lookup&#39; from the context menu. |  |
| **plan_id** | **String** | Unique identifier assigned to the plan. This is automatically populated by right-clicking inside of the field and selecting &#39;Lookup&#39; from the context menu. |  |
| **calendar_year** | **String** | Calendar year that is associated with the flex account. This is automatically populated by right-clicking inside of the field and selecting &#39;Lookup&#39; from the context menu. |  |
| **effective_date** | **Time** | Date when the selected Flex account becomes/became active. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auto_create_flex** | **Boolean** | Indicates if this configuration would like to have flex claims auto created as part of the claims processing based on configured member responsibility amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cobr_a_rate** | **Float** | Identifies the COBRA rate of the Flex account. | [optional] |
| **card_status** | **String** | Identifies the status of the Member&#39;s Flex account card. | [optional] |
| **custom_election_info_only** | **Boolean** | Identifies that the Flex account information is informational only. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **election** | **Float** | Specifies the Member&#39;s election amount toward the Flex account. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **full_election_for_partial_year** | **Boolean** | Identifies if the amount enetered in to the Election field is a full or partial year election amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **gross_salary** | **Float** | Specifies the Member&#39;s gross salary for the year associated with the Flex account. | [optional] |
| **net_salary** | **Float** | Specifies the Member&#39;s net salary for the year associated with the Flex account. | [optional] |
| **purse_status** | **String** | References FlexVendorPurseStatus.Purse_Status for code list. | [optional] |
| **term_date** | **Time** | Date when the selected Flex account expires/expired. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberFlex.new(
  subscriber_id: null,
  group_id: null,
  plan_id: null,
  calendar_year: null,
  effective_date: null,
  auto_create_flex: null,
  cobr_a_rate: null,
  card_status: null,
  custom_election_info_only: null,
  election: null,
  entry_date: null,
  entry_user: null,
  full_election_for_partial_year: null,
  gross_salary: null,
  net_salary: null,
  purse_status: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

