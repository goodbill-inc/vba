# Vba::CareCaseDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_key** | **Integer** |  |  |
| **case_detail_key** | **Integer** |  |  |
| **care_plan_category** | **String** |  | [optional] |
| **case_detail_parent** | **Integer** |  |  |
| **case_detail_seq** | **Integer** |  |  |
| **email_body** | **String** |  | [optional] |
| **email_recipient** | **String** |  | [optional] |
| **email_subject** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **event_subject** | **String** |  | [optional] |
| **item_definition** | **String** |  | [optional] |
| **item_metadata** | **String** |  | [optional] |
| **item_result_type** | **String** |  | [optional] |
| **item_score** | **Float** |  | [optional] |
| **item_type** | **String** |  | [optional] |
| **report_definition_key** | **Integer** |  | [optional] |
| **report_series_key** | **Integer** |  | [optional] |
| **result_date** | **Time** |  | [optional] |
| **result_decimal** | **Float** |  | [optional] |
| **result_number** | **Integer** |  | [optional] |
| **result_score** | **Float** |  | [optional] |
| **result_selected** | **Boolean** |  |  |
| **result_string** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseDetail.new(
  case_key: null,
  case_detail_key: null,
  care_plan_category: null,
  case_detail_parent: null,
  case_detail_seq: null,
  email_body: null,
  email_recipient: null,
  email_subject: null,
  entry_date: null,
  entry_user: null,
  event_subject: null,
  item_definition: null,
  item_metadata: null,
  item_result_type: null,
  item_score: null,
  item_type: null,
  report_definition_key: null,
  report_series_key: null,
  result_date: null,
  result_decimal: null,
  result_number: null,
  result_score: null,
  result_selected: null,
  result_string: null,
  update_date: null,
  update_user: null
)
```

