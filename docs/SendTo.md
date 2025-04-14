# Vba::SendTo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_to_id** | **String** | Identifier for a type of entity that will be used for sending payments and correspondence |  |
| **disability** | **Boolean** | Flag indicating this entity can receive disability payments or correspondence Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **life** | **Boolean** | Flag indicating this entity can receive life payments or correspondence Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **mail_to** | **Boolean** | Flag indicating correspondence can be sent to this entity Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **medical** | **Boolean** | Flag indicating this entity can receive medical payments or correspondence Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pay_to** | **Boolean** | Flag indicating payments can be sent to this entity Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **send_to_description** | **String** | Description of a type of entity that will be used for sending payments and correspondence | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SendTo.new(
  send_to_id: null,
  disability: null,
  entry_date: null,
  entry_user: null,
  life: null,
  mail_to: null,
  medical: null,
  pay_to: null,
  send_to_description: null,
  update_date: null,
  update_user: null
)
```

