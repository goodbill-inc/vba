# Vba::PremiumDistributionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_distribution**](PremiumDistributionsApi.md#create_prem_distribution) | **POST** /premium-distributions | Create PremDistribution |
| [**delete_prem_distribution**](PremiumDistributionsApi.md#delete_prem_distribution) | **DELETE** /premium-distributions/{premDistributionKey} | Delete PremDistribution |
| [**generate_prem_distribution**](PremiumDistributionsApi.md#generate_prem_distribution) | **POST** /premium-distributions-generate/{groupId}/{asOfDate} | Create Premium Distributions |
| [**generate_prem_distribution_check**](PremiumDistributionsApi.md#generate_prem_distribution_check) | **POST** /premium-distributions-generate-check/{payeeId}/{payorId}/{accountKey}/{checkNumber} | Create Premium Distributions Checks |
| [**get_prem_distribution**](PremiumDistributionsApi.md#get_prem_distribution) | **GET** /premium-distributions/{premDistributionKey} | Get PremDistribution |
| [**list_prem_distribution**](PremiumDistributionsApi.md#list_prem_distribution) | **GET** /premium-distributions | List PremDistribution |
| [**list_prem_distribution_available**](PremiumDistributionsApi.md#list_prem_distribution_available) | **GET** /premium-distributions-available/{asOfDate} | List of Distribution by Group that have not been distributed. |
| [**update_batch_prem_distribution**](PremiumDistributionsApi.md#update_batch_prem_distribution) | **PUT** /premium-distributions-batch | Create or Update Batch PremDistribution |
| [**update_prem_distribution**](PremiumDistributionsApi.md#update_prem_distribution) | **PUT** /premium-distributions/{premDistributionKey} | Update PremDistribution |


## create_prem_distribution

> <PremDistributionVBAResponse> create_prem_distribution(vbasoftware_database, prem_distribution)

Create PremDistribution

Creates a new PremDistribution

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

api_instance = Vba::PremiumDistributionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_distribution = Vba::PremDistribution.new({prem_distribution_key: 37, dist_setting_amount_pct: false}) # PremDistribution | 

begin
  # Create PremDistribution
  result = api_instance.create_prem_distribution(vbasoftware_database, prem_distribution)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->create_prem_distribution: #{e}"
end
```

#### Using the create_prem_distribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremDistributionVBAResponse>, Integer, Hash)> create_prem_distribution_with_http_info(vbasoftware_database, prem_distribution)

```ruby
begin
  # Create PremDistribution
  data, status_code, headers = api_instance.create_prem_distribution_with_http_info(vbasoftware_database, prem_distribution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremDistributionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->create_prem_distribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_distribution** | [**PremDistribution**](PremDistribution.md) |  |  |

### Return type

[**PremDistributionVBAResponse**](PremDistributionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_distribution

> delete_prem_distribution(vbasoftware_database, prem_distribution_key)

Delete PremDistribution

Deletes an PremDistribution

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

api_instance = Vba::PremiumDistributionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_distribution_key = 56 # Integer | PremDistribution Key

begin
  # Delete PremDistribution
  api_instance.delete_prem_distribution(vbasoftware_database, prem_distribution_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->delete_prem_distribution: #{e}"
end
```

#### Using the delete_prem_distribution_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_distribution_with_http_info(vbasoftware_database, prem_distribution_key)

```ruby
begin
  # Delete PremDistribution
  data, status_code, headers = api_instance.delete_prem_distribution_with_http_info(vbasoftware_database, prem_distribution_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->delete_prem_distribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_distribution_key** | **Integer** | PremDistribution Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## generate_prem_distribution

> generate_prem_distribution(vbasoftware_database, group_id, as_of_date)

Create Premium Distributions

Generate the Premium Distributions for the selected Group and As of Date.

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

api_instance = Vba::PremiumDistributionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
as_of_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | As of Date

begin
  # Create Premium Distributions
  api_instance.generate_prem_distribution(vbasoftware_database, group_id, as_of_date)
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->generate_prem_distribution: #{e}"
end
```

#### Using the generate_prem_distribution_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> generate_prem_distribution_with_http_info(vbasoftware_database, group_id, as_of_date)

```ruby
begin
  # Create Premium Distributions
  data, status_code, headers = api_instance.generate_prem_distribution_with_http_info(vbasoftware_database, group_id, as_of_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->generate_prem_distribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **as_of_date** | **Time** | As of Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## generate_prem_distribution_check

> generate_prem_distribution_check(vbasoftware_database, payee_id, payor_id, account_key, check_number)

Create Premium Distributions Checks

Generate the Premium Distribution Checks for the selected Payor and Payee.

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

api_instance = Vba::PremiumDistributionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID
payor_id = 'payor_id_example' # String | Payor ID
account_key = 56 # Integer | Account Key
check_number = 'check_number_example' # String | Check Number

begin
  # Create Premium Distributions Checks
  api_instance.generate_prem_distribution_check(vbasoftware_database, payee_id, payor_id, account_key, check_number)
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->generate_prem_distribution_check: #{e}"
end
```

#### Using the generate_prem_distribution_check_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> generate_prem_distribution_check_with_http_info(vbasoftware_database, payee_id, payor_id, account_key, check_number)

```ruby
begin
  # Create Premium Distributions Checks
  data, status_code, headers = api_instance.generate_prem_distribution_check_with_http_info(vbasoftware_database, payee_id, payor_id, account_key, check_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->generate_prem_distribution_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |
| **payor_id** | **String** | Payor ID |  |
| **account_key** | **Integer** | Account Key |  |
| **check_number** | **String** | Check Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_distribution

> <PremDistributionVBAResponse> get_prem_distribution(vbasoftware_database, prem_distribution_key)

Get PremDistribution

Gets PremDistribution

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

api_instance = Vba::PremiumDistributionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_distribution_key = 56 # Integer | PremDistribution Key

begin
  # Get PremDistribution
  result = api_instance.get_prem_distribution(vbasoftware_database, prem_distribution_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->get_prem_distribution: #{e}"
end
```

#### Using the get_prem_distribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremDistributionVBAResponse>, Integer, Hash)> get_prem_distribution_with_http_info(vbasoftware_database, prem_distribution_key)

```ruby
begin
  # Get PremDistribution
  data, status_code, headers = api_instance.get_prem_distribution_with_http_info(vbasoftware_database, prem_distribution_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremDistributionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->get_prem_distribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_distribution_key** | **Integer** | PremDistribution Key |  |

### Return type

[**PremDistributionVBAResponse**](PremDistributionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_distribution

> <PremDistributionListVBAResponse> list_prem_distribution(vbasoftware_database, opts)

List PremDistribution

Lists all PremDistribution

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

api_instance = Vba::PremiumDistributionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremDistribution
  result = api_instance.list_prem_distribution(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->list_prem_distribution: #{e}"
end
```

#### Using the list_prem_distribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremDistributionListVBAResponse>, Integer, Hash)> list_prem_distribution_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremDistribution
  data, status_code, headers = api_instance.list_prem_distribution_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremDistributionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->list_prem_distribution_with_http_info: #{e}"
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

[**PremDistributionListVBAResponse**](PremDistributionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_distribution_available

> <GetPremDistributionListResultListVBAResponse> list_prem_distribution_available(vbasoftware_database, as_of_date)

List of Distribution by Group that have not been distributed.

List of Distribution by Group that have not been distributed.

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

api_instance = Vba::PremiumDistributionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
as_of_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | As of Date

begin
  # List of Distribution by Group that have not been distributed.
  result = api_instance.list_prem_distribution_available(vbasoftware_database, as_of_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->list_prem_distribution_available: #{e}"
end
```

#### Using the list_prem_distribution_available_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPremDistributionListResultListVBAResponse>, Integer, Hash)> list_prem_distribution_available_with_http_info(vbasoftware_database, as_of_date)

```ruby
begin
  # List of Distribution by Group that have not been distributed.
  data, status_code, headers = api_instance.list_prem_distribution_available_with_http_info(vbasoftware_database, as_of_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPremDistributionListResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->list_prem_distribution_available_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **as_of_date** | **Time** | As of Date |  |

### Return type

[**GetPremDistributionListResultListVBAResponse**](GetPremDistributionListResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_distribution

> <MultiCodeResponseListVBAResponse> update_batch_prem_distribution(vbasoftware_database, prem_distribution)

Create or Update Batch PremDistribution

Create or Update multiple PremDistribution at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumDistributionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_distribution = [Vba::PremDistribution.new({prem_distribution_key: 37, dist_setting_amount_pct: false})] # Array<PremDistribution> | 

begin
  # Create or Update Batch PremDistribution
  result = api_instance.update_batch_prem_distribution(vbasoftware_database, prem_distribution)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->update_batch_prem_distribution: #{e}"
end
```

#### Using the update_batch_prem_distribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_distribution_with_http_info(vbasoftware_database, prem_distribution)

```ruby
begin
  # Create or Update Batch PremDistribution
  data, status_code, headers = api_instance.update_batch_prem_distribution_with_http_info(vbasoftware_database, prem_distribution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->update_batch_prem_distribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_distribution** | [**Array&lt;PremDistribution&gt;**](PremDistribution.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_distribution

> <PremDistributionVBAResponse> update_prem_distribution(vbasoftware_database, prem_distribution_key, prem_distribution)

Update PremDistribution

Updates a specific PremDistribution.

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

api_instance = Vba::PremiumDistributionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_distribution_key = 56 # Integer | PremDistribution Key
prem_distribution = Vba::PremDistribution.new({prem_distribution_key: 37, dist_setting_amount_pct: false}) # PremDistribution | 

begin
  # Update PremDistribution
  result = api_instance.update_prem_distribution(vbasoftware_database, prem_distribution_key, prem_distribution)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->update_prem_distribution: #{e}"
end
```

#### Using the update_prem_distribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremDistributionVBAResponse>, Integer, Hash)> update_prem_distribution_with_http_info(vbasoftware_database, prem_distribution_key, prem_distribution)

```ruby
begin
  # Update PremDistribution
  data, status_code, headers = api_instance.update_prem_distribution_with_http_info(vbasoftware_database, prem_distribution_key, prem_distribution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremDistributionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumDistributionsApi->update_prem_distribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_distribution_key** | **Integer** | PremDistribution Key |  |
| **prem_distribution** | [**PremDistribution**](PremDistribution.md) |  |  |

### Return type

[**PremDistributionVBAResponse**](PremDistributionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

