# Vba::FundingIndicatorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_indicator**](FundingIndicatorsApi.md#create_funding_indicator) | **POST** /funding-indicators | Create FundingIndicator |
| [**delete_funding_indicator**](FundingIndicatorsApi.md#delete_funding_indicator) | **DELETE** /funding-indicators/{fundingIndicator} | Delete FundingIndicator |
| [**get_funding_indicator**](FundingIndicatorsApi.md#get_funding_indicator) | **GET** /funding-indicators/{fundingIndicator} | Get FundingIndicator |
| [**list_funding_indicator**](FundingIndicatorsApi.md#list_funding_indicator) | **GET** /funding-indicators | List FundingIndicator |
| [**update_batch_funding_indicator**](FundingIndicatorsApi.md#update_batch_funding_indicator) | **PUT** /funding-indicators-batch | Create or Update Batch FundingIndicator |
| [**update_funding_indicator**](FundingIndicatorsApi.md#update_funding_indicator) | **PUT** /funding-indicators/{fundingIndicator} | Update FundingIndicator |


## create_funding_indicator

> <FundingIndicatorVBAResponse> create_funding_indicator(vbasoftware_database, funding_indicator)

Create FundingIndicator

Creates a new FundingIndicator

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

api_instance = Vba::FundingIndicatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_indicator = Vba::FundingIndicator.new({funding_indicator: 'funding_indicator_example'}) # FundingIndicator | 

begin
  # Create FundingIndicator
  result = api_instance.create_funding_indicator(vbasoftware_database, funding_indicator)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->create_funding_indicator: #{e}"
end
```

#### Using the create_funding_indicator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingIndicatorVBAResponse>, Integer, Hash)> create_funding_indicator_with_http_info(vbasoftware_database, funding_indicator)

```ruby
begin
  # Create FundingIndicator
  data, status_code, headers = api_instance.create_funding_indicator_with_http_info(vbasoftware_database, funding_indicator)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingIndicatorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->create_funding_indicator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_indicator** | [**FundingIndicator**](FundingIndicator.md) |  |  |

### Return type

[**FundingIndicatorVBAResponse**](FundingIndicatorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_indicator

> delete_funding_indicator(vbasoftware_database, funding_indicator)

Delete FundingIndicator

Deletes an FundingIndicator

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

api_instance = Vba::FundingIndicatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_indicator = 'funding_indicator_example' # String | Funding Indicator

begin
  # Delete FundingIndicator
  api_instance.delete_funding_indicator(vbasoftware_database, funding_indicator)
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->delete_funding_indicator: #{e}"
end
```

#### Using the delete_funding_indicator_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_indicator_with_http_info(vbasoftware_database, funding_indicator)

```ruby
begin
  # Delete FundingIndicator
  data, status_code, headers = api_instance.delete_funding_indicator_with_http_info(vbasoftware_database, funding_indicator)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->delete_funding_indicator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_indicator** | **String** | Funding Indicator |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_indicator

> <FundingIndicatorVBAResponse> get_funding_indicator(vbasoftware_database, funding_indicator)

Get FundingIndicator

Gets FundingIndicator

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

api_instance = Vba::FundingIndicatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_indicator = 'funding_indicator_example' # String | Funding Indicator

begin
  # Get FundingIndicator
  result = api_instance.get_funding_indicator(vbasoftware_database, funding_indicator)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->get_funding_indicator: #{e}"
end
```

#### Using the get_funding_indicator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingIndicatorVBAResponse>, Integer, Hash)> get_funding_indicator_with_http_info(vbasoftware_database, funding_indicator)

```ruby
begin
  # Get FundingIndicator
  data, status_code, headers = api_instance.get_funding_indicator_with_http_info(vbasoftware_database, funding_indicator)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingIndicatorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->get_funding_indicator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_indicator** | **String** | Funding Indicator |  |

### Return type

[**FundingIndicatorVBAResponse**](FundingIndicatorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_indicator

> <FundingIndicatorListVBAResponse> list_funding_indicator(vbasoftware_database, opts)

List FundingIndicator

Lists all FundingIndicator

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

api_instance = Vba::FundingIndicatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingIndicator
  result = api_instance.list_funding_indicator(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->list_funding_indicator: #{e}"
end
```

#### Using the list_funding_indicator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingIndicatorListVBAResponse>, Integer, Hash)> list_funding_indicator_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingIndicator
  data, status_code, headers = api_instance.list_funding_indicator_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingIndicatorListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->list_funding_indicator_with_http_info: #{e}"
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

[**FundingIndicatorListVBAResponse**](FundingIndicatorListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_indicator

> <MultiCodeResponseListVBAResponse> update_batch_funding_indicator(vbasoftware_database, funding_indicator)

Create or Update Batch FundingIndicator

Create or Update multiple FundingIndicator at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingIndicatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_indicator = [Vba::FundingIndicator.new({funding_indicator: 'funding_indicator_example'})] # Array<FundingIndicator> | 

begin
  # Create or Update Batch FundingIndicator
  result = api_instance.update_batch_funding_indicator(vbasoftware_database, funding_indicator)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->update_batch_funding_indicator: #{e}"
end
```

#### Using the update_batch_funding_indicator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_indicator_with_http_info(vbasoftware_database, funding_indicator)

```ruby
begin
  # Create or Update Batch FundingIndicator
  data, status_code, headers = api_instance.update_batch_funding_indicator_with_http_info(vbasoftware_database, funding_indicator)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->update_batch_funding_indicator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_indicator** | [**Array&lt;FundingIndicator&gt;**](FundingIndicator.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_indicator

> <FundingIndicatorVBAResponse> update_funding_indicator(vbasoftware_database, funding_indicator, funding_indicator2)

Update FundingIndicator

Updates a specific FundingIndicator.

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

api_instance = Vba::FundingIndicatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_indicator = 'funding_indicator_example' # String | Funding Indicator
funding_indicator2 = Vba::FundingIndicator.new({funding_indicator: 'funding_indicator_example'}) # FundingIndicator | 

begin
  # Update FundingIndicator
  result = api_instance.update_funding_indicator(vbasoftware_database, funding_indicator, funding_indicator2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->update_funding_indicator: #{e}"
end
```

#### Using the update_funding_indicator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingIndicatorVBAResponse>, Integer, Hash)> update_funding_indicator_with_http_info(vbasoftware_database, funding_indicator, funding_indicator2)

```ruby
begin
  # Update FundingIndicator
  data, status_code, headers = api_instance.update_funding_indicator_with_http_info(vbasoftware_database, funding_indicator, funding_indicator2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingIndicatorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIndicatorsApi->update_funding_indicator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_indicator** | **String** | Funding Indicator |  |
| **funding_indicator2** | [**FundingIndicator**](FundingIndicator.md) |  |  |

### Return type

[**FundingIndicatorVBAResponse**](FundingIndicatorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

