# Vba::ObjectList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object_name** | **String** | Name of the object or window used by the application code |  |
| **advanced_search_calculated_column** | **String** | Computed column used for Advanced Search with the object or window | [optional] |
| **advanced_search_table** | **String** | Table used for Advanced Search with the object or window | [optional] |
| **advanced_search_type** | **String** | Type of Advanced Search used with the object or window | [optional] |
| **description** | **String** | Description of the object or window in the application | [optional] |
| **functional_area** | **String** | Identifier of the functional area in the application where the object or window is found | [optional] |
| **help_file** | **String** | Help file that is associated with the object or window | [optional] |
| **help_topic_id** | **Integer** | ID of the help topic within the file | [optional] |
| **object_library** | **String** | Library in the application where the object or window is stored | [optional] |
| **object_title** | **String** | Title of the object or window displayed in the application | [optional] |
| **purpose** | **String** | Identifier of the object or windows purpose | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ObjectList.new(
  object_name: null,
  advanced_search_calculated_column: null,
  advanced_search_table: null,
  advanced_search_type: null,
  description: null,
  functional_area: null,
  help_file: null,
  help_topic_id: null,
  object_library: null,
  object_title: null,
  purpose: null
)
```

