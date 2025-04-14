# Vba::ClientConfigApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sso_config**](ClientConfigApi.md#create_sso_config) | **POST** /sso-configs | Create SSOConfig |
| [**delete_sso_config**](ClientConfigApi.md#delete_sso_config) | **DELETE** /sso-configs/{SSOConfig_ID} | Delete SSOConfig |
| [**get_app_info**](ClientConfigApi.md#get_app_info) | **GET** /app-info/{environment} | Get Application Information |
| [**get_sso_config**](ClientConfigApi.md#get_sso_config) | **GET** /sso-configs/{SSOConfig_ID} | Get SSOConfig |
| [**list_client_environments**](ClientConfigApi.md#list_client_environments) | **GET** /client-environments | List Client Environments |
| [**list_sso_config**](ClientConfigApi.md#list_sso_config) | **GET** /sso-configs | List SSOConfig |
| [**sso_callback**](ClientConfigApi.md#sso_callback) | **GET** /sso-callback | SSO Callback |
| [**update_batch_sso_config**](ClientConfigApi.md#update_batch_sso_config) | **PUT** /sso-configs-batch | Create or Update Batch SSOConfig |
| [**update_sso_config**](ClientConfigApi.md#update_sso_config) | **PUT** /sso-configs/{SSOConfig_ID} | Update SSOConfig |


## create_sso_config

> <SSOConfigVBAResponse> create_sso_config(vbasoftware_database, sso_config)

Create SSOConfig

Creates a new SSOConfig

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::ClientConfigApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
sso_config = Vba::SSOConfig.new({sso_config_id: 'sso_config_id_example', ss_o_enable: false}) # SSOConfig | 

begin
  # Create SSOConfig
  result = api_instance.create_sso_config(vbasoftware_database, sso_config)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->create_sso_config: #{e}"
end
```

#### Using the create_sso_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSOConfigVBAResponse>, Integer, Hash)> create_sso_config_with_http_info(vbasoftware_database, sso_config)

```ruby
begin
  # Create SSOConfig
  data, status_code, headers = api_instance.create_sso_config_with_http_info(vbasoftware_database, sso_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSOConfigVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->create_sso_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sso_config** | [**SSOConfig**](SSOConfig.md) |  |  |

### Return type

[**SSOConfigVBAResponse**](SSOConfigVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_sso_config

> delete_sso_config(vbasoftware_database, sso_config_id)

Delete SSOConfig

Deletes an SSOConfig

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::ClientConfigApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
sso_config_id = 'sso_config_id_example' # String | SSOConfig ID

begin
  # Delete SSOConfig
  api_instance.delete_sso_config(vbasoftware_database, sso_config_id)
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->delete_sso_config: #{e}"
end
```

#### Using the delete_sso_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sso_config_with_http_info(vbasoftware_database, sso_config_id)

```ruby
begin
  # Delete SSOConfig
  data, status_code, headers = api_instance.delete_sso_config_with_http_info(vbasoftware_database, sso_config_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->delete_sso_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sso_config_id** | **String** | SSOConfig ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_app_info

> <VBAAppInfoVBAResponse> get_app_info(vbasoftware_client_id, vbasoftware_client_code, environment)

Get Application Information

Returns the latest application information including version, file details, release notes, and release date in JSON format.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Vba::ClientConfigApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
environment = 'environment_example' # String | environment

begin
  # Get Application Information
  result = api_instance.get_app_info(vbasoftware_client_id, vbasoftware_client_code, environment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->get_app_info: #{e}"
end
```

#### Using the get_app_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAAppInfoVBAResponse>, Integer, Hash)> get_app_info_with_http_info(vbasoftware_client_id, vbasoftware_client_code, environment)

```ruby
begin
  # Get Application Information
  data, status_code, headers = api_instance.get_app_info_with_http_info(vbasoftware_client_id, vbasoftware_client_code, environment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAAppInfoVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->get_app_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_client_id** | **String** | Client ID |  |
| **vbasoftware_client_code** | **String** | Client Code |  |
| **environment** | **String** | environment |  |

### Return type

[**VBAAppInfoVBAResponse**](VBAAppInfoVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_sso_config

> <SSOConfigVBAResponse> get_sso_config(vbasoftware_database, sso_config_id)

Get SSOConfig

Gets SSOConfig

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::ClientConfigApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
sso_config_id = 'sso_config_id_example' # String | SSOConfig ID

begin
  # Get SSOConfig
  result = api_instance.get_sso_config(vbasoftware_database, sso_config_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->get_sso_config: #{e}"
end
```

#### Using the get_sso_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSOConfigVBAResponse>, Integer, Hash)> get_sso_config_with_http_info(vbasoftware_database, sso_config_id)

```ruby
begin
  # Get SSOConfig
  data, status_code, headers = api_instance.get_sso_config_with_http_info(vbasoftware_database, sso_config_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSOConfigVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->get_sso_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sso_config_id** | **String** | SSOConfig ID |  |

### Return type

[**SSOConfigVBAResponse**](SSOConfigVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_client_environments

> <VBAClientEnvironmentListVBAResponse> list_client_environments(vbasoftware_client_id, vbasoftware_client_code)

List Client Environments

Lists the client environments that are available for the given client id and client code.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Vba::ClientConfigApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code

begin
  # List Client Environments
  result = api_instance.list_client_environments(vbasoftware_client_id, vbasoftware_client_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->list_client_environments: #{e}"
end
```

#### Using the list_client_environments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAClientEnvironmentListVBAResponse>, Integer, Hash)> list_client_environments_with_http_info(vbasoftware_client_id, vbasoftware_client_code)

```ruby
begin
  # List Client Environments
  data, status_code, headers = api_instance.list_client_environments_with_http_info(vbasoftware_client_id, vbasoftware_client_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAClientEnvironmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->list_client_environments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_client_id** | **String** | Client ID |  |
| **vbasoftware_client_code** | **String** | Client Code |  |

### Return type

[**VBAClientEnvironmentListVBAResponse**](VBAClientEnvironmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_sso_config

> <SSOConfigListVBAResponse> list_sso_config(vbasoftware_database, opts)

List SSOConfig

Lists all SSOConfig

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::ClientConfigApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List SSOConfig
  result = api_instance.list_sso_config(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->list_sso_config: #{e}"
end
```

#### Using the list_sso_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSOConfigListVBAResponse>, Integer, Hash)> list_sso_config_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SSOConfig
  data, status_code, headers = api_instance.list_sso_config_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSOConfigListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->list_sso_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**SSOConfigListVBAResponse**](SSOConfigListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sso_callback

> <UserAuthenticationResponseVBAResponse> sso_callback(state, code)

SSO Callback

This endpoint is the callback URL for the Single Sign-On (SSO) process. It receives an authorization code from the identity provider (e.g., Cognito) and exchanges it for an access token. The access token is then used to authenticate the user in the application.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Vba::ClientConfigApi.new
state = 'state_example' # String | base64 encoded state
code = 'code_example' # String | Authorization Code

begin
  # SSO Callback
  result = api_instance.sso_callback(state, code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->sso_callback: #{e}"
end
```

#### Using the sso_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAuthenticationResponseVBAResponse>, Integer, Hash)> sso_callback_with_http_info(state, code)

```ruby
begin
  # SSO Callback
  data, status_code, headers = api_instance.sso_callback_with_http_info(state, code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAuthenticationResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->sso_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | base64 encoded state |  |
| **code** | **String** | Authorization Code |  |

### Return type

[**UserAuthenticationResponseVBAResponse**](UserAuthenticationResponseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_sso_config

> <MultiCodeResponseListVBAResponse> update_batch_sso_config(vbasoftware_database, sso_config)

Create or Update Batch SSOConfig

Create or Update multiple SSOConfig at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::ClientConfigApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
sso_config = [Vba::SSOConfig.new({sso_config_id: 'sso_config_id_example', ss_o_enable: false})] # Array<SSOConfig> | 

begin
  # Create or Update Batch SSOConfig
  result = api_instance.update_batch_sso_config(vbasoftware_database, sso_config)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->update_batch_sso_config: #{e}"
end
```

#### Using the update_batch_sso_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_sso_config_with_http_info(vbasoftware_database, sso_config)

```ruby
begin
  # Create or Update Batch SSOConfig
  data, status_code, headers = api_instance.update_batch_sso_config_with_http_info(vbasoftware_database, sso_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->update_batch_sso_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sso_config** | [**Array&lt;SSOConfig&gt;**](SSOConfig.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_sso_config

> <SSOConfigVBAResponse> update_sso_config(vbasoftware_database, sso_config_id, sso_config)

Update SSOConfig

Updates a specific SSOConfig.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::ClientConfigApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
sso_config_id = 'sso_config_id_example' # String | SSOConfig ID
sso_config = Vba::SSOConfig.new({sso_config_id: 'sso_config_id_example', ss_o_enable: false}) # SSOConfig | 

begin
  # Update SSOConfig
  result = api_instance.update_sso_config(vbasoftware_database, sso_config_id, sso_config)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->update_sso_config: #{e}"
end
```

#### Using the update_sso_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SSOConfigVBAResponse>, Integer, Hash)> update_sso_config_with_http_info(vbasoftware_database, sso_config_id, sso_config)

```ruby
begin
  # Update SSOConfig
  data, status_code, headers = api_instance.update_sso_config_with_http_info(vbasoftware_database, sso_config_id, sso_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SSOConfigVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClientConfigApi->update_sso_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sso_config_id** | **String** | SSOConfig ID |  |
| **sso_config** | [**SSOConfig**](SSOConfig.md) |  |  |

### Return type

[**SSOConfigVBAResponse**](SSOConfigVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

