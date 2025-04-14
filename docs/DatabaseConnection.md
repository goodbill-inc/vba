# Vba::DatabaseConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **database_name** | **String** | Name of the database. | [optional] |
| **connection_string** | **String** | Connection string used to access the database. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DatabaseConnection.new(
  database_name: null,
  connection_string: null
)
```

