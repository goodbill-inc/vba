# Vba::ReportDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_definition_key** | **Integer** | ID of the report definition. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **b_r_report_id** | **String** | Contains the GUID for the corresponding Advanced Reporting ID in Bold Reports. | [optional] |
| **combine_navigation** | **Boolean** | This will combine the results of a criteria window with multiple criteria. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **criteria_object** | **String** | The PowerBuilder object used to enter criteria. | [optional] |
| **custom_report** | **String** | Identifies a custom report to be used. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **exclude_adjustment_category** | **Boolean** | Flag indicating if the adjustment category should be excluded from the report Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exclude_other_category** | **Boolean** | Flag indicating if the other category should be excluded from the report Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exclude_total_category** | **Boolean** | Flag indicating if the total category should be excluded from the report Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **group_categories_only** | **Boolean** | Limits the report to only showing Rate Categories defined at the Group, not all Rate Categories on the Invoice. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **help_file** | **String** | Help file associated with the report object | [optional] |
| **help_topic_id** | **Integer** | Topic ID within the help file associated with the report object | [optional] |
| **invoice_category_column_count** | **Integer** | Identifies how many category columns are used within the report. | [optional] |
| **navigation_report** | **Boolean** | Indicates that the report has navigation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **report_category** | **String** | Identifies which category the report belongs to. | [optional] |
| **report_description** | **String** | Full description of the report. |  |
| **report_detail_object** | **String** | Specifies a secondary report that may be used in conjunction with the main report | [optional] |
| **report_example** | **String** | Utilize the file explorer to choose an example of the chosen report. | [optional] |
| **report_id** | **String** | ID of the report being defined. |  |
| **report_library** | **String** | Identifies which report library the User wishes to choose from. | [optional] |
| **report_name** | **String** | Name of the report. |  |
| **report_object** | **String** | Indicates which report will be used with the automation step. | [optional] |
| **schedule_report** | **Boolean** | Indicates that the report may be used with scheduling functionality. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **series_report** | **Boolean** | Indicates that the report may be added to a report series. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **trackable_report** | **Boolean** | Indicates that tracking functionality will be used for the report. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReportDefinition.new(
  report_definition_key: null,
  b_r_report_id: null,
  combine_navigation: null,
  criteria_object: null,
  custom_report: null,
  entry_date: null,
  entry_user: null,
  exclude_adjustment_category: null,
  exclude_other_category: null,
  exclude_total_category: null,
  group_categories_only: null,
  help_file: null,
  help_topic_id: null,
  invoice_category_column_count: null,
  navigation_report: null,
  report_category: null,
  report_description: null,
  report_detail_object: null,
  report_example: null,
  report_id: null,
  report_library: null,
  report_name: null,
  report_object: null,
  schedule_report: null,
  series_report: null,
  trackable_report: null,
  update_date: null,
  update_user: null
)
```

