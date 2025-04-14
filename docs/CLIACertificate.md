# Vba::CLIACertificate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificate_id** | **Integer** | Idenfitier of the CLIA certificate. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **certificate_type** | **String** | Indicates the type of CLIA certificate. | [optional] |
| **description** | **String** | Description of the associated CLIA certificate. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CLIACertificate.new(
  certificate_id: null,
  certificate_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

