# Vba::SearchRequestApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**search_request**](SearchRequestApi.md#search_request) | **POST** /search | Run a search |


## search_request

> <SearchResultVBAResponse> search_request(vbasoftware_database, search_request)

Run a search

Runs a search usng the provided Search Request

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

api_instance = Vba::SearchRequestApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
search_request = Vba::SearchRequest.new({criteria_key: 37, search_config_id: 'search_config_id_example', selected_fields: [Vba::SelectedField.new({table_name: 'table_name_example', column_name: 'column_name_example'})]}) # SearchRequest | 

begin
  # Run a search
  result = api_instance.search_request(vbasoftware_database, search_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SearchRequestApi->search_request: #{e}"
end
```

#### Using the search_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchResultVBAResponse>, Integer, Hash)> search_request_with_http_info(vbasoftware_database, search_request)

```ruby
begin
  # Run a search
  data, status_code, headers = api_instance.search_request_with_http_info(vbasoftware_database, search_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SearchRequestApi->search_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **search_request** | [**SearchRequest**](SearchRequest.md) |  |  |

### Return type

[**SearchResultVBAResponse**](SearchResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

