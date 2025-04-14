# Vba::ProviderBenefitAdminFeesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_benefit_admin**](ProviderBenefitAdminFeesApi.md#create_provider_benefit_admin) | **POST** /provider/{providerId}/benefit-admin-fees | Create Provider Benefit Admin Fee |
| [**delete_provider_benefit_admin**](ProviderBenefitAdminFeesApi.md#delete_provider_benefit_admin) | **DELETE** /provider/{providerId}/benefit-admin-fees/{benefitCode}/{effectiveDate} | Delete ProviderBenefitAdmin |
| [**get_provider_benefit_admin**](ProviderBenefitAdminFeesApi.md#get_provider_benefit_admin) | **GET** /provider/{providerId}/benefit-admin-fees/{benefitCode}/{effectiveDate} | Get ProviderBenefitAdmin |
| [**list_provider_benefit_admin_fees**](ProviderBenefitAdminFeesApi.md#list_provider_benefit_admin_fees) | **GET** /provider/{providerId}/benefit-admin-fees | List Provider Benefit Admin Fees |
| [**update_batch_provider_benefit_admin**](ProviderBenefitAdminFeesApi.md#update_batch_provider_benefit_admin) | **PUT** /provider/{providerId}/benefit-admin-fees-batch | Update Batch ProviderBenefitAdmin |
| [**update_provider_benefit_admin**](ProviderBenefitAdminFeesApi.md#update_provider_benefit_admin) | **PUT** /provider/{providerId}/benefit-admin-fees/{benefitCode}/{effectiveDate} | Update ProviderBenefitAdmin |


## create_provider_benefit_admin

> <ProviderBenefitAdminVBAResponse> create_provider_benefit_admin(vbasoftware_database, provider_id, provider_benefit_admin)

Create Provider Benefit Admin Fee

Creates a new ProviderBenefitAdmin Fee

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

api_instance = Vba::ProviderBenefitAdminFeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_benefit_admin = Vba::ProviderBenefitAdmin.new({provider_id: 'provider_id_example', benefit_code: 'benefit_code_example', effective_date: Time.now, admin_pct: false}) # ProviderBenefitAdmin | 

begin
  # Create Provider Benefit Admin Fee
  result = api_instance.create_provider_benefit_admin(vbasoftware_database, provider_id, provider_benefit_admin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->create_provider_benefit_admin: #{e}"
end
```

#### Using the create_provider_benefit_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderBenefitAdminVBAResponse>, Integer, Hash)> create_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, provider_benefit_admin)

```ruby
begin
  # Create Provider Benefit Admin Fee
  data, status_code, headers = api_instance.create_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, provider_benefit_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderBenefitAdminVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->create_provider_benefit_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_benefit_admin** | [**ProviderBenefitAdmin**](ProviderBenefitAdmin.md) |  |  |

### Return type

[**ProviderBenefitAdminVBAResponse**](ProviderBenefitAdminVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_benefit_admin

> delete_provider_benefit_admin(vbasoftware_database, provider_id, benefit_code, effective_date)

Delete ProviderBenefitAdmin

Deletes an ProviderBenefitAdmin

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

api_instance = Vba::ProviderBenefitAdminFeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
benefit_code = 'benefit_code_example' # String | Benefit Code
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete ProviderBenefitAdmin
  api_instance.delete_provider_benefit_admin(vbasoftware_database, provider_id, benefit_code, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->delete_provider_benefit_admin: #{e}"
end
```

#### Using the delete_provider_benefit_admin_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, benefit_code, effective_date)

```ruby
begin
  # Delete ProviderBenefitAdmin
  data, status_code, headers = api_instance.delete_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, benefit_code, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->delete_provider_benefit_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_benefit_admin

> <ProviderBenefitAdminVBAResponse> get_provider_benefit_admin(vbasoftware_database, provider_id, benefit_code, effective_date)

Get ProviderBenefitAdmin

Gets ProviderBenefitAdmin

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

api_instance = Vba::ProviderBenefitAdminFeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
benefit_code = 'benefit_code_example' # String | Benefit Code
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get ProviderBenefitAdmin
  result = api_instance.get_provider_benefit_admin(vbasoftware_database, provider_id, benefit_code, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->get_provider_benefit_admin: #{e}"
end
```

#### Using the get_provider_benefit_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderBenefitAdminVBAResponse>, Integer, Hash)> get_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, benefit_code, effective_date)

```ruby
begin
  # Get ProviderBenefitAdmin
  data, status_code, headers = api_instance.get_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, benefit_code, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderBenefitAdminVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->get_provider_benefit_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**ProviderBenefitAdminVBAResponse**](ProviderBenefitAdminVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_benefit_admin_fees

> <ProviderBenefitAdminListVBAResponse> list_provider_benefit_admin_fees(vbasoftware_database, provider_id)

List Provider Benefit Admin Fees

List All Benefit Admin Fees for a given Provider

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

api_instance = Vba::ProviderBenefitAdminFeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List Provider Benefit Admin Fees
  result = api_instance.list_provider_benefit_admin_fees(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->list_provider_benefit_admin_fees: #{e}"
end
```

#### Using the list_provider_benefit_admin_fees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderBenefitAdminListVBAResponse>, Integer, Hash)> list_provider_benefit_admin_fees_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List Provider Benefit Admin Fees
  data, status_code, headers = api_instance.list_provider_benefit_admin_fees_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderBenefitAdminListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->list_provider_benefit_admin_fees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderBenefitAdminListVBAResponse**](ProviderBenefitAdminListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_benefit_admin

> <MultiCodeResponseListVBAResponse> update_batch_provider_benefit_admin(vbasoftware_database, provider_id, provider_benefit_admin)

Update Batch ProviderBenefitAdmin

Updates a multiple ProviderBenefitAdmin.

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

api_instance = Vba::ProviderBenefitAdminFeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_benefit_admin = [Vba::ProviderBenefitAdmin.new({provider_id: 'provider_id_example', benefit_code: 'benefit_code_example', effective_date: Time.now, admin_pct: false})] # Array<ProviderBenefitAdmin> | 

begin
  # Update Batch ProviderBenefitAdmin
  result = api_instance.update_batch_provider_benefit_admin(vbasoftware_database, provider_id, provider_benefit_admin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->update_batch_provider_benefit_admin: #{e}"
end
```

#### Using the update_batch_provider_benefit_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, provider_benefit_admin)

```ruby
begin
  # Update Batch ProviderBenefitAdmin
  data, status_code, headers = api_instance.update_batch_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, provider_benefit_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->update_batch_provider_benefit_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_benefit_admin** | [**Array&lt;ProviderBenefitAdmin&gt;**](ProviderBenefitAdmin.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_benefit_admin

> <ProviderBenefitAdminVBAResponse> update_provider_benefit_admin(vbasoftware_database, provider_id, benefit_code, effective_date, provider_benefit_admin)

Update ProviderBenefitAdmin

Updates a specific ProviderBenefitAdmin.

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

api_instance = Vba::ProviderBenefitAdminFeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
benefit_code = 'benefit_code_example' # String | Benefit Code
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
provider_benefit_admin = Vba::ProviderBenefitAdmin.new({provider_id: 'provider_id_example', benefit_code: 'benefit_code_example', effective_date: Time.now, admin_pct: false}) # ProviderBenefitAdmin | 

begin
  # Update ProviderBenefitAdmin
  result = api_instance.update_provider_benefit_admin(vbasoftware_database, provider_id, benefit_code, effective_date, provider_benefit_admin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->update_provider_benefit_admin: #{e}"
end
```

#### Using the update_provider_benefit_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderBenefitAdminVBAResponse>, Integer, Hash)> update_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, benefit_code, effective_date, provider_benefit_admin)

```ruby
begin
  # Update ProviderBenefitAdmin
  data, status_code, headers = api_instance.update_provider_benefit_admin_with_http_info(vbasoftware_database, provider_id, benefit_code, effective_date, provider_benefit_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderBenefitAdminVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderBenefitAdminFeesApi->update_provider_benefit_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **effective_date** | **Time** | Effective Date |  |
| **provider_benefit_admin** | [**ProviderBenefitAdmin**](ProviderBenefitAdmin.md) |  |  |

### Return type

[**ProviderBenefitAdminVBAResponse**](ProviderBenefitAdminVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

