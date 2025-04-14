# Vba::WorkflowDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_detail_key** | **Integer** | Unique identifier for the workflow table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **assign_date** | **Time** | Date when the workflow item was assigned. | [optional] |
| **assign_message** | **String** | Message that was given to the assignment. | [optional] |
| **assign_user_id** | **String** | ID of the User who assigned the workflow item. | [optional] |
| **complete_date** | **Time** | Date when the workflow item was completed. | [optional] |
| **complete_message** | **String** | Message that was given to the completion. | [optional] |
| **complete_user_id** | **String** | ID of the User who completed the workflow item. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **event_id** | **Integer** | No longer in use | [optional] |
| **key_column1** | **String** | Defines the subject of &#39;Key_Value1&#39;. | [optional] |
| **key_column2** | **String** | Defines the subject of &#39;Key_Value2&#39;. | [optional] |
| **key_column3** | **String** | Defines the subject of &#39;Key_Value3&#39;. | [optional] |
| **key_column4** | **String** | Defines the subject of &#39;Key_Value4&#39;. | [optional] |
| **key_column5** | **String** | Defines the subject of &#39;Key_Value5&#39;. | [optional] |
| **key_data_type1** | **String** | Identifies the type of data of the value specified by &#39;Key_Value1&#39;. | [optional] |
| **key_data_type2** | **String** | Identifies the type of data of the value specified by &#39;Key_Value2&#39;. | [optional] |
| **key_data_type3** | **String** | Identifies the type of data of the value specified by &#39;Key_Value3&#39;. | [optional] |
| **key_data_type4** | **String** | Identifies the type of data of the value specified by &#39;Key_Value4&#39;. | [optional] |
| **key_data_type5** | **String** | Identifies the type of data of the value specified by &#39;Key_Value5&#39;. | [optional] |
| **key_value1** | **String** | Value of the subject specified by &#39;Key_Column1&#39;. | [optional] |
| **key_value2** | **String** | Value of the subject specified by &#39;Key_Column2&#39;. | [optional] |
| **key_value3** | **String** | Value of the subject specified by &#39;Key_Column3&#39;. | [optional] |
| **key_value4** | **String** | Value of the subject specified by &#39;Key_Column4&#39;. | [optional] |
| **key_value5** | **String** | Value of the subject specified by &#39;Key_Column5&#39;. | [optional] |
| **process_date** | **Time** | Date when the workflow item was processed. | [optional] |
| **process_message** | **String** | Message that was given to the process. | [optional] |
| **process_user_id** | **String** | ID of the User who processed the workflow item. | [optional] |
| **reject_date** | **Time** | Date when the workflow item was rejected. | [optional] |
| **reject_message** | **String** | Message that was given to the rejection. | [optional] |
| **reject_user_id** | **String** | ID of the User who rejected the workflow item. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **user_id** | **String** | ID of the User whom the workflow detail was assigned to. | [optional] |
| **workflow_task_seq** | **Integer** | Sequential identifier for the workflow table. | [optional] |
| **workflow_key** | **Integer** | Identifier of the workflow. | [optional] |
| **workflow_type** | **String** | Type of the associated workflow. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::WorkflowDetail.new(
  workflow_detail_key: null,
  assign_date: null,
  assign_message: null,
  assign_user_id: null,
  complete_date: null,
  complete_message: null,
  complete_user_id: null,
  entry_date: null,
  entry_user: null,
  event_id: null,
  key_column1: null,
  key_column2: null,
  key_column3: null,
  key_column4: null,
  key_column5: null,
  key_data_type1: null,
  key_data_type2: null,
  key_data_type3: null,
  key_data_type4: null,
  key_data_type5: null,
  key_value1: null,
  key_value2: null,
  key_value3: null,
  key_value4: null,
  key_value5: null,
  process_date: null,
  process_message: null,
  process_user_id: null,
  reject_date: null,
  reject_message: null,
  reject_user_id: null,
  update_date: null,
  update_user: null,
  user_id: null,
  workflow_task_seq: null,
  workflow_key: null,
  workflow_type: null
)
```

