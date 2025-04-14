# Vba::TaxFilingStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filing_status** | **Integer** | Identifier for the specific filing status Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the specific filing status | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **filing_default** | **Boolean** | Flag identifying the specific status as the default filing status Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::TaxFilingStatus.new(
  filing_status: null,
  description: null,
  entry_date: null,
  entry_user: null,
  filing_default: null,
  update_date: null,
  update_user: null
)
```

