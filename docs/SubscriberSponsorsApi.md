# Vba::SubscriberSponsorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_sponsor**](SubscriberSponsorsApi.md#create_subscriber_sponsor) | **POST** /subscriber-sponsors | Create SubscriberSponsor |
| [**delete_subscriber_sponsor**](SubscriberSponsorsApi.md#delete_subscriber_sponsor) | **DELETE** /subscriber-sponsors/{SubscriberSponsor_Key} | Delete SubscriberSponsor |
| [**get_subscriber_sponsor**](SubscriberSponsorsApi.md#get_subscriber_sponsor) | **GET** /subscriber-sponsors/{SubscriberSponsor_Key} | Get SubscriberSponsor |
| [**list_subscriber_sponsor**](SubscriberSponsorsApi.md#list_subscriber_sponsor) | **GET** /subscriber-sponsors | List SubscriberSponsor |
| [**update_batch_subscriber_sponsor**](SubscriberSponsorsApi.md#update_batch_subscriber_sponsor) | **PUT** /subscriber-sponsors-batch | Create or Update Batch SubscriberSponsor |
| [**update_subscriber_sponsor**](SubscriberSponsorsApi.md#update_subscriber_sponsor) | **PUT** /subscriber-sponsors/{SubscriberSponsor_Key} | Update SubscriberSponsor |


## create_subscriber_sponsor

> <SubscriberSponsorVBAResponse> create_subscriber_sponsor(vbasoftware_database, subscriber_sponsor)

Create SubscriberSponsor

Creates a new SubscriberSponsor

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

api_instance = Vba::SubscriberSponsorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_sponsor = Vba::SubscriberSponsor.new({subscriber_sponsor_key: 37, sponsor_id: 'sponsor_id_example', subscriber_id: 'subscriber_id_example'}) # SubscriberSponsor | 

begin
  # Create SubscriberSponsor
  result = api_instance.create_subscriber_sponsor(vbasoftware_database, subscriber_sponsor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->create_subscriber_sponsor: #{e}"
end
```

#### Using the create_subscriber_sponsor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberSponsorVBAResponse>, Integer, Hash)> create_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor)

```ruby
begin
  # Create SubscriberSponsor
  data, status_code, headers = api_instance.create_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberSponsorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->create_subscriber_sponsor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_sponsor** | [**SubscriberSponsor**](SubscriberSponsor.md) |  |  |

### Return type

[**SubscriberSponsorVBAResponse**](SubscriberSponsorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_sponsor

> delete_subscriber_sponsor(vbasoftware_database, subscriber_sponsor_key)

Delete SubscriberSponsor

Deletes an SubscriberSponsor

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

api_instance = Vba::SubscriberSponsorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_sponsor_key = 56 # Integer | SubscriberSponsor Key

begin
  # Delete SubscriberSponsor
  api_instance.delete_subscriber_sponsor(vbasoftware_database, subscriber_sponsor_key)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->delete_subscriber_sponsor: #{e}"
end
```

#### Using the delete_subscriber_sponsor_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor_key)

```ruby
begin
  # Delete SubscriberSponsor
  data, status_code, headers = api_instance.delete_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->delete_subscriber_sponsor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_sponsor_key** | **Integer** | SubscriberSponsor Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_sponsor

> <SubscriberSponsorVBAResponse> get_subscriber_sponsor(vbasoftware_database, subscriber_sponsor_key)

Get SubscriberSponsor

Gets SubscriberSponsor

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

api_instance = Vba::SubscriberSponsorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_sponsor_key = 56 # Integer | SubscriberSponsor Key

begin
  # Get SubscriberSponsor
  result = api_instance.get_subscriber_sponsor(vbasoftware_database, subscriber_sponsor_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->get_subscriber_sponsor: #{e}"
end
```

#### Using the get_subscriber_sponsor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberSponsorVBAResponse>, Integer, Hash)> get_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor_key)

```ruby
begin
  # Get SubscriberSponsor
  data, status_code, headers = api_instance.get_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberSponsorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->get_subscriber_sponsor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_sponsor_key** | **Integer** | SubscriberSponsor Key |  |

### Return type

[**SubscriberSponsorVBAResponse**](SubscriberSponsorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_sponsor

> <SubscriberSponsorListVBAResponse> list_subscriber_sponsor(vbasoftware_database, opts)

List SubscriberSponsor

Lists all SubscriberSponsor

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

api_instance = Vba::SubscriberSponsorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List SubscriberSponsor
  result = api_instance.list_subscriber_sponsor(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->list_subscriber_sponsor: #{e}"
end
```

#### Using the list_subscriber_sponsor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberSponsorListVBAResponse>, Integer, Hash)> list_subscriber_sponsor_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SubscriberSponsor
  data, status_code, headers = api_instance.list_subscriber_sponsor_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberSponsorListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->list_subscriber_sponsor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**SubscriberSponsorListVBAResponse**](SubscriberSponsorListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_sponsor

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_sponsor(vbasoftware_database, subscriber_sponsor)

Create or Update Batch SubscriberSponsor

Create or Update multiple SubscriberSponsor at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberSponsorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_sponsor = [Vba::SubscriberSponsor.new({subscriber_sponsor_key: 37, sponsor_id: 'sponsor_id_example', subscriber_id: 'subscriber_id_example'})] # Array<SubscriberSponsor> | 

begin
  # Create or Update Batch SubscriberSponsor
  result = api_instance.update_batch_subscriber_sponsor(vbasoftware_database, subscriber_sponsor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->update_batch_subscriber_sponsor: #{e}"
end
```

#### Using the update_batch_subscriber_sponsor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor)

```ruby
begin
  # Create or Update Batch SubscriberSponsor
  data, status_code, headers = api_instance.update_batch_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->update_batch_subscriber_sponsor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_sponsor** | [**Array&lt;SubscriberSponsor&gt;**](SubscriberSponsor.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_sponsor

> <SubscriberSponsorVBAResponse> update_subscriber_sponsor(vbasoftware_database, subscriber_sponsor_key, subscriber_sponsor)

Update SubscriberSponsor

Updates a specific SubscriberSponsor.

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

api_instance = Vba::SubscriberSponsorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_sponsor_key = 56 # Integer | SubscriberSponsor Key
subscriber_sponsor = Vba::SubscriberSponsor.new({subscriber_sponsor_key: 37, sponsor_id: 'sponsor_id_example', subscriber_id: 'subscriber_id_example'}) # SubscriberSponsor | 

begin
  # Update SubscriberSponsor
  result = api_instance.update_subscriber_sponsor(vbasoftware_database, subscriber_sponsor_key, subscriber_sponsor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->update_subscriber_sponsor: #{e}"
end
```

#### Using the update_subscriber_sponsor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberSponsorVBAResponse>, Integer, Hash)> update_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor_key, subscriber_sponsor)

```ruby
begin
  # Update SubscriberSponsor
  data, status_code, headers = api_instance.update_subscriber_sponsor_with_http_info(vbasoftware_database, subscriber_sponsor_key, subscriber_sponsor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberSponsorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberSponsorsApi->update_subscriber_sponsor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_sponsor_key** | **Integer** | SubscriberSponsor Key |  |
| **subscriber_sponsor** | [**SubscriberSponsor**](SubscriberSponsor.md) |  |  |

### Return type

[**SubscriberSponsorVBAResponse**](SubscriberSponsorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

