# Vba::ProviderPerDiemProcedureApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_per_diem_procedure**](ProviderPerDiemProcedureApi.md#create_provider_per_diem_procedure) | **POST** /providers/{providerID}/per-diems/{providerPerDiemKey}/procedures | Create ProviderPerDiemProcedure |
| [**delete_provider_per_diem_procedure**](ProviderPerDiemProcedureApi.md#delete_provider_per_diem_procedure) | **DELETE** /providers/{providerID}/per-diems/{providerPerDiemKey}/procedures/{fromProcedure}-{thruProcedure} | Delete ProviderPerDiemProcedure |
| [**get_provider_per_diem_procedure**](ProviderPerDiemProcedureApi.md#get_provider_per_diem_procedure) | **GET** /providers/{providerID}/per-diems/{providerPerDiemKey}/procedures/{fromProcedure}-{thruProcedure} | Get ProviderPerDiemProcedure |
| [**list_provider_per_diem_procedure**](ProviderPerDiemProcedureApi.md#list_provider_per_diem_procedure) | **GET** /providers/{providerID}/per-diems/{providerPerDiemKey}/procedures | List ProviderPerDiemProcedure |
| [**update_batch_provider_per_diem_procedure**](ProviderPerDiemProcedureApi.md#update_batch_provider_per_diem_procedure) | **PUT** /providers/{providerID}/per-diems/{providerPerDiemKey}/procedures-batch | Create or Update Batch ProviderPerDiemProcedure |


## create_provider_per_diem_procedure

> <ProviderPerDiemProcedureVBAResponse> create_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem_procedure)

Create ProviderPerDiemProcedure

Creates a new ProviderPerDiemProcedure

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

api_instance = Vba::ProviderPerDiemProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem_key = 56 # Integer | ProviderPerDiem Key
provider_per_diem_procedure = Vba::ProviderPerDiemProcedure.new({provider_per_diem_key: 37, from_procedure: 'from_procedure_example', thru_procedure: 'thru_procedure_example'}) # ProviderPerDiemProcedure | 

begin
  # Create ProviderPerDiemProcedure
  result = api_instance.create_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->create_provider_per_diem_procedure: #{e}"
end
```

#### Using the create_provider_per_diem_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPerDiemProcedureVBAResponse>, Integer, Hash)> create_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem_procedure)

```ruby
begin
  # Create ProviderPerDiemProcedure
  data, status_code, headers = api_instance.create_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPerDiemProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->create_provider_per_diem_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem_key** | **Integer** | ProviderPerDiem Key |  |
| **provider_per_diem_procedure** | [**ProviderPerDiemProcedure**](ProviderPerDiemProcedure.md) |  |  |

### Return type

[**ProviderPerDiemProcedureVBAResponse**](ProviderPerDiemProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_per_diem_procedure

> delete_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, from_procedure, thru_procedure)

Delete ProviderPerDiemProcedure

Deletes an ProviderPerDiemProcedure

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

api_instance = Vba::ProviderPerDiemProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem_key = 56 # Integer | ProviderPerDiem Key
from_procedure = 'from_procedure_example' # String | From Procedure
thru_procedure = 'thru_procedure_example' # String | Thru Procedure

begin
  # Delete ProviderPerDiemProcedure
  api_instance.delete_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, from_procedure, thru_procedure)
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->delete_provider_per_diem_procedure: #{e}"
end
```

#### Using the delete_provider_per_diem_procedure_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, from_procedure, thru_procedure)

```ruby
begin
  # Delete ProviderPerDiemProcedure
  data, status_code, headers = api_instance.delete_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, from_procedure, thru_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->delete_provider_per_diem_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem_key** | **Integer** | ProviderPerDiem Key |  |
| **from_procedure** | **String** | From Procedure |  |
| **thru_procedure** | **String** | Thru Procedure |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_per_diem_procedure

> <ProviderPerDiemProcedureVBAResponse> get_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, from_procedure, thru_procedure)

Get ProviderPerDiemProcedure

Gets ProviderPerDiemProcedure

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

api_instance = Vba::ProviderPerDiemProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem_key = 56 # Integer | ProviderPerDiem Key
from_procedure = 'from_procedure_example' # String | From Procedure
thru_procedure = 'thru_procedure_example' # String | Thru Procedure

begin
  # Get ProviderPerDiemProcedure
  result = api_instance.get_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, from_procedure, thru_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->get_provider_per_diem_procedure: #{e}"
end
```

#### Using the get_provider_per_diem_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPerDiemProcedureVBAResponse>, Integer, Hash)> get_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, from_procedure, thru_procedure)

```ruby
begin
  # Get ProviderPerDiemProcedure
  data, status_code, headers = api_instance.get_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, from_procedure, thru_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPerDiemProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->get_provider_per_diem_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem_key** | **Integer** | ProviderPerDiem Key |  |
| **from_procedure** | **String** | From Procedure |  |
| **thru_procedure** | **String** | Thru Procedure |  |

### Return type

[**ProviderPerDiemProcedureVBAResponse**](ProviderPerDiemProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_per_diem_procedure

> <ProviderPerDiemProcedureListVBAResponse> list_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, opts)

List ProviderPerDiemProcedure

Lists all ProviderPerDiemProcedure for the given providerPerDiemKey

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

api_instance = Vba::ProviderPerDiemProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem_key = 56 # Integer | ProviderPerDiem Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderPerDiemProcedure
  result = api_instance.list_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->list_provider_per_diem_procedure: #{e}"
end
```

#### Using the list_provider_per_diem_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPerDiemProcedureListVBAResponse>, Integer, Hash)> list_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, opts)

```ruby
begin
  # List ProviderPerDiemProcedure
  data, status_code, headers = api_instance.list_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPerDiemProcedureListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->list_provider_per_diem_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem_key** | **Integer** | ProviderPerDiem Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderPerDiemProcedureListVBAResponse**](ProviderPerDiemProcedureListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_per_diem_procedure

> <MultiCodeResponseListVBAResponse> update_batch_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem_procedure)

Create or Update Batch ProviderPerDiemProcedure

Create or Update multiple ProviderPerDiemProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderPerDiemProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem_key = 56 # Integer | ProviderPerDiem Key
provider_per_diem_procedure = [Vba::ProviderPerDiemProcedure.new({provider_per_diem_key: 37, from_procedure: 'from_procedure_example', thru_procedure: 'thru_procedure_example'})] # Array<ProviderPerDiemProcedure> | 

begin
  # Create or Update Batch ProviderPerDiemProcedure
  result = api_instance.update_batch_provider_per_diem_procedure(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->update_batch_provider_per_diem_procedure: #{e}"
end
```

#### Using the update_batch_provider_per_diem_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem_procedure)

```ruby
begin
  # Create or Update Batch ProviderPerDiemProcedure
  data, status_code, headers = api_instance.update_batch_provider_per_diem_procedure_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemProcedureApi->update_batch_provider_per_diem_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem_key** | **Integer** | ProviderPerDiem Key |  |
| **provider_per_diem_procedure** | [**Array&lt;ProviderPerDiemProcedure&gt;**](ProviderPerDiemProcedure.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

