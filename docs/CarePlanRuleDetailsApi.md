# Vba::CarePlanRuleDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_plan_rule_detail**](CarePlanRuleDetailsApi.md#create_care_plan_rule_detail) | **POST** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/details | Create CarePlanRuleDetail |
| [**delete_care_plan_rule_detail**](CarePlanRuleDetailsApi.md#delete_care_plan_rule_detail) | **DELETE** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/details/{carePlanRuleDetailKey} | Delete CarePlanRuleDetail |
| [**get_care_plan_rule_detail**](CarePlanRuleDetailsApi.md#get_care_plan_rule_detail) | **GET** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/details/{carePlanRuleDetailKey} | Get CarePlanRuleDetail |
| [**list_care_plan_rule_detail**](CarePlanRuleDetailsApi.md#list_care_plan_rule_detail) | **GET** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/details | List CarePlanRuleDetail |
| [**update_batch_care_plan_rule_detail**](CarePlanRuleDetailsApi.md#update_batch_care_plan_rule_detail) | **PUT** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/details-batch | Create or Update Batch CarePlanRuleDetail |
| [**update_care_plan_rule_detail**](CarePlanRuleDetailsApi.md#update_care_plan_rule_detail) | **PUT** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/details/{carePlanRuleDetailKey} | Update CarePlanRuleDetail |


## create_care_plan_rule_detail

> <CarePlanRuleDetailVBAResponse> create_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail)

Create CarePlanRuleDetail

Creates a new CarePlanRuleDetail

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

api_instance = Vba::CarePlanRuleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_detail = Vba::CarePlanRuleDetail.new({care_plan_rule_detail_key: 37, care_plan_rule_key: 37}) # CarePlanRuleDetail | 

begin
  # Create CarePlanRuleDetail
  result = api_instance.create_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->create_care_plan_rule_detail: #{e}"
end
```

#### Using the create_care_plan_rule_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleDetailVBAResponse>, Integer, Hash)> create_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail)

```ruby
begin
  # Create CarePlanRuleDetail
  data, status_code, headers = api_instance.create_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->create_care_plan_rule_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_detail** | [**CarePlanRuleDetail**](CarePlanRuleDetail.md) |  |  |

### Return type

[**CarePlanRuleDetailVBAResponse**](CarePlanRuleDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_plan_rule_detail

> delete_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key)

Delete CarePlanRuleDetail

Deletes an CarePlanRuleDetail

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

api_instance = Vba::CarePlanRuleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_detail_key = 56 # Integer | CarePlanRuleDetail Key

begin
  # Delete CarePlanRuleDetail
  api_instance.delete_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->delete_care_plan_rule_detail: #{e}"
end
```

#### Using the delete_care_plan_rule_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key)

```ruby
begin
  # Delete CarePlanRuleDetail
  data, status_code, headers = api_instance.delete_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->delete_care_plan_rule_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_detail_key** | **Integer** | CarePlanRuleDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_plan_rule_detail

> <CarePlanRuleDetailVBAResponse> get_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key)

Get CarePlanRuleDetail

Gets CarePlanRuleDetail

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

api_instance = Vba::CarePlanRuleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_detail_key = 56 # Integer | CarePlanRuleDetail Key

begin
  # Get CarePlanRuleDetail
  result = api_instance.get_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->get_care_plan_rule_detail: #{e}"
end
```

#### Using the get_care_plan_rule_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleDetailVBAResponse>, Integer, Hash)> get_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key)

```ruby
begin
  # Get CarePlanRuleDetail
  data, status_code, headers = api_instance.get_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->get_care_plan_rule_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_detail_key** | **Integer** | CarePlanRuleDetail Key |  |

### Return type

[**CarePlanRuleDetailVBAResponse**](CarePlanRuleDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_plan_rule_detail

> <CarePlanRuleDetailListVBAResponse> list_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, opts)

List CarePlanRuleDetail

Lists all CarePlanRuleDetail for the given carePlanRuleKey

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

api_instance = Vba::CarePlanRuleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CarePlanRuleDetail
  result = api_instance.list_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->list_care_plan_rule_detail: #{e}"
end
```

#### Using the list_care_plan_rule_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleDetailListVBAResponse>, Integer, Hash)> list_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, opts)

```ruby
begin
  # List CarePlanRuleDetail
  data, status_code, headers = api_instance.list_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->list_care_plan_rule_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CarePlanRuleDetailListVBAResponse**](CarePlanRuleDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_plan_rule_detail

> <MultiCodeResponseListVBAResponse> update_batch_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail)

Create or Update Batch CarePlanRuleDetail

Create or Update multiple CarePlanRuleDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CarePlanRuleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_detail = [Vba::CarePlanRuleDetail.new({care_plan_rule_detail_key: 37, care_plan_rule_key: 37})] # Array<CarePlanRuleDetail> | 

begin
  # Create or Update Batch CarePlanRuleDetail
  result = api_instance.update_batch_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->update_batch_care_plan_rule_detail: #{e}"
end
```

#### Using the update_batch_care_plan_rule_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail)

```ruby
begin
  # Create or Update Batch CarePlanRuleDetail
  data, status_code, headers = api_instance.update_batch_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->update_batch_care_plan_rule_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_detail** | [**Array&lt;CarePlanRuleDetail&gt;**](CarePlanRuleDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_plan_rule_detail

> <CarePlanRuleDetailVBAResponse> update_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key, care_plan_rule_detail)

Update CarePlanRuleDetail

Updates a specific CarePlanRuleDetail.

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

api_instance = Vba::CarePlanRuleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_detail_key = 56 # Integer | CarePlanRuleDetail Key
care_plan_rule_detail = Vba::CarePlanRuleDetail.new({care_plan_rule_detail_key: 37, care_plan_rule_key: 37}) # CarePlanRuleDetail | 

begin
  # Update CarePlanRuleDetail
  result = api_instance.update_care_plan_rule_detail(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key, care_plan_rule_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->update_care_plan_rule_detail: #{e}"
end
```

#### Using the update_care_plan_rule_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleDetailVBAResponse>, Integer, Hash)> update_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key, care_plan_rule_detail)

```ruby
begin
  # Update CarePlanRuleDetail
  data, status_code, headers = api_instance.update_care_plan_rule_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_detail_key, care_plan_rule_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleDetailsApi->update_care_plan_rule_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_detail_key** | **Integer** | CarePlanRuleDetail Key |  |
| **care_plan_rule_detail** | [**CarePlanRuleDetail**](CarePlanRuleDetail.md) |  |  |

### Return type

[**CarePlanRuleDetailVBAResponse**](CarePlanRuleDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

