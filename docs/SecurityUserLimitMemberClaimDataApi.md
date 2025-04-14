# Vba::SecurityUserLimitMemberClaimDataApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_user_limit_member_claim_data**](SecurityUserLimitMemberClaimDataApi.md#create_security_user_limit_member_claim_data) | **POST** /security-user-limit-member-clam-data | Create SecurityUserLimitMemberClaimData |
| [**delete_security_user_limit_member_claim_data**](SecurityUserLimitMemberClaimDataApi.md#delete_security_user_limit_member_claim_data) | **DELETE** /security-user-limit-member-clam-data/{securityUserLimitMemberClaimDataKey} | Delete SecurityUserLimitMemberClaimData |
| [**get_security_user_limit_member_claim_data**](SecurityUserLimitMemberClaimDataApi.md#get_security_user_limit_member_claim_data) | **GET** /security-user-limit-member-clam-data/{securityUserLimitMemberClaimDataKey} | Get SecurityUserLimitMemberClaimData |
| [**list_security_user_limit_member_claim_data**](SecurityUserLimitMemberClaimDataApi.md#list_security_user_limit_member_claim_data) | **GET** /security-user-limit-member-clam-data | List SecurityUserLimitMemberClaimData |
| [**update_batch_security_user_limit_member_claim_data**](SecurityUserLimitMemberClaimDataApi.md#update_batch_security_user_limit_member_claim_data) | **PUT** /security-user-limit-member-clam-data-batch | Create or Update Batch SecurityUserLimitMemberClaimData |
| [**update_security_user_limit_member_claim_data**](SecurityUserLimitMemberClaimDataApi.md#update_security_user_limit_member_claim_data) | **PUT** /security-user-limit-member-clam-data/{securityUserLimitMemberClaimDataKey} | Update SecurityUserLimitMemberClaimData |


## create_security_user_limit_member_claim_data

> <SecurityUserLimitMemberClaimDataVBAResponse> create_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data)

Create SecurityUserLimitMemberClaimData

Creates a new SecurityUserLimitMemberClaimData

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

api_instance = Vba::SecurityUserLimitMemberClaimDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_limit_member_claim_data = Vba::SecurityUserLimitMemberClaimData.new({security_user_limit_member_claim_data_key: 37}) # SecurityUserLimitMemberClaimData | 

begin
  # Create SecurityUserLimitMemberClaimData
  result = api_instance.create_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->create_security_user_limit_member_claim_data: #{e}"
end
```

#### Using the create_security_user_limit_member_claim_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityUserLimitMemberClaimDataVBAResponse>, Integer, Hash)> create_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data)

```ruby
begin
  # Create SecurityUserLimitMemberClaimData
  data, status_code, headers = api_instance.create_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityUserLimitMemberClaimDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->create_security_user_limit_member_claim_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_limit_member_claim_data** | [**SecurityUserLimitMemberClaimData**](SecurityUserLimitMemberClaimData.md) |  |  |

### Return type

[**SecurityUserLimitMemberClaimDataVBAResponse**](SecurityUserLimitMemberClaimDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_user_limit_member_claim_data

> delete_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data_key)

Delete SecurityUserLimitMemberClaimData

Deletes an SecurityUserLimitMemberClaimData

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

api_instance = Vba::SecurityUserLimitMemberClaimDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_limit_member_claim_data_key = 56 # Integer | SecurityUserLimitMemberClaimData Key

begin
  # Delete SecurityUserLimitMemberClaimData
  api_instance.delete_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data_key)
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->delete_security_user_limit_member_claim_data: #{e}"
end
```

#### Using the delete_security_user_limit_member_claim_data_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data_key)

```ruby
begin
  # Delete SecurityUserLimitMemberClaimData
  data, status_code, headers = api_instance.delete_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->delete_security_user_limit_member_claim_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_limit_member_claim_data_key** | **Integer** | SecurityUserLimitMemberClaimData Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_user_limit_member_claim_data

> <SecurityUserLimitMemberClaimDataVBAResponse> get_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data_key)

Get SecurityUserLimitMemberClaimData

Gets SecurityUserLimitMemberClaimData

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

api_instance = Vba::SecurityUserLimitMemberClaimDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_limit_member_claim_data_key = 56 # Integer | SecurityUserLimitMemberClaimData Key

begin
  # Get SecurityUserLimitMemberClaimData
  result = api_instance.get_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->get_security_user_limit_member_claim_data: #{e}"
end
```

#### Using the get_security_user_limit_member_claim_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityUserLimitMemberClaimDataVBAResponse>, Integer, Hash)> get_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data_key)

```ruby
begin
  # Get SecurityUserLimitMemberClaimData
  data, status_code, headers = api_instance.get_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityUserLimitMemberClaimDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->get_security_user_limit_member_claim_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_limit_member_claim_data_key** | **Integer** | SecurityUserLimitMemberClaimData Key |  |

### Return type

[**SecurityUserLimitMemberClaimDataVBAResponse**](SecurityUserLimitMemberClaimDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_user_limit_member_claim_data

> <SecurityUserLimitMemberClaimDataListVBAResponse> list_security_user_limit_member_claim_data(vbasoftware_database, opts)

List SecurityUserLimitMemberClaimData

Lists all SecurityUserLimitMemberClaimData

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

api_instance = Vba::SecurityUserLimitMemberClaimDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SecurityUserLimitMemberClaimData
  result = api_instance.list_security_user_limit_member_claim_data(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->list_security_user_limit_member_claim_data: #{e}"
end
```

#### Using the list_security_user_limit_member_claim_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityUserLimitMemberClaimDataListVBAResponse>, Integer, Hash)> list_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SecurityUserLimitMemberClaimData
  data, status_code, headers = api_instance.list_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityUserLimitMemberClaimDataListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->list_security_user_limit_member_claim_data_with_http_info: #{e}"
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

[**SecurityUserLimitMemberClaimDataListVBAResponse**](SecurityUserLimitMemberClaimDataListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_user_limit_member_claim_data

> <MultiCodeResponseListVBAResponse> update_batch_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data)

Create or Update Batch SecurityUserLimitMemberClaimData

Create or Update multiple SecurityUserLimitMemberClaimData at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityUserLimitMemberClaimDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_limit_member_claim_data = [Vba::SecurityUserLimitMemberClaimData.new({security_user_limit_member_claim_data_key: 37})] # Array<SecurityUserLimitMemberClaimData> | 

begin
  # Create or Update Batch SecurityUserLimitMemberClaimData
  result = api_instance.update_batch_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->update_batch_security_user_limit_member_claim_data: #{e}"
end
```

#### Using the update_batch_security_user_limit_member_claim_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data)

```ruby
begin
  # Create or Update Batch SecurityUserLimitMemberClaimData
  data, status_code, headers = api_instance.update_batch_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->update_batch_security_user_limit_member_claim_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_limit_member_claim_data** | [**Array&lt;SecurityUserLimitMemberClaimData&gt;**](SecurityUserLimitMemberClaimData.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_user_limit_member_claim_data

> <SecurityUserLimitMemberClaimDataVBAResponse> update_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data_key, security_user_limit_member_claim_data)

Update SecurityUserLimitMemberClaimData

Updates a specific SecurityUserLimitMemberClaimData.

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

api_instance = Vba::SecurityUserLimitMemberClaimDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_limit_member_claim_data_key = 56 # Integer | SecurityUserLimitMemberClaimData Key
security_user_limit_member_claim_data = Vba::SecurityUserLimitMemberClaimData.new({security_user_limit_member_claim_data_key: 37}) # SecurityUserLimitMemberClaimData | 

begin
  # Update SecurityUserLimitMemberClaimData
  result = api_instance.update_security_user_limit_member_claim_data(vbasoftware_database, security_user_limit_member_claim_data_key, security_user_limit_member_claim_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->update_security_user_limit_member_claim_data: #{e}"
end
```

#### Using the update_security_user_limit_member_claim_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityUserLimitMemberClaimDataVBAResponse>, Integer, Hash)> update_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data_key, security_user_limit_member_claim_data)

```ruby
begin
  # Update SecurityUserLimitMemberClaimData
  data, status_code, headers = api_instance.update_security_user_limit_member_claim_data_with_http_info(vbasoftware_database, security_user_limit_member_claim_data_key, security_user_limit_member_claim_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityUserLimitMemberClaimDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserLimitMemberClaimDataApi->update_security_user_limit_member_claim_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_limit_member_claim_data_key** | **Integer** | SecurityUserLimitMemberClaimData Key |  |
| **security_user_limit_member_claim_data** | [**SecurityUserLimitMemberClaimData**](SecurityUserLimitMemberClaimData.md) |  |  |

### Return type

[**SecurityUserLimitMemberClaimDataVBAResponse**](SecurityUserLimitMemberClaimDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

