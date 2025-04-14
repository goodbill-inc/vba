# Vba::ProviderProfileApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_profile**](ProviderProfileApi.md#create_provider_profile) | **POST** /provider-profiles/{profileProviderId}/provider-addresses/{addressProviderId} | Create ProviderProfile |
| [**delete_provider_profile**](ProviderProfileApi.md#delete_provider_profile) | **DELETE** /provider-profiles/{profileProviderId}/provider-addresses/{addressProviderId} | Delete ProviderProfile |
| [**get_provider_profile**](ProviderProfileApi.md#get_provider_profile) | **GET** /provider-profiles/{profileProviderId} | Get ProviderProfile |


## create_provider_profile

> <ProviderProfileVBAResponse> create_provider_profile(vbasoftware_database, profile_provider_id, address_provider_id)

Create ProviderProfile

Creates a new ProviderProfile

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

api_instance = Vba::ProviderProfileApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_provider_id = 'profile_provider_id_example' # String | Profile Provider ID
address_provider_id = 'address_provider_id_example' # String | Address Provider ID

begin
  # Create ProviderProfile
  result = api_instance.create_provider_profile(vbasoftware_database, profile_provider_id, address_provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderProfileApi->create_provider_profile: #{e}"
end
```

#### Using the create_provider_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderProfileVBAResponse>, Integer, Hash)> create_provider_profile_with_http_info(vbasoftware_database, profile_provider_id, address_provider_id)

```ruby
begin
  # Create ProviderProfile
  data, status_code, headers = api_instance.create_provider_profile_with_http_info(vbasoftware_database, profile_provider_id, address_provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderProfileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderProfileApi->create_provider_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_provider_id** | **String** | Profile Provider ID |  |
| **address_provider_id** | **String** | Address Provider ID |  |

### Return type

[**ProviderProfileVBAResponse**](ProviderProfileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_provider_profile

> delete_provider_profile(vbasoftware_database, profile_provider_id, address_provider_id)

Delete ProviderProfile

Deletes an ProviderProfile

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

api_instance = Vba::ProviderProfileApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_provider_id = 'profile_provider_id_example' # String | Profile Provider ID
address_provider_id = 'address_provider_id_example' # String | Address Provider ID

begin
  # Delete ProviderProfile
  api_instance.delete_provider_profile(vbasoftware_database, profile_provider_id, address_provider_id)
rescue Vba::ApiError => e
  puts "Error when calling ProviderProfileApi->delete_provider_profile: #{e}"
end
```

#### Using the delete_provider_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_profile_with_http_info(vbasoftware_database, profile_provider_id, address_provider_id)

```ruby
begin
  # Delete ProviderProfile
  data, status_code, headers = api_instance.delete_provider_profile_with_http_info(vbasoftware_database, profile_provider_id, address_provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderProfileApi->delete_provider_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_provider_id** | **String** | Profile Provider ID |  |
| **address_provider_id** | **String** | Address Provider ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_profile

> <ProfileProviderAddressProviderVBAResponse> get_provider_profile(vbasoftware_database, profile_provider_id)

Get ProviderProfile

Gets ProviderProfile

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

api_instance = Vba::ProviderProfileApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_provider_id = 'profile_provider_id_example' # String | Profile Provider ID

begin
  # Get ProviderProfile
  result = api_instance.get_provider_profile(vbasoftware_database, profile_provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderProfileApi->get_provider_profile: #{e}"
end
```

#### Using the get_provider_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileProviderAddressProviderVBAResponse>, Integer, Hash)> get_provider_profile_with_http_info(vbasoftware_database, profile_provider_id)

```ruby
begin
  # Get ProviderProfile
  data, status_code, headers = api_instance.get_provider_profile_with_http_info(vbasoftware_database, profile_provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileProviderAddressProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderProfileApi->get_provider_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_provider_id** | **String** | Profile Provider ID |  |

### Return type

[**ProfileProviderAddressProviderVBAResponse**](ProfileProviderAddressProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

