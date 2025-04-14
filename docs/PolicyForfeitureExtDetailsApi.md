# Vba::PolicyForfeitureExtDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_policy_forfeiture_ext_detail**](PolicyForfeitureExtDetailsApi.md#get_policy_forfeiture_ext_detail) | **GET** /policy-forfeiture-ext-details/{policyForfeitureExtDetailKey} | Get PolicyForfeitureExtDetail |
| [**list_policy_forfeiture_ext_detail**](PolicyForfeitureExtDetailsApi.md#list_policy_forfeiture_ext_detail) | **GET** /policy-forfeiture-ext-details | List PolicyForfeitureExtDetail |


## get_policy_forfeiture_ext_detail

> <PolicyForfeitureExtDetailVBAResponse> get_policy_forfeiture_ext_detail(vbasoftware_database, policy_forfeiture_ext_detail_key)

Get PolicyForfeitureExtDetail

Gets PolicyForfeitureExtDetail

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

api_instance = Vba::PolicyForfeitureExtDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_forfeiture_ext_detail_key = 56 # Integer | PolicyForfeitureExtDetail Key

begin
  # Get PolicyForfeitureExtDetail
  result = api_instance.get_policy_forfeiture_ext_detail(vbasoftware_database, policy_forfeiture_ext_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtDetailsApi->get_policy_forfeiture_ext_detail: #{e}"
end
```

#### Using the get_policy_forfeiture_ext_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyForfeitureExtDetailVBAResponse>, Integer, Hash)> get_policy_forfeiture_ext_detail_with_http_info(vbasoftware_database, policy_forfeiture_ext_detail_key)

```ruby
begin
  # Get PolicyForfeitureExtDetail
  data, status_code, headers = api_instance.get_policy_forfeiture_ext_detail_with_http_info(vbasoftware_database, policy_forfeiture_ext_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyForfeitureExtDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtDetailsApi->get_policy_forfeiture_ext_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_forfeiture_ext_detail_key** | **Integer** | PolicyForfeitureExtDetail Key |  |

### Return type

[**PolicyForfeitureExtDetailVBAResponse**](PolicyForfeitureExtDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_policy_forfeiture_ext_detail

> <PolicyForfeitureExtDetailListVBAResponse> list_policy_forfeiture_ext_detail(vbasoftware_database, opts)

List PolicyForfeitureExtDetail

Lists all PolicyForfeitureExtDetail

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

api_instance = Vba::PolicyForfeitureExtDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PolicyForfeitureExtDetail
  result = api_instance.list_policy_forfeiture_ext_detail(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtDetailsApi->list_policy_forfeiture_ext_detail: #{e}"
end
```

#### Using the list_policy_forfeiture_ext_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyForfeitureExtDetailListVBAResponse>, Integer, Hash)> list_policy_forfeiture_ext_detail_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PolicyForfeitureExtDetail
  data, status_code, headers = api_instance.list_policy_forfeiture_ext_detail_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyForfeitureExtDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtDetailsApi->list_policy_forfeiture_ext_detail_with_http_info: #{e}"
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

[**PolicyForfeitureExtDetailListVBAResponse**](PolicyForfeitureExtDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

