# Vba::FundingReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_key** | **Integer** | ID of the request. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **funding_key** | **Integer** | ID of the funding. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **reference_type** | **String** | Type of the funding reference. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingReference.new(
  request_key: null,
  funding_key: null,
  entry_date: null,
  entry_user: null,
  reference_type: null,
  update_date: null,
  update_user: null
)
```

