# Vba::Signature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_key** | **Integer** | Key value identifying a signature used on checks Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the signature used on checks | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **signature_code** | **String** | No longer used | [optional] |
| **signature_file** | **String** | Location and name of the file that contains the signature |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Signature.new(
  signature_key: null,
  description: null,
  entry_date: null,
  entry_user: null,
  signature_code: null,
  signature_file: null,
  update_date: null,
  update_user: null
)
```

