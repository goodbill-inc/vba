# Vba::CarePlanScoreDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_plan_score_detail_key** | **Integer** |  |  |
| **care_plan_score_key** | **Integer** |  |  |
| **e_mail_body** | **String** |  | [optional] |
| **e_mail_recipient** | **String** |  | [optional] |
| **e_mail_subject** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **event_subject** | **String** |  | [optional] |
| **item_definition** | **String** |  | [optional] |
| **item_result_type** | **String** |  | [optional] |
| **item_type** | **String** |  | [optional] |
| **report_definition_key** | **Integer** |  | [optional] |
| **report_series_key** | **Integer** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CarePlanScoreDetail.new(
  care_plan_score_detail_key: null,
  care_plan_score_key: null,
  e_mail_body: null,
  e_mail_recipient: null,
  e_mail_subject: null,
  entry_date: null,
  entry_user: null,
  event_subject: null,
  item_definition: null,
  item_result_type: null,
  item_type: null,
  report_definition_key: null,
  report_series_key: null,
  update_date: null,
  update_user: null
)
```

