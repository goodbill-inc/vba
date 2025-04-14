# Vba::ClaimLivesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batch_life**](ClaimLivesApi.md#create_claim_batch_life) | **POST** /claim-lives | Create ClaimBatchLife |
| [**delete_claim_batch_life**](ClaimLivesApi.md#delete_claim_batch_life) | **DELETE** /claim-lives/{batchNumber} | Delete ClaimBatchLife |
| [**get_claim_batch_life**](ClaimLivesApi.md#get_claim_batch_life) | **GET** /claim-lives/{batchNumber} | Get ClaimBatchLife |
| [**list_claim_batch_life**](ClaimLivesApi.md#list_claim_batch_life) | **GET** /claim-lives | List ClaimBatchLife |
| [**update_batch_claim_batch_life**](ClaimLivesApi.md#update_batch_claim_batch_life) | **PUT** /claim-lives-batch | Create or Update Batch ClaimBatchLife |
| [**update_claim_batch_life**](ClaimLivesApi.md#update_claim_batch_life) | **PUT** /claim-lives/{batchNumber} | Update ClaimBatchLife |


## create_claim_batch_life

> <ClaimBatchLifeVBAResponse> create_claim_batch_life(vbasoftware_database, claim_batch_life)

Create ClaimBatchLife

Creates a new ClaimBatchLife

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

api_instance = Vba::ClaimLivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_life = Vba::ClaimBatchLife.new({batch_number: 37, diagnostic_code_type: 'diagnostic_code_type_example', illness: false}) # ClaimBatchLife | 

begin
  # Create ClaimBatchLife
  result = api_instance.create_claim_batch_life(vbasoftware_database, claim_batch_life)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->create_claim_batch_life: #{e}"
end
```

#### Using the create_claim_batch_life_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLifeVBAResponse>, Integer, Hash)> create_claim_batch_life_with_http_info(vbasoftware_database, claim_batch_life)

```ruby
begin
  # Create ClaimBatchLife
  data, status_code, headers = api_instance.create_claim_batch_life_with_http_info(vbasoftware_database, claim_batch_life)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLifeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->create_claim_batch_life_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_life** | [**ClaimBatchLife**](ClaimBatchLife.md) |  |  |

### Return type

[**ClaimBatchLifeVBAResponse**](ClaimBatchLifeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batch_life

> delete_claim_batch_life(vbasoftware_database, batch_number)

Delete ClaimBatchLife

Deletes an ClaimBatchLife

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

api_instance = Vba::ClaimLivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number

begin
  # Delete ClaimBatchLife
  api_instance.delete_claim_batch_life(vbasoftware_database, batch_number)
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->delete_claim_batch_life: #{e}"
end
```

#### Using the delete_claim_batch_life_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batch_life_with_http_info(vbasoftware_database, batch_number)

```ruby
begin
  # Delete ClaimBatchLife
  data, status_code, headers = api_instance.delete_claim_batch_life_with_http_info(vbasoftware_database, batch_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->delete_claim_batch_life_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batch_life

> <ClaimBatchLifeVBAResponse> get_claim_batch_life(vbasoftware_database, batch_number)

Get ClaimBatchLife

Gets ClaimBatchLife

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

api_instance = Vba::ClaimLivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number

begin
  # Get ClaimBatchLife
  result = api_instance.get_claim_batch_life(vbasoftware_database, batch_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->get_claim_batch_life: #{e}"
end
```

#### Using the get_claim_batch_life_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLifeVBAResponse>, Integer, Hash)> get_claim_batch_life_with_http_info(vbasoftware_database, batch_number)

```ruby
begin
  # Get ClaimBatchLife
  data, status_code, headers = api_instance.get_claim_batch_life_with_http_info(vbasoftware_database, batch_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLifeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->get_claim_batch_life_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |

### Return type

[**ClaimBatchLifeVBAResponse**](ClaimBatchLifeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batch_life

> <ClaimBatchLifeListVBAResponse> list_claim_batch_life(vbasoftware_database, opts)

List ClaimBatchLife

Lists all ClaimBatchLife

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

api_instance = Vba::ClaimLivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatchLife
  result = api_instance.list_claim_batch_life(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->list_claim_batch_life: #{e}"
end
```

#### Using the list_claim_batch_life_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLifeListVBAResponse>, Integer, Hash)> list_claim_batch_life_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimBatchLife
  data, status_code, headers = api_instance.list_claim_batch_life_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLifeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->list_claim_batch_life_with_http_info: #{e}"
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

[**ClaimBatchLifeListVBAResponse**](ClaimBatchLifeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batch_life

> <MultiCodeResponseListVBAResponse> update_batch_claim_batch_life(vbasoftware_database, claim_batch_life)

Create or Update Batch ClaimBatchLife

Create or Update multiple ClaimBatchLife at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimLivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_life = [Vba::ClaimBatchLife.new({batch_number: 37, diagnostic_code_type: 'diagnostic_code_type_example', illness: false})] # Array<ClaimBatchLife> | 

begin
  # Create or Update Batch ClaimBatchLife
  result = api_instance.update_batch_claim_batch_life(vbasoftware_database, claim_batch_life)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->update_batch_claim_batch_life: #{e}"
end
```

#### Using the update_batch_claim_batch_life_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batch_life_with_http_info(vbasoftware_database, claim_batch_life)

```ruby
begin
  # Create or Update Batch ClaimBatchLife
  data, status_code, headers = api_instance.update_batch_claim_batch_life_with_http_info(vbasoftware_database, claim_batch_life)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->update_batch_claim_batch_life_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_life** | [**Array&lt;ClaimBatchLife&gt;**](ClaimBatchLife.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batch_life

> <ClaimBatchLifeVBAResponse> update_claim_batch_life(vbasoftware_database, batch_number, claim_batch_life)

Update ClaimBatchLife

Updates a specific ClaimBatchLife.

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

api_instance = Vba::ClaimLivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
claim_batch_life = Vba::ClaimBatchLife.new({batch_number: 37, diagnostic_code_type: 'diagnostic_code_type_example', illness: false}) # ClaimBatchLife | 

begin
  # Update ClaimBatchLife
  result = api_instance.update_claim_batch_life(vbasoftware_database, batch_number, claim_batch_life)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->update_claim_batch_life: #{e}"
end
```

#### Using the update_claim_batch_life_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLifeVBAResponse>, Integer, Hash)> update_claim_batch_life_with_http_info(vbasoftware_database, batch_number, claim_batch_life)

```ruby
begin
  # Update ClaimBatchLife
  data, status_code, headers = api_instance.update_claim_batch_life_with_http_info(vbasoftware_database, batch_number, claim_batch_life)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLifeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimLivesApi->update_claim_batch_life_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **claim_batch_life** | [**ClaimBatchLife**](ClaimBatchLife.md) |  |  |

### Return type

[**ClaimBatchLifeVBAResponse**](ClaimBatchLifeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

