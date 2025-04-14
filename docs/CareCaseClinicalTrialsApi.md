# Vba::CareCaseClinicalTrialsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_clinical_trial**](CareCaseClinicalTrialsApi.md#create_care_case_clinical_trial) | **POST** /care-case-clinical-trials | Create CareCaseClinicalTrial |
| [**delete_care_case_clinical_trial**](CareCaseClinicalTrialsApi.md#delete_care_case_clinical_trial) | **DELETE** /care-case-clinical-trials/{CareCaseClinicalTrial_Key} | Delete CareCaseClinicalTrial |
| [**get_care_case_clinical_trial**](CareCaseClinicalTrialsApi.md#get_care_case_clinical_trial) | **GET** /care-case-clinical-trials/{CareCaseClinicalTrial_Key} | Get CareCaseClinicalTrial |
| [**list_care_case_clinical_trial**](CareCaseClinicalTrialsApi.md#list_care_case_clinical_trial) | **GET** /care-case-clinical-trials | List CareCaseClinicalTrial |
| [**update_batch_care_case_clinical_trial**](CareCaseClinicalTrialsApi.md#update_batch_care_case_clinical_trial) | **PUT** /care-case-clinical-trials-batch | Create or Update Batch CareCaseClinicalTrial |
| [**update_care_case_clinical_trial**](CareCaseClinicalTrialsApi.md#update_care_case_clinical_trial) | **PUT** /care-case-clinical-trials/{CareCaseClinicalTrial_Key} | Update CareCaseClinicalTrial |


## create_care_case_clinical_trial

> <CareCaseClinicalTrialVBAResponse> create_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial)

Create CareCaseClinicalTrial

Creates a new CareCaseClinicalTrial

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

api_instance = Vba::CareCaseClinicalTrialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial = Vba::CareCaseClinicalTrial.new({care_case_clinical_trial_key: 37}) # CareCaseClinicalTrial | 

begin
  # Create CareCaseClinicalTrial
  result = api_instance.create_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->create_care_case_clinical_trial: #{e}"
end
```

#### Using the create_care_case_clinical_trial_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalTrialVBAResponse>, Integer, Hash)> create_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial)

```ruby
begin
  # Create CareCaseClinicalTrial
  data, status_code, headers = api_instance.create_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalTrialVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->create_care_case_clinical_trial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial** | [**CareCaseClinicalTrial**](CareCaseClinicalTrial.md) |  |  |

### Return type

[**CareCaseClinicalTrialVBAResponse**](CareCaseClinicalTrialVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_clinical_trial

> delete_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial_key)

Delete CareCaseClinicalTrial

Deletes an CareCaseClinicalTrial

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

api_instance = Vba::CareCaseClinicalTrialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial_key = 56 # Integer | CareCaseClinicalTrial Key

begin
  # Delete CareCaseClinicalTrial
  api_instance.delete_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->delete_care_case_clinical_trial: #{e}"
end
```

#### Using the delete_care_case_clinical_trial_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial_key)

```ruby
begin
  # Delete CareCaseClinicalTrial
  data, status_code, headers = api_instance.delete_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->delete_care_case_clinical_trial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial_key** | **Integer** | CareCaseClinicalTrial Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_clinical_trial

> <CareCaseClinicalTrialVBAResponse> get_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial_key)

Get CareCaseClinicalTrial

Gets CareCaseClinicalTrial

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

api_instance = Vba::CareCaseClinicalTrialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial_key = 56 # Integer | CareCaseClinicalTrial Key

begin
  # Get CareCaseClinicalTrial
  result = api_instance.get_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->get_care_case_clinical_trial: #{e}"
end
```

#### Using the get_care_case_clinical_trial_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalTrialVBAResponse>, Integer, Hash)> get_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial_key)

```ruby
begin
  # Get CareCaseClinicalTrial
  data, status_code, headers = api_instance.get_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalTrialVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->get_care_case_clinical_trial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial_key** | **Integer** | CareCaseClinicalTrial Key |  |

### Return type

[**CareCaseClinicalTrialVBAResponse**](CareCaseClinicalTrialVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_clinical_trial

> <CareCaseClinicalTrialListVBAResponse> list_care_case_clinical_trial(vbasoftware_database, opts)

List CareCaseClinicalTrial

Lists all CareCaseClinicalTrial

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

api_instance = Vba::CareCaseClinicalTrialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseClinicalTrial
  result = api_instance.list_care_case_clinical_trial(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->list_care_case_clinical_trial: #{e}"
end
```

#### Using the list_care_case_clinical_trial_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalTrialListVBAResponse>, Integer, Hash)> list_care_case_clinical_trial_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseClinicalTrial
  data, status_code, headers = api_instance.list_care_case_clinical_trial_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalTrialListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->list_care_case_clinical_trial_with_http_info: #{e}"
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

[**CareCaseClinicalTrialListVBAResponse**](CareCaseClinicalTrialListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_clinical_trial

> <MultiCodeResponseListVBAResponse> update_batch_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial)

Create or Update Batch CareCaseClinicalTrial

Create or Update multiple CareCaseClinicalTrial at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseClinicalTrialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial = [Vba::CareCaseClinicalTrial.new({care_case_clinical_trial_key: 37})] # Array<CareCaseClinicalTrial> | 

begin
  # Create or Update Batch CareCaseClinicalTrial
  result = api_instance.update_batch_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->update_batch_care_case_clinical_trial: #{e}"
end
```

#### Using the update_batch_care_case_clinical_trial_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial)

```ruby
begin
  # Create or Update Batch CareCaseClinicalTrial
  data, status_code, headers = api_instance.update_batch_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->update_batch_care_case_clinical_trial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial** | [**Array&lt;CareCaseClinicalTrial&gt;**](CareCaseClinicalTrial.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_clinical_trial

> <CareCaseClinicalTrialVBAResponse> update_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial_key, care_case_clinical_trial)

Update CareCaseClinicalTrial

Updates a specific CareCaseClinicalTrial.

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

api_instance = Vba::CareCaseClinicalTrialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial_key = 56 # Integer | CareCaseClinicalTrial Key
care_case_clinical_trial = Vba::CareCaseClinicalTrial.new({care_case_clinical_trial_key: 37}) # CareCaseClinicalTrial | 

begin
  # Update CareCaseClinicalTrial
  result = api_instance.update_care_case_clinical_trial(vbasoftware_database, care_case_clinical_trial_key, care_case_clinical_trial)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->update_care_case_clinical_trial: #{e}"
end
```

#### Using the update_care_case_clinical_trial_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalTrialVBAResponse>, Integer, Hash)> update_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial_key, care_case_clinical_trial)

```ruby
begin
  # Update CareCaseClinicalTrial
  data, status_code, headers = api_instance.update_care_case_clinical_trial_with_http_info(vbasoftware_database, care_case_clinical_trial_key, care_case_clinical_trial)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalTrialVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialsApi->update_care_case_clinical_trial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial_key** | **Integer** | CareCaseClinicalTrial Key |  |
| **care_case_clinical_trial** | [**CareCaseClinicalTrial**](CareCaseClinicalTrial.md) |  |  |

### Return type

[**CareCaseClinicalTrialVBAResponse**](CareCaseClinicalTrialVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

