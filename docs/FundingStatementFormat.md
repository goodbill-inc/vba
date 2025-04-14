# Vba::FundingStatementFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statement_format_key** | **Integer** | ID of the statement_format. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **business_object** | **String** | Object of the funding statement format. | [optional] |
| **description** | **String** | Description of the funding statement format. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **format** | **String** | Format of the funding statement format. | [optional] |
| **length** | **Integer** | ID of the length. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingStatementFormat.new(
  statement_format_key: null,
  business_object: null,
  description: null,
  entry_date: null,
  entry_user: null,
  format: null,
  length: null,
  update_date: null,
  update_user: null
)
```

