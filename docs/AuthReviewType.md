# Vba::AuthReviewType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_type** | **String** | Name of the review type. |  |
| **description** | **String** | Description of the review type. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthReviewType.new(
  review_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

