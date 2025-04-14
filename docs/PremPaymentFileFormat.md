# Vba::PremPaymentFileFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_file_format_key** | **Integer** | Unique identifier of the PremPaymentFileFormat table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **business_object** | **String** | PowerBuilder object that defines the file layout | [optional] |
| **description** | **String** | Description of the File Format | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **format** | **String** | Not used | [optional] |
| **length** | **Integer** | Not used | [optional] |
| **payment_type** | **String** | Type of the Payment | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremPaymentFileFormat.new(
  payment_file_format_key: null,
  business_object: null,
  description: null,
  entry_date: null,
  entry_user: null,
  format: null,
  length: null,
  payment_type: null,
  update_date: null,
  update_user: null
)
```

