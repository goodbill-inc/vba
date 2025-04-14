# Vba::GrievancesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_grievance**](GrievancesApi.md#create_grievance) | **POST** /grievances | Create Grievance |
| [**delete_batch_grievance**](GrievancesApi.md#delete_batch_grievance) | **DELETE** /grievances-batch | Batch Delete Grievance |
| [**delete_grievance**](GrievancesApi.md#delete_grievance) | **DELETE** /grievances/{grievanceKey} | Delete Grievance |
| [**file_grievance**](GrievancesApi.md#file_grievance) | **POST** /grievances-file | File Grievance |
| [**get_grievance**](GrievancesApi.md#get_grievance) | **GET** /grievances/{grievanceKey} | Get Grievance |
| [**list_grievance**](GrievancesApi.md#list_grievance) | **GET** /grievances | List Grievance |
| [**update_batch_grievance**](GrievancesApi.md#update_batch_grievance) | **PUT** /grievances-batch | Create or Update Batch Grievance |
| [**update_grievance**](GrievancesApi.md#update_grievance) | **PUT** /grievances/{grievanceKey} | Update Grievance |


## create_grievance

> <GrievanceVBAResponse> create_grievance(vbasoftware_database, grievance)

Create Grievance

Creates a new Grievance

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

api_instance = Vba::GrievancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance = Vba::Grievance.new({grievance_key: 37}) # Grievance | 

begin
  # Create Grievance
  result = api_instance.create_grievance(vbasoftware_database, grievance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->create_grievance: #{e}"
end
```

#### Using the create_grievance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceVBAResponse>, Integer, Hash)> create_grievance_with_http_info(vbasoftware_database, grievance)

```ruby
begin
  # Create Grievance
  data, status_code, headers = api_instance.create_grievance_with_http_info(vbasoftware_database, grievance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->create_grievance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance** | [**Grievance**](Grievance.md) |  |  |

### Return type

[**GrievanceVBAResponse**](GrievanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_batch_grievance

> delete_batch_grievance(vbasoftware_database, grievance)

Batch Delete Grievance

Delete a list of Grievances.

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

api_instance = Vba::GrievancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance = [Vba::Grievance.new({grievance_key: 37})] # Array<Grievance> | 

begin
  # Batch Delete Grievance
  api_instance.delete_batch_grievance(vbasoftware_database, grievance)
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->delete_batch_grievance: #{e}"
end
```

#### Using the delete_batch_grievance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_batch_grievance_with_http_info(vbasoftware_database, grievance)

```ruby
begin
  # Batch Delete Grievance
  data, status_code, headers = api_instance.delete_batch_grievance_with_http_info(vbasoftware_database, grievance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->delete_batch_grievance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance** | [**Array&lt;Grievance&gt;**](Grievance.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## delete_grievance

> delete_grievance(vbasoftware_database, grievance_key)

Delete Grievance

Deletes an Grievance

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

api_instance = Vba::GrievancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_key = 56 # Integer | Grievance Key

begin
  # Delete Grievance
  api_instance.delete_grievance(vbasoftware_database, grievance_key)
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->delete_grievance: #{e}"
end
```

#### Using the delete_grievance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_grievance_with_http_info(vbasoftware_database, grievance_key)

```ruby
begin
  # Delete Grievance
  data, status_code, headers = api_instance.delete_grievance_with_http_info(vbasoftware_database, grievance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->delete_grievance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_key** | **Integer** | Grievance Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## file_grievance

> <GrievanceVBAResponse> file_grievance(vbasoftware_database, grievance_filing)

File Grievance

Files a Grievance for a Member or Subscriber and gives back the created grievance for further processing.

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

api_instance = Vba::GrievancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_filing = Vba::GrievanceFiling.new # GrievanceFiling | 

begin
  # File Grievance
  result = api_instance.file_grievance(vbasoftware_database, grievance_filing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->file_grievance: #{e}"
end
```

#### Using the file_grievance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceVBAResponse>, Integer, Hash)> file_grievance_with_http_info(vbasoftware_database, grievance_filing)

```ruby
begin
  # File Grievance
  data, status_code, headers = api_instance.file_grievance_with_http_info(vbasoftware_database, grievance_filing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->file_grievance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_filing** | [**GrievanceFiling**](GrievanceFiling.md) |  |  |

### Return type

[**GrievanceVBAResponse**](GrievanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_grievance

> <GrievanceVBAResponse> get_grievance(vbasoftware_database, grievance_key)

Get Grievance

Gets Grievance

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

api_instance = Vba::GrievancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_key = 56 # Integer | Grievance Key

begin
  # Get Grievance
  result = api_instance.get_grievance(vbasoftware_database, grievance_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->get_grievance: #{e}"
end
```

#### Using the get_grievance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceVBAResponse>, Integer, Hash)> get_grievance_with_http_info(vbasoftware_database, grievance_key)

```ruby
begin
  # Get Grievance
  data, status_code, headers = api_instance.get_grievance_with_http_info(vbasoftware_database, grievance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->get_grievance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_key** | **Integer** | Grievance Key |  |

### Return type

[**GrievanceVBAResponse**](GrievanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_grievance

> <GrievanceListVBAResponse> list_grievance(vbasoftware_database, opts)

List Grievance

Lists all Grievance

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

api_instance = Vba::GrievancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Grievance
  result = api_instance.list_grievance(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->list_grievance: #{e}"
end
```

#### Using the list_grievance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceListVBAResponse>, Integer, Hash)> list_grievance_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Grievance
  data, status_code, headers = api_instance.list_grievance_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->list_grievance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GrievanceListVBAResponse**](GrievanceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_grievance

> <MultiCodeResponseListVBAResponse> update_batch_grievance(vbasoftware_database, grievance)

Create or Update Batch Grievance

Create or Update multiple Grievance at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GrievancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance = [Vba::Grievance.new({grievance_key: 37})] # Array<Grievance> | 

begin
  # Create or Update Batch Grievance
  result = api_instance.update_batch_grievance(vbasoftware_database, grievance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->update_batch_grievance: #{e}"
end
```

#### Using the update_batch_grievance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_grievance_with_http_info(vbasoftware_database, grievance)

```ruby
begin
  # Create or Update Batch Grievance
  data, status_code, headers = api_instance.update_batch_grievance_with_http_info(vbasoftware_database, grievance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->update_batch_grievance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance** | [**Array&lt;Grievance&gt;**](Grievance.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_grievance

> <GrievanceVBAResponse> update_grievance(vbasoftware_database, grievance_key, grievance)

Update Grievance

Updates a specific Grievance.

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

api_instance = Vba::GrievancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_key = 56 # Integer | Grievance Key
grievance = Vba::Grievance.new({grievance_key: 37}) # Grievance | 

begin
  # Update Grievance
  result = api_instance.update_grievance(vbasoftware_database, grievance_key, grievance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->update_grievance: #{e}"
end
```

#### Using the update_grievance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceVBAResponse>, Integer, Hash)> update_grievance_with_http_info(vbasoftware_database, grievance_key, grievance)

```ruby
begin
  # Update Grievance
  data, status_code, headers = api_instance.update_grievance_with_http_info(vbasoftware_database, grievance_key, grievance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievancesApi->update_grievance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_key** | **Integer** | Grievance Key |  |
| **grievance** | [**Grievance**](Grievance.md) |  |  |

### Return type

[**GrievanceVBAResponse**](GrievanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

