# Vba::PremiumRatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_prem_rate_from_template**](PremiumRatesApi.md#add_prem_rate_from_template) | **POST** /premium-rates/{premRateKey}/add-from-template | Add Rate from Template |
| [**billing_rate_change**](PremiumRatesApi.md#billing_rate_change) | **POST** /billing-rate-change | Change Premium Rates |
| [**billing_rate_copy**](PremiumRatesApi.md#billing_rate_copy) | **POST** /billing-rate-copy | Copy Premium Rates |
| [**create_prem_rate**](PremiumRatesApi.md#create_prem_rate) | **POST** /premium-rates | Create PremRate |
| [**delete_prem_rate**](PremiumRatesApi.md#delete_prem_rate) | **DELETE** /premium-rates/{premRateKey} | Delete PremRate |
| [**get_prem_rate**](PremiumRatesApi.md#get_prem_rate) | **GET** /premium-rates/{premRateKey} | Get PremRate |
| [**list_included_prem_rates**](PremiumRatesApi.md#list_included_prem_rates) | **GET** /included-premium-rates | List Included PremRate |
| [**list_prem_rate**](PremiumRatesApi.md#list_prem_rate) | **GET** /premium-rates | List PremRate |
| [**list_prem_rate_nested**](PremiumRatesApi.md#list_prem_rate_nested) | **GET** /premium-rates-nested | List Premium Rates nested by Division/Plan/Category/Basis |
| [**update_batch_prem_rate**](PremiumRatesApi.md#update_batch_prem_rate) | **PUT** /premium-rates-batch | Create or Update Batch PremRate |
| [**update_prem_rate**](PremiumRatesApi.md#update_prem_rate) | **PUT** /premium-rates/{premRateKey} | Update PremRate |


## add_prem_rate_from_template

> <PremRateVBAResponse> add_prem_rate_from_template(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config)

Add Rate from Template

Create a new Premium Rate based on the selected Template Rate.

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
billing_add_rate_from_template_config = Vba::BillingAddRateFromTemplateConfig.new # BillingAddRateFromTemplateConfig | 

begin
  # Add Rate from Template
  result = api_instance.add_prem_rate_from_template(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->add_prem_rate_from_template: #{e}"
end
```

#### Using the add_prem_rate_from_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateVBAResponse>, Integer, Hash)> add_prem_rate_from_template_with_http_info(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config)

```ruby
begin
  # Add Rate from Template
  data, status_code, headers = api_instance.add_prem_rate_from_template_with_http_info(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->add_prem_rate_from_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **billing_add_rate_from_template_config** | [**BillingAddRateFromTemplateConfig**](BillingAddRateFromTemplateConfig.md) |  |  |

### Return type

[**PremRateVBAResponse**](PremRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## billing_rate_change

> billing_rate_change(vbasoftware_database, billing_rate_modify_config)

Change Premium Rates

Take a list of Rates and a set of configuration options and change those rates.

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_rate_modify_config = Vba::BillingRateModifyConfig.new # BillingRateModifyConfig | 

begin
  # Change Premium Rates
  api_instance.billing_rate_change(vbasoftware_database, billing_rate_modify_config)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->billing_rate_change: #{e}"
end
```

#### Using the billing_rate_change_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_rate_change_with_http_info(vbasoftware_database, billing_rate_modify_config)

```ruby
begin
  # Change Premium Rates
  data, status_code, headers = api_instance.billing_rate_change_with_http_info(vbasoftware_database, billing_rate_modify_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->billing_rate_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_rate_modify_config** | [**BillingRateModifyConfig**](BillingRateModifyConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## billing_rate_copy

> billing_rate_copy(vbasoftware_database, billing_rate_modify_config)

Copy Premium Rates

Take a list of Rates and a set of configuration options and copy those rates.

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_rate_modify_config = Vba::BillingRateModifyConfig.new # BillingRateModifyConfig | 

begin
  # Copy Premium Rates
  api_instance.billing_rate_copy(vbasoftware_database, billing_rate_modify_config)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->billing_rate_copy: #{e}"
end
```

#### Using the billing_rate_copy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_rate_copy_with_http_info(vbasoftware_database, billing_rate_modify_config)

```ruby
begin
  # Copy Premium Rates
  data, status_code, headers = api_instance.billing_rate_copy_with_http_info(vbasoftware_database, billing_rate_modify_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->billing_rate_copy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_rate_modify_config** | [**BillingRateModifyConfig**](BillingRateModifyConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## create_prem_rate

> <PremRateVBAResponse> create_prem_rate(vbasoftware_database, prem_rate)

Create PremRate

Creates a new PremRate

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate = Vba::PremRate.new({prem_rate_key: 37, adult: false, assign_to_new_division: false, assign_to_new_group: false, assign_to_new_member: false, auto_adjust: false, avoid_retro: false, child: false, employer_contribution_pct: false, group_division_offering: false, new_hire_age: false, override_enrolled_dates: false, premium_proration: false}) # PremRate | 

begin
  # Create PremRate
  result = api_instance.create_prem_rate(vbasoftware_database, prem_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->create_prem_rate: #{e}"
end
```

#### Using the create_prem_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateVBAResponse>, Integer, Hash)> create_prem_rate_with_http_info(vbasoftware_database, prem_rate)

```ruby
begin
  # Create PremRate
  data, status_code, headers = api_instance.create_prem_rate_with_http_info(vbasoftware_database, prem_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->create_prem_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate** | [**PremRate**](PremRate.md) |  |  |

### Return type

[**PremRateVBAResponse**](PremRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate

> delete_prem_rate(vbasoftware_database, prem_rate_key)

Delete PremRate

Deletes an PremRate

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key

begin
  # Delete PremRate
  api_instance.delete_prem_rate(vbasoftware_database, prem_rate_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->delete_prem_rate: #{e}"
end
```

#### Using the delete_prem_rate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_with_http_info(vbasoftware_database, prem_rate_key)

```ruby
begin
  # Delete PremRate
  data, status_code, headers = api_instance.delete_prem_rate_with_http_info(vbasoftware_database, prem_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->delete_prem_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate

> <PremRateVBAResponse> get_prem_rate(vbasoftware_database, prem_rate_key)

Get PremRate

Gets PremRate

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key

begin
  # Get PremRate
  result = api_instance.get_prem_rate(vbasoftware_database, prem_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->get_prem_rate: #{e}"
end
```

#### Using the get_prem_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateVBAResponse>, Integer, Hash)> get_prem_rate_with_http_info(vbasoftware_database, prem_rate_key)

```ruby
begin
  # Get PremRate
  data, status_code, headers = api_instance.get_prem_rate_with_http_info(vbasoftware_database, prem_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->get_prem_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |

### Return type

[**PremRateVBAResponse**](PremRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_included_prem_rates

> <PremRateListVBAResponse> list_included_prem_rates(vbasoftware_database, group_id, opts)

List Included PremRate

Lists all PremRate included in the specified Group ID and Division ID.

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  division_id: 'division_id_example', # String | Division ID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Included PremRate
  result = api_instance.list_included_prem_rates(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->list_included_prem_rates: #{e}"
end
```

#### Using the list_included_prem_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateListVBAResponse>, Integer, Hash)> list_included_prem_rates_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List Included PremRate
  data, status_code, headers = api_instance.list_included_prem_rates_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->list_included_prem_rates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremRateListVBAResponse**](PremRateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate

> <PremRateListVBAResponse> list_prem_rate(vbasoftware_database, opts)

List PremRate

Lists all PremRate

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  prem_rate_type: 'prem_rate_type_example', # String | PremRate_Type
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRate
  result = api_instance.list_prem_rate(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->list_prem_rate: #{e}"
end
```

#### Using the list_prem_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateListVBAResponse>, Integer, Hash)> list_prem_rate_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremRate
  data, status_code, headers = api_instance.list_prem_rate_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->list_prem_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_type** | **String** | PremRate_Type | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremRateListVBAResponse**](PremRateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_nested

> <PremRateNestedListVBAResponse> list_prem_rate_nested(vbasoftware_database, opts)

List Premium Rates nested by Division/Plan/Category/Basis

Lists all Premium Rates for the given groupID and have it nested by Division, then by Plan, then by Rate Category, then by Rate Basis.

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  prem_rate_type: 'prem_rate_type_example', # String | PremRate_Type
  group_id: 'group_id_example' # String | Group ID
}

begin
  # List Premium Rates nested by Division/Plan/Category/Basis
  result = api_instance.list_prem_rate_nested(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->list_prem_rate_nested: #{e}"
end
```

#### Using the list_prem_rate_nested_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateNestedListVBAResponse>, Integer, Hash)> list_prem_rate_nested_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Premium Rates nested by Division/Plan/Category/Basis
  data, status_code, headers = api_instance.list_prem_rate_nested_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateNestedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->list_prem_rate_nested_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_type** | **String** | PremRate_Type | [optional] |
| **group_id** | **String** | Group ID | [optional] |

### Return type

[**PremRateNestedListVBAResponse**](PremRateNestedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate(vbasoftware_database, prem_rate)

Create or Update Batch PremRate

Create or Update multiple PremRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate = [Vba::PremRate.new({prem_rate_key: 37, adult: false, assign_to_new_division: false, assign_to_new_group: false, assign_to_new_member: false, auto_adjust: false, avoid_retro: false, child: false, employer_contribution_pct: false, group_division_offering: false, new_hire_age: false, override_enrolled_dates: false, premium_proration: false})] # Array<PremRate> | 

begin
  # Create or Update Batch PremRate
  result = api_instance.update_batch_prem_rate(vbasoftware_database, prem_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->update_batch_prem_rate: #{e}"
end
```

#### Using the update_batch_prem_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_with_http_info(vbasoftware_database, prem_rate)

```ruby
begin
  # Create or Update Batch PremRate
  data, status_code, headers = api_instance.update_batch_prem_rate_with_http_info(vbasoftware_database, prem_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->update_batch_prem_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate** | [**Array&lt;PremRate&gt;**](PremRate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate

> <PremRateVBAResponse> update_prem_rate(vbasoftware_database, prem_rate_key, prem_rate)

Update PremRate

Updates a specific PremRate.

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

api_instance = Vba::PremiumRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate = Vba::PremRate.new({prem_rate_key: 37, adult: false, assign_to_new_division: false, assign_to_new_group: false, assign_to_new_member: false, auto_adjust: false, avoid_retro: false, child: false, employer_contribution_pct: false, group_division_offering: false, new_hire_age: false, override_enrolled_dates: false, premium_proration: false}) # PremRate | 

begin
  # Update PremRate
  result = api_instance.update_prem_rate(vbasoftware_database, prem_rate_key, prem_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->update_prem_rate: #{e}"
end
```

#### Using the update_prem_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateVBAResponse>, Integer, Hash)> update_prem_rate_with_http_info(vbasoftware_database, prem_rate_key, prem_rate)

```ruby
begin
  # Update PremRate
  data, status_code, headers = api_instance.update_prem_rate_with_http_info(vbasoftware_database, prem_rate_key, prem_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatesApi->update_prem_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate** | [**PremRate**](PremRate.md) |  |  |

### Return type

[**PremRateVBAResponse**](PremRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

