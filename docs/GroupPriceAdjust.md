# Vba::GroupPriceAdjust

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Used in custom client processing with no functional impact on existing processing. |  |
| **effective_date** | **Time** | Used in custom client processing with no functional impact on existing processing. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **price_adjust** | **Float** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **term_date** | **Time** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupPriceAdjust.new(
  group_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  price_adjust: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

