# Vba::GroupDisenrollAffectedClaimsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_group_disenroll_affected_claims**](GroupDisenrollAffectedClaimsApi.md#list_group_disenroll_affected_claims) | **GET** /groups/{groupID}/disenroll-affected-claims | Get Affected Claims for Disrolling Group ID |


## list_group_disenroll_affected_claims

> <VBAGroupDisenrollAffectedClaimsListVBAResponse> list_group_disenroll_affected_claims(vbasoftware_database, group_id, disenroll_date, opts)

Get Affected Claims for Disrolling Group ID

List Affected Claims for Disrolling Group ID

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

api_instance = Vba::GroupDisenrollAffectedClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
disenroll_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Disenroll Date
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # Get Affected Claims for Disrolling Group ID
  result = api_instance.list_group_disenroll_affected_claims(vbasoftware_database, group_id, disenroll_date, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDisenrollAffectedClaimsApi->list_group_disenroll_affected_claims: #{e}"
end
```

#### Using the list_group_disenroll_affected_claims_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGroupDisenrollAffectedClaimsListVBAResponse>, Integer, Hash)> list_group_disenroll_affected_claims_with_http_info(vbasoftware_database, group_id, disenroll_date, opts)

```ruby
begin
  # Get Affected Claims for Disrolling Group ID
  data, status_code, headers = api_instance.list_group_disenroll_affected_claims_with_http_info(vbasoftware_database, group_id, disenroll_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGroupDisenrollAffectedClaimsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDisenrollAffectedClaimsApi->list_group_disenroll_affected_claims_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **disenroll_date** | **Time** | Disenroll Date |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**VBAGroupDisenrollAffectedClaimsListVBAResponse**](VBAGroupDisenrollAffectedClaimsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

