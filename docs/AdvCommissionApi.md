# Vba::AdvCommissionApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**commission_generate**](AdvCommissionApi.md#commission_generate) | **POST** /commission-generate | Commission Generate |
| [**commission_generate_activity**](AdvCommissionApi.md#commission_generate_activity) | **POST** /commission-generate-activity | Generate Commissions |
| [**commission_generate_check**](AdvCommissionApi.md#commission_generate_check) | **POST** /commission-generate-checks | Generate Commission Checks |
| [**undo_by_rep_commission_activity**](AdvCommissionApi.md#undo_by_rep_commission_activity) | **POST** /commission-activities-undo-by-rep/{commActivityKey} | Undo CommissionActivity by Rep or Group |
| [**undo_commission_activity**](AdvCommissionApi.md#undo_commission_activity) | **POST** /commission-activities-undo/{commActivityKey} | Undo CommissionActivity |


## commission_generate

> commission_generate(vbasoftware_database)

Commission Generate

Generates Commission records and attaches those to a new Commission Transaction based on entered criteria.

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

api_instance = Vba::AdvCommissionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Commission Generate
  api_instance.commission_generate(vbasoftware_database)
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->commission_generate: #{e}"
end
```

#### Using the commission_generate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> commission_generate_with_http_info(vbasoftware_database)

```ruby
begin
  # Commission Generate
  data, status_code, headers = api_instance.commission_generate_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->commission_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## commission_generate_activity

> commission_generate_activity(vbasoftware_database, commission_generate)

Generate Commissions

Generates the Commission Activity records to be used by the Commission backend process for generation.

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

api_instance = Vba::AdvCommissionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_generate = Vba::CommissionGenerate.new # CommissionGenerate | 

begin
  # Generate Commissions
  api_instance.commission_generate_activity(vbasoftware_database, commission_generate)
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->commission_generate_activity: #{e}"
end
```

#### Using the commission_generate_activity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> commission_generate_activity_with_http_info(vbasoftware_database, commission_generate)

```ruby
begin
  # Generate Commissions
  data, status_code, headers = api_instance.commission_generate_activity_with_http_info(vbasoftware_database, commission_generate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->commission_generate_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_generate** | [**CommissionGenerate**](CommissionGenerate.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## commission_generate_check

> <Int32VBAResponse> commission_generate_check(vbasoftware_database, commchecks)

Generate Commission Checks

Send in a list of Commission Checks to be generated.

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

api_instance = Vba::AdvCommissionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commchecks = [Vba::COMMCHECKS.new] # Array<COMMCHECKS> | 

begin
  # Generate Commission Checks
  result = api_instance.commission_generate_check(vbasoftware_database, commchecks)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->commission_generate_check: #{e}"
end
```

#### Using the commission_generate_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> commission_generate_check_with_http_info(vbasoftware_database, commchecks)

```ruby
begin
  # Generate Commission Checks
  data, status_code, headers = api_instance.commission_generate_check_with_http_info(vbasoftware_database, commchecks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->commission_generate_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commchecks** | [**Array&lt;COMMCHECKS&gt;**](COMMCHECKS.md) |  |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## undo_by_rep_commission_activity

> <CommissionActivityVBAResponse> undo_by_rep_commission_activity(vbasoftware_database, comm_activity_key, opts)

Undo CommissionActivity by Rep or Group

Undo Commissions by Commission Activity based on the passed in optional parameters of commAgencyRep or groupId.  Group undo takes priory if passed in with a Rep Key.

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

api_instance = Vba::AdvCommissionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
opts = {
  undo_user: 'undo_user_example', # String | Undo User
  group_id: 'group_id_example', # String | Group ID
  comm_agency_rep_key: 56 # Integer | Agency Rep Key
}

begin
  # Undo CommissionActivity by Rep or Group
  result = api_instance.undo_by_rep_commission_activity(vbasoftware_database, comm_activity_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->undo_by_rep_commission_activity: #{e}"
end
```

#### Using the undo_by_rep_commission_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionActivityVBAResponse>, Integer, Hash)> undo_by_rep_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, opts)

```ruby
begin
  # Undo CommissionActivity by Rep or Group
  data, status_code, headers = api_instance.undo_by_rep_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionActivityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->undo_by_rep_commission_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **undo_user** | **String** | Undo User | [optional] |
| **group_id** | **String** | Group ID | [optional] |
| **comm_agency_rep_key** | **Integer** | Agency Rep Key | [optional] |

### Return type

[**CommissionActivityVBAResponse**](CommissionActivityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## undo_commission_activity

> <CommissionActivityVBAResponse> undo_commission_activity(vbasoftware_database, comm_activity_key, opts)

Undo CommissionActivity

Undo Commissions by Commission Activity

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

api_instance = Vba::AdvCommissionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
opts = {
  undo_user: 'undo_user_example' # String | Undo User
}

begin
  # Undo CommissionActivity
  result = api_instance.undo_commission_activity(vbasoftware_database, comm_activity_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->undo_commission_activity: #{e}"
end
```

#### Using the undo_commission_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionActivityVBAResponse>, Integer, Hash)> undo_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, opts)

```ruby
begin
  # Undo CommissionActivity
  data, status_code, headers = api_instance.undo_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionActivityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvCommissionApi->undo_commission_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **undo_user** | **String** | Undo User | [optional] |

### Return type

[**CommissionActivityVBAResponse**](CommissionActivityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

