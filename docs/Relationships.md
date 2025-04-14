# Vba::Relationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relate_code** | **String** | Code that specifies the relationship of the Member to the Subscriber. |  |
| **description** | **String** | Describes the relationship of the Member to the Subscriber. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **hipa_a_code** | **String** | HIPAA code that is related to the selected Relationship. | [optional] |
| **spouse** | **String** | Indicates that the selected relationship is associated with the Spouse. | [optional] |
| **subscriber** | **String** | Indicates that the selected relationship is associated with the Subscriber. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Relationships.new(
  relate_code: null,
  description: null,
  entry_date: null,
  entry_user: null,
  hipa_a_code: null,
  spouse: null,
  subscriber: null,
  update_date: null,
  update_user: null
)
```

