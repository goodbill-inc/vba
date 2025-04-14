# Vba::TiersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tier**](TiersApi.md#create_tier) | **POST** /tiers | Create Tier |
| [**delete_tier**](TiersApi.md#delete_tier) | **DELETE** /tiers/{tier1} | Delete Tier |
| [**get_tier**](TiersApi.md#get_tier) | **GET** /tiers/{tier1} | Get Tier |
| [**list_tier**](TiersApi.md#list_tier) | **GET** /tiers | List Tier |
| [**update_batch_tier**](TiersApi.md#update_batch_tier) | **PUT** /tiers-batch | Create or Update Batch Tier |
| [**update_tier**](TiersApi.md#update_tier) | **PUT** /tiers/{tier1} | Update Tier |


## create_tier

> <TierVBAResponse> create_tier(vbasoftware_database, tier)

Create Tier

Creates a new Tier

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

api_instance = Vba::TiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tier = Vba::Tier.new({tier1: 'tier1_example', dependent: false, insured: false, multimember_tier: false, spouse: false}) # Tier | 

begin
  # Create Tier
  result = api_instance.create_tier(vbasoftware_database, tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->create_tier: #{e}"
end
```

#### Using the create_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TierVBAResponse>, Integer, Hash)> create_tier_with_http_info(vbasoftware_database, tier)

```ruby
begin
  # Create Tier
  data, status_code, headers = api_instance.create_tier_with_http_info(vbasoftware_database, tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->create_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tier** | [**Tier**](Tier.md) |  |  |

### Return type

[**TierVBAResponse**](TierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_tier

> delete_tier(vbasoftware_database, tier1)

Delete Tier

Deletes an Tier

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

api_instance = Vba::TiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tier1 = 'tier1_example' # String | Tier1

begin
  # Delete Tier
  api_instance.delete_tier(vbasoftware_database, tier1)
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->delete_tier: #{e}"
end
```

#### Using the delete_tier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tier_with_http_info(vbasoftware_database, tier1)

```ruby
begin
  # Delete Tier
  data, status_code, headers = api_instance.delete_tier_with_http_info(vbasoftware_database, tier1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->delete_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tier1** | **String** | Tier1 |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_tier

> <TierVBAResponse> get_tier(vbasoftware_database, tier1)

Get Tier

Gets Tier

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

api_instance = Vba::TiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tier1 = 'tier1_example' # String | Tier1

begin
  # Get Tier
  result = api_instance.get_tier(vbasoftware_database, tier1)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->get_tier: #{e}"
end
```

#### Using the get_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TierVBAResponse>, Integer, Hash)> get_tier_with_http_info(vbasoftware_database, tier1)

```ruby
begin
  # Get Tier
  data, status_code, headers = api_instance.get_tier_with_http_info(vbasoftware_database, tier1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->get_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tier1** | **String** | Tier1 |  |

### Return type

[**TierVBAResponse**](TierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_tier

> <TierListVBAResponse> list_tier(vbasoftware_database, opts)

List Tier

Lists all Tier

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

api_instance = Vba::TiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Tier
  result = api_instance.list_tier(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->list_tier: #{e}"
end
```

#### Using the list_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TierListVBAResponse>, Integer, Hash)> list_tier_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Tier
  data, status_code, headers = api_instance.list_tier_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->list_tier_with_http_info: #{e}"
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

[**TierListVBAResponse**](TierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_tier

> <MultiCodeResponseListVBAResponse> update_batch_tier(vbasoftware_database, tier)

Create or Update Batch Tier

Create or Update multiple Tier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::TiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tier = [Vba::Tier.new({tier1: 'tier1_example', dependent: false, insured: false, multimember_tier: false, spouse: false})] # Array<Tier> | 

begin
  # Create or Update Batch Tier
  result = api_instance.update_batch_tier(vbasoftware_database, tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->update_batch_tier: #{e}"
end
```

#### Using the update_batch_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_tier_with_http_info(vbasoftware_database, tier)

```ruby
begin
  # Create or Update Batch Tier
  data, status_code, headers = api_instance.update_batch_tier_with_http_info(vbasoftware_database, tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->update_batch_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tier** | [**Array&lt;Tier&gt;**](Tier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_tier

> <TierVBAResponse> update_tier(vbasoftware_database, tier1, tier)

Update Tier

Updates a specific Tier.

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

api_instance = Vba::TiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tier1 = 'tier1_example' # String | Tier1
tier = Vba::Tier.new({tier1: 'tier1_example', dependent: false, insured: false, multimember_tier: false, spouse: false}) # Tier | 

begin
  # Update Tier
  result = api_instance.update_tier(vbasoftware_database, tier1, tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->update_tier: #{e}"
end
```

#### Using the update_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TierVBAResponse>, Integer, Hash)> update_tier_with_http_info(vbasoftware_database, tier1, tier)

```ruby
begin
  # Update Tier
  data, status_code, headers = api_instance.update_tier_with_http_info(vbasoftware_database, tier1, tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TiersApi->update_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tier1** | **String** | Tier1 |  |
| **tier** | [**Tier**](Tier.md) |  |  |

### Return type

[**TierVBAResponse**](TierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

