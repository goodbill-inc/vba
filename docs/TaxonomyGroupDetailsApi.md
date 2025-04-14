# Vba::TaxonomyGroupDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_taxonomy_group_detail**](TaxonomyGroupDetailsApi.md#create_taxonomy_group_detail) | **POST** /taxonomy-groups/{taxonomyGroupID}/taxonomy-group-details | Create TaxonomyGroupDetail |
| [**delete_taxonomy_group_detail**](TaxonomyGroupDetailsApi.md#delete_taxonomy_group_detail) | **DELETE** /taxonomy-groups/{taxonomyGroupID}/taxonomy-group-details/{taxonomyGroupDetailKey} | Delete TaxonomyGroupDetail |
| [**get_taxonomy_group_detail**](TaxonomyGroupDetailsApi.md#get_taxonomy_group_detail) | **GET** /taxonomy-groups/{taxonomyGroupID}/taxonomy-group-details/{taxonomyGroupDetailKey} | Get TaxonomyGroupDetail |
| [**list_taxonomy_group_detail**](TaxonomyGroupDetailsApi.md#list_taxonomy_group_detail) | **GET** /taxonomy-groups/{taxonomyGroupID}/taxonomy-group-details | List TaxonomyGroupDetail |
| [**update_batch_taxonomy_group_detail**](TaxonomyGroupDetailsApi.md#update_batch_taxonomy_group_detail) | **PUT** /taxonomy-groups/{taxonomyGroupID}/taxonomy-group-details-batch | Create or Update Batch TaxonomyGroupDetail |
| [**update_taxonomy_group_detail**](TaxonomyGroupDetailsApi.md#update_taxonomy_group_detail) | **PUT** /taxonomy-groups/{taxonomyGroupID}/taxonomy-group-details/{taxonomyGroupDetailKey} | Update TaxonomyGroupDetail |


## create_taxonomy_group_detail

> <TaxonomyGroupDetailVBAResponse> create_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail)

Create TaxonomyGroupDetail

Creates a new TaxonomyGroupDetail

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

api_instance = Vba::TaxonomyGroupDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group_id = 'taxonomy_group_id_example' # String | Taxonomy Group ID
taxonomy_group_detail = Vba::TaxonomyGroupDetail.new({taxonomy_group_detail_key: 37, from_value: 'from_value_example', taxonomy_group_id: 'taxonomy_group_id_example'}) # TaxonomyGroupDetail | 

begin
  # Create TaxonomyGroupDetail
  result = api_instance.create_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->create_taxonomy_group_detail: #{e}"
end
```

#### Using the create_taxonomy_group_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyGroupDetailVBAResponse>, Integer, Hash)> create_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail)

```ruby
begin
  # Create TaxonomyGroupDetail
  data, status_code, headers = api_instance.create_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyGroupDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->create_taxonomy_group_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group_id** | **String** | Taxonomy Group ID |  |
| **taxonomy_group_detail** | [**TaxonomyGroupDetail**](TaxonomyGroupDetail.md) |  |  |

### Return type

[**TaxonomyGroupDetailVBAResponse**](TaxonomyGroupDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_taxonomy_group_detail

> delete_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key)

Delete TaxonomyGroupDetail

Deletes an TaxonomyGroupDetail

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

api_instance = Vba::TaxonomyGroupDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group_id = 'taxonomy_group_id_example' # String | Taxonomy Group ID
taxonomy_group_detail_key = 56 # Integer | TaxonomyGroupDetail Key

begin
  # Delete TaxonomyGroupDetail
  api_instance.delete_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->delete_taxonomy_group_detail: #{e}"
end
```

#### Using the delete_taxonomy_group_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key)

```ruby
begin
  # Delete TaxonomyGroupDetail
  data, status_code, headers = api_instance.delete_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->delete_taxonomy_group_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group_id** | **String** | Taxonomy Group ID |  |
| **taxonomy_group_detail_key** | **Integer** | TaxonomyGroupDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_taxonomy_group_detail

> <TaxonomyGroupDetailVBAResponse> get_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key)

Get TaxonomyGroupDetail

Gets TaxonomyGroupDetail

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

api_instance = Vba::TaxonomyGroupDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group_id = 'taxonomy_group_id_example' # String | Taxonomy Group ID
taxonomy_group_detail_key = 56 # Integer | TaxonomyGroupDetail Key

begin
  # Get TaxonomyGroupDetail
  result = api_instance.get_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->get_taxonomy_group_detail: #{e}"
end
```

#### Using the get_taxonomy_group_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyGroupDetailVBAResponse>, Integer, Hash)> get_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key)

```ruby
begin
  # Get TaxonomyGroupDetail
  data, status_code, headers = api_instance.get_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyGroupDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->get_taxonomy_group_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group_id** | **String** | Taxonomy Group ID |  |
| **taxonomy_group_detail_key** | **Integer** | TaxonomyGroupDetail Key |  |

### Return type

[**TaxonomyGroupDetailVBAResponse**](TaxonomyGroupDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_taxonomy_group_detail

> <TaxonomyGroupDetailListVBAResponse> list_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id)

List TaxonomyGroupDetail

Lists all TaxonomyGroupDetail given a specific taxonomyGroupID

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

api_instance = Vba::TaxonomyGroupDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group_id = 'taxonomy_group_id_example' # String | Taxonomy Group ID

begin
  # List TaxonomyGroupDetail
  result = api_instance.list_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->list_taxonomy_group_detail: #{e}"
end
```

#### Using the list_taxonomy_group_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyGroupDetailListVBAResponse>, Integer, Hash)> list_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id)

```ruby
begin
  # List TaxonomyGroupDetail
  data, status_code, headers = api_instance.list_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyGroupDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->list_taxonomy_group_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group_id** | **String** | Taxonomy Group ID |  |

### Return type

[**TaxonomyGroupDetailListVBAResponse**](TaxonomyGroupDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_taxonomy_group_detail

> <MultiCodeResponseListVBAResponse> update_batch_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail)

Create or Update Batch TaxonomyGroupDetail

Create or Update multiple TaxonomyGroupDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::TaxonomyGroupDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group_id = 'taxonomy_group_id_example' # String | Taxonomy Group ID
taxonomy_group_detail = [Vba::TaxonomyGroupDetail.new({taxonomy_group_detail_key: 37, from_value: 'from_value_example', taxonomy_group_id: 'taxonomy_group_id_example'})] # Array<TaxonomyGroupDetail> | 

begin
  # Create or Update Batch TaxonomyGroupDetail
  result = api_instance.update_batch_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->update_batch_taxonomy_group_detail: #{e}"
end
```

#### Using the update_batch_taxonomy_group_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail)

```ruby
begin
  # Create or Update Batch TaxonomyGroupDetail
  data, status_code, headers = api_instance.update_batch_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->update_batch_taxonomy_group_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group_id** | **String** | Taxonomy Group ID |  |
| **taxonomy_group_detail** | [**Array&lt;TaxonomyGroupDetail&gt;**](TaxonomyGroupDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_taxonomy_group_detail

> <TaxonomyGroupDetailVBAResponse> update_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key, taxonomy_group_detail)

Update TaxonomyGroupDetail

Updates a specific TaxonomyGroupDetail.

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

api_instance = Vba::TaxonomyGroupDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group_id = 'taxonomy_group_id_example' # String | Taxonomy Group ID
taxonomy_group_detail_key = 56 # Integer | TaxonomyGroupDetail Key
taxonomy_group_detail = Vba::TaxonomyGroupDetail.new({taxonomy_group_detail_key: 37, from_value: 'from_value_example', taxonomy_group_id: 'taxonomy_group_id_example'}) # TaxonomyGroupDetail | 

begin
  # Update TaxonomyGroupDetail
  result = api_instance.update_taxonomy_group_detail(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key, taxonomy_group_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->update_taxonomy_group_detail: #{e}"
end
```

#### Using the update_taxonomy_group_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyGroupDetailVBAResponse>, Integer, Hash)> update_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key, taxonomy_group_detail)

```ruby
begin
  # Update TaxonomyGroupDetail
  data, status_code, headers = api_instance.update_taxonomy_group_detail_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group_detail_key, taxonomy_group_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyGroupDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupDetailsApi->update_taxonomy_group_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group_id** | **String** | Taxonomy Group ID |  |
| **taxonomy_group_detail_key** | **Integer** | TaxonomyGroupDetail Key |  |
| **taxonomy_group_detail** | [**TaxonomyGroupDetail**](TaxonomyGroupDetail.md) |  |  |

### Return type

[**TaxonomyGroupDetailVBAResponse**](TaxonomyGroupDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

