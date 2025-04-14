# Vba::UserFieldSecurityApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_userfieldsecurity**](UserFieldSecurityApi.md#list_userfieldsecurity) | **GET** /user-field-security | List USERFIELDSECURITY |


## list_userfieldsecurity

> <USERFIELDSECURITYListVBAResponse> list_userfieldsecurity(vbasoftware_database, opts)

List USERFIELDSECURITY

Lists all USERFIELDSECURITY

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

api_instance = Vba::UserFieldSecurityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  user_id: 'user_id_example', # String | Filter by user id
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List USERFIELDSECURITY
  result = api_instance.list_userfieldsecurity(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserFieldSecurityApi->list_userfieldsecurity: #{e}"
end
```

#### Using the list_userfieldsecurity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<USERFIELDSECURITYListVBAResponse>, Integer, Hash)> list_userfieldsecurity_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List USERFIELDSECURITY
  data, status_code, headers = api_instance.list_userfieldsecurity_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <USERFIELDSECURITYListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserFieldSecurityApi->list_userfieldsecurity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | Filter by user id | [optional][default to &#39;&#39;] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**USERFIELDSECURITYListVBAResponse**](USERFIELDSECURITYListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

