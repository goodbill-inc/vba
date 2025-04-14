# Vba::UserExperienceApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_most_visited**](UserExperienceApi.md#get_most_visited) | **GET** /users/{userID}/most-visited | Get the Most Visited Areas |
| [**get_recently_visited**](UserExperienceApi.md#get_recently_visited) | **GET** /users/{userID}/recently-visited | Get the Recently Visited Areas |


## get_most_visited

> <MostVisitedListVBAResponse> get_most_visited(vbasoftware_database, user_id, opts)

Get the Most Visited Areas

Get the most visited areas by a specific user.  Query parameter Count determines the number of most visited items to find. Days query parameter determines how many days to consider in the search.

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

api_instance = Vba::UserExperienceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
opts = {
  count: 56, # Integer | Count
  since_days: 56 # Integer | Days
}

begin
  # Get the Most Visited Areas
  result = api_instance.get_most_visited(vbasoftware_database, user_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserExperienceApi->get_most_visited: #{e}"
end
```

#### Using the get_most_visited_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MostVisitedListVBAResponse>, Integer, Hash)> get_most_visited_with_http_info(vbasoftware_database, user_id, opts)

```ruby
begin
  # Get the Most Visited Areas
  data, status_code, headers = api_instance.get_most_visited_with_http_info(vbasoftware_database, user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MostVisitedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserExperienceApi->get_most_visited_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **count** | **Integer** | Count | [optional][default to 3] |
| **since_days** | **Integer** | Days | [optional][default to 7] |

### Return type

[**MostVisitedListVBAResponse**](MostVisitedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_recently_visited

> <RecentlyVisitedListVBAResponse> get_recently_visited(vbasoftware_database, user_id, opts)

Get the Recently Visited Areas

Get recently visited areas by a specific user.  Query parameter Count determines the number of recently visited areas to find. Days query parameter determines how many days to consider in the search.

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

api_instance = Vba::UserExperienceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
opts = {
  count: 56, # Integer | Count
  since_days: 56 # Integer | Days
}

begin
  # Get the Recently Visited Areas
  result = api_instance.get_recently_visited(vbasoftware_database, user_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserExperienceApi->get_recently_visited: #{e}"
end
```

#### Using the get_recently_visited_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecentlyVisitedListVBAResponse>, Integer, Hash)> get_recently_visited_with_http_info(vbasoftware_database, user_id, opts)

```ruby
begin
  # Get the Recently Visited Areas
  data, status_code, headers = api_instance.get_recently_visited_with_http_info(vbasoftware_database, user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecentlyVisitedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserExperienceApi->get_recently_visited_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **count** | **Integer** | Count | [optional][default to 3] |
| **since_days** | **Integer** | Days | [optional][default to 7] |

### Return type

[**RecentlyVisitedListVBAResponse**](RecentlyVisitedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

