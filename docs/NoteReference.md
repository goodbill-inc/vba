# Vba::NoteReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_key** | **Integer** | ID of the note reference. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **column_name1** | **String** | Defines the subject of &#39;Key_Value1&#39;. |  |
| **column_name2** | **String** | Defines the subject of &#39;Key_Value2&#39;. | [optional] |
| **column_name3** | **String** | Defines the subject of &#39;Key_Value3&#39;. | [optional] |
| **column_name4** | **String** | Defines the subject of &#39;Key_Value4&#39;. | [optional] |
| **column_name5** | **String** | Defines the subject of &#39;Key_Value5&#39;. | [optional] |
| **column_type1** | **String** | Identifies the type of data of the value specified by &#39;Key_Value1&#39;. | [optional] |
| **column_type2** | **String** | Identifies the type of data of the value specified by &#39;Key_Value2&#39;. | [optional] |
| **column_type3** | **String** | Identifies the type of data of the value specified by &#39;Key_Value3&#39;. | [optional] |
| **column_type4** | **String** | Identifies the type of data of the value specified by &#39;Key_Value4&#39;. | [optional] |
| **column_type5** | **String** | Identifies the type of data of the value specified by &#39;Key_Value5&#39;. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **key_value1** | **String** | Value of the subject specified by &#39;Column_Name1&#39;. |  |
| **key_value2** | **String** | Value of the subject specified by &#39;Column_Name2&#39;. | [optional] |
| **key_value3** | **String** | Value of the subject specified by &#39;Column_Name3&#39;. | [optional] |
| **key_value4** | **String** | Value of the subject specified by &#39;Column_Name4&#39;. | [optional] |
| **key_value5** | **String** | Value of the subject specified by &#39;Column_Name5&#39;. | [optional] |
| **navigate_object** | **String** | PowerBuilder object connected to the note that is used for navigation | [optional] |
| **note_key** | **Integer** | ID of the associated note. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NoteReference.new(
  reference_key: null,
  column_name1: null,
  column_name2: null,
  column_name3: null,
  column_name4: null,
  column_name5: null,
  column_type1: null,
  column_type2: null,
  column_type3: null,
  column_type4: null,
  column_type5: null,
  entry_date: null,
  entry_user: null,
  key_value1: null,
  key_value2: null,
  key_value3: null,
  key_value4: null,
  key_value5: null,
  navigate_object: null,
  note_key: null,
  update_date: null,
  update_user: null
)
```

