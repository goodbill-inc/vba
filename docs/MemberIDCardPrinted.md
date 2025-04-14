# Vba::MemberIDCardPrinted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **report_definition_key** | **Integer** | References ReportDefinition.ReportDefinition_Key for this report. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **printed_date** | **Time** | Date when the ID Card was printed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberIDCardPrinted.new(
  subscriber_id: null,
  member_seq: null,
  report_definition_key: null,
  printed_date: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

