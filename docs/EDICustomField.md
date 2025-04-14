# Vba::EDICustomField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edi_custom_field_key** | **Integer** | Key value that identifies a custom field on and EDI load  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **field_name** | **String** | Name of the EDI custom field | [optional] |
| **source** | **String** | Source where the EDI custom field will retrieved from |  |

## Example

```ruby
require 'vba'

instance = Vba::EDICustomField.new(
  edi_custom_field_key: null,
  field_name: null,
  source: null
)
```

