# Vba::GroupUCPercentClaimTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_uc_percent_claim_type**](GroupUCPercentClaimTypesApi.md#create_group_uc_percent_claim_type) | **POST** /uc-percent-claim-types | Create GroupUCPercentClaimType |
| [**delete_group_uc_percent_claim_type**](GroupUCPercentClaimTypesApi.md#delete_group_uc_percent_claim_type) | **DELETE** /uc-percent-claim-types/{uCPercentClaimType} | Delete GroupUCPercentClaimType |
| [**get_group_uc_percent_claim_type**](GroupUCPercentClaimTypesApi.md#get_group_uc_percent_claim_type) | **GET** /uc-percent-claim-types/{uCPercentClaimType} | Get GroupUCPercentClaimType |
| [**list_group_uc_percent_claim_type**](GroupUCPercentClaimTypesApi.md#list_group_uc_percent_claim_type) | **GET** /uc-percent-claim-types | List GroupUCPercentClaimType |
| [**update_batch_group_uc_percent_claim_type**](GroupUCPercentClaimTypesApi.md#update_batch_group_uc_percent_claim_type) | **PUT** /uc-percent-claim-types-batch | Create or Update Batch GroupUCPercentClaimType |
| [**update_group_uc_percent_claim_type**](GroupUCPercentClaimTypesApi.md#update_group_uc_percent_claim_type) | **PUT** /uc-percent-claim-types/{uCPercentClaimType} | Update GroupUCPercentClaimType |


## create_group_uc_percent_claim_type

> <GroupUCPercentClaimTypeVBAResponse> create_group_uc_percent_claim_type(vbasoftware_database, group_uc_percent_claim_type)

Create GroupUCPercentClaimType

Creates a new GroupUCPercentClaimType

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

api_instance = Vba::GroupUCPercentClaimTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_uc_percent_claim_type = Vba::GroupUCPercentClaimType.new({u_c_percent_claim_type: 'u_c_percent_claim_type_example'}) # GroupUCPercentClaimType | 

begin
  # Create GroupUCPercentClaimType
  result = api_instance.create_group_uc_percent_claim_type(vbasoftware_database, group_uc_percent_claim_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->create_group_uc_percent_claim_type: #{e}"
end
```

#### Using the create_group_uc_percent_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentClaimTypeVBAResponse>, Integer, Hash)> create_group_uc_percent_claim_type_with_http_info(vbasoftware_database, group_uc_percent_claim_type)

```ruby
begin
  # Create GroupUCPercentClaimType
  data, status_code, headers = api_instance.create_group_uc_percent_claim_type_with_http_info(vbasoftware_database, group_uc_percent_claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentClaimTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->create_group_uc_percent_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_uc_percent_claim_type** | [**GroupUCPercentClaimType**](GroupUCPercentClaimType.md) |  |  |

### Return type

[**GroupUCPercentClaimTypeVBAResponse**](GroupUCPercentClaimTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_uc_percent_claim_type

> delete_group_uc_percent_claim_type(vbasoftware_database, u_c_percent_claim_type)

Delete GroupUCPercentClaimType

Deletes an GroupUCPercentClaimType

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

api_instance = Vba::GroupUCPercentClaimTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
u_c_percent_claim_type = 'u_c_percent_claim_type_example' # String | UC Percent Claim Type

begin
  # Delete GroupUCPercentClaimType
  api_instance.delete_group_uc_percent_claim_type(vbasoftware_database, u_c_percent_claim_type)
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->delete_group_uc_percent_claim_type: #{e}"
end
```

#### Using the delete_group_uc_percent_claim_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_uc_percent_claim_type_with_http_info(vbasoftware_database, u_c_percent_claim_type)

```ruby
begin
  # Delete GroupUCPercentClaimType
  data, status_code, headers = api_instance.delete_group_uc_percent_claim_type_with_http_info(vbasoftware_database, u_c_percent_claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->delete_group_uc_percent_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **u_c_percent_claim_type** | **String** | UC Percent Claim Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_uc_percent_claim_type

> <GroupUCPercentClaimTypeVBAResponse> get_group_uc_percent_claim_type(vbasoftware_database, u_c_percent_claim_type)

Get GroupUCPercentClaimType

Gets GroupUCPercentClaimType

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

api_instance = Vba::GroupUCPercentClaimTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
u_c_percent_claim_type = 'u_c_percent_claim_type_example' # String | UC Percent Claim Type

begin
  # Get GroupUCPercentClaimType
  result = api_instance.get_group_uc_percent_claim_type(vbasoftware_database, u_c_percent_claim_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->get_group_uc_percent_claim_type: #{e}"
end
```

#### Using the get_group_uc_percent_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentClaimTypeVBAResponse>, Integer, Hash)> get_group_uc_percent_claim_type_with_http_info(vbasoftware_database, u_c_percent_claim_type)

```ruby
begin
  # Get GroupUCPercentClaimType
  data, status_code, headers = api_instance.get_group_uc_percent_claim_type_with_http_info(vbasoftware_database, u_c_percent_claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentClaimTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->get_group_uc_percent_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **u_c_percent_claim_type** | **String** | UC Percent Claim Type |  |

### Return type

[**GroupUCPercentClaimTypeVBAResponse**](GroupUCPercentClaimTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_uc_percent_claim_type

> <GroupUCPercentClaimTypeListVBAResponse> list_group_uc_percent_claim_type(vbasoftware_database, opts)

List GroupUCPercentClaimType

Lists all GroupUCPercentClaimType

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

api_instance = Vba::GroupUCPercentClaimTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupUCPercentClaimType
  result = api_instance.list_group_uc_percent_claim_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->list_group_uc_percent_claim_type: #{e}"
end
```

#### Using the list_group_uc_percent_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentClaimTypeListVBAResponse>, Integer, Hash)> list_group_uc_percent_claim_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupUCPercentClaimType
  data, status_code, headers = api_instance.list_group_uc_percent_claim_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentClaimTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->list_group_uc_percent_claim_type_with_http_info: #{e}"
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

[**GroupUCPercentClaimTypeListVBAResponse**](GroupUCPercentClaimTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_uc_percent_claim_type

> <MultiCodeResponseListVBAResponse> update_batch_group_uc_percent_claim_type(vbasoftware_database, group_uc_percent_claim_type)

Create or Update Batch GroupUCPercentClaimType

Create or Update multiple GroupUCPercentClaimType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupUCPercentClaimTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_uc_percent_claim_type = [Vba::GroupUCPercentClaimType.new({u_c_percent_claim_type: 'u_c_percent_claim_type_example'})] # Array<GroupUCPercentClaimType> | 

begin
  # Create or Update Batch GroupUCPercentClaimType
  result = api_instance.update_batch_group_uc_percent_claim_type(vbasoftware_database, group_uc_percent_claim_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->update_batch_group_uc_percent_claim_type: #{e}"
end
```

#### Using the update_batch_group_uc_percent_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_uc_percent_claim_type_with_http_info(vbasoftware_database, group_uc_percent_claim_type)

```ruby
begin
  # Create or Update Batch GroupUCPercentClaimType
  data, status_code, headers = api_instance.update_batch_group_uc_percent_claim_type_with_http_info(vbasoftware_database, group_uc_percent_claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->update_batch_group_uc_percent_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_uc_percent_claim_type** | [**Array&lt;GroupUCPercentClaimType&gt;**](GroupUCPercentClaimType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_uc_percent_claim_type

> <GroupUCPercentClaimTypeVBAResponse> update_group_uc_percent_claim_type(vbasoftware_database, u_c_percent_claim_type, group_uc_percent_claim_type)

Update GroupUCPercentClaimType

Updates a specific GroupUCPercentClaimType.

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

api_instance = Vba::GroupUCPercentClaimTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
u_c_percent_claim_type = 'u_c_percent_claim_type_example' # String | UC Percent Claim Type
group_uc_percent_claim_type = Vba::GroupUCPercentClaimType.new({u_c_percent_claim_type: 'u_c_percent_claim_type_example'}) # GroupUCPercentClaimType | 

begin
  # Update GroupUCPercentClaimType
  result = api_instance.update_group_uc_percent_claim_type(vbasoftware_database, u_c_percent_claim_type, group_uc_percent_claim_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->update_group_uc_percent_claim_type: #{e}"
end
```

#### Using the update_group_uc_percent_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentClaimTypeVBAResponse>, Integer, Hash)> update_group_uc_percent_claim_type_with_http_info(vbasoftware_database, u_c_percent_claim_type, group_uc_percent_claim_type)

```ruby
begin
  # Update GroupUCPercentClaimType
  data, status_code, headers = api_instance.update_group_uc_percent_claim_type_with_http_info(vbasoftware_database, u_c_percent_claim_type, group_uc_percent_claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentClaimTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentClaimTypesApi->update_group_uc_percent_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **u_c_percent_claim_type** | **String** | UC Percent Claim Type |  |
| **group_uc_percent_claim_type** | [**GroupUCPercentClaimType**](GroupUCPercentClaimType.md) |  |  |

### Return type

[**GroupUCPercentClaimTypeVBAResponse**](GroupUCPercentClaimTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

