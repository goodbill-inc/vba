# Vba::VBAClient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the client. | [optional] |
| **name** | **String** | Name of the client. | [optional] |
| **client_id** | **String** | Unique client identifier used for authentication or tracking. | [optional] |
| **client_code** | **String** | Internal client code used within the system. | [optional] |
| **max_users** | **Integer** | Maximum number of users allowed for this client. | [optional] |
| **database_connections** | [**Array&lt;DatabaseConnection&gt;**](DatabaseConnection.md) | List of database connections associated with the client. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAClient.new(
  id: null,
  name: null,
  client_id: null,
  client_code: null,
  max_users: null,
  database_connections: null
)
```

