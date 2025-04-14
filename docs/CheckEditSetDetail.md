# Vba::CheckEditSetDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_edit_set_header_key** | **Integer** | Identifies which set the check edit belongs to. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **check_edit_key** | **Integer** | Description of the check edit. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **check_edit_sequence** | **Integer** | Indicates a sequence number for the check edit. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **enabled** | **Boolean** | Indicates that the check edit is currently enabled. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CheckEditSetDetail.new(
  check_edit_set_header_key: null,
  check_edit_key: null,
  check_edit_sequence: null,
  enabled: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

