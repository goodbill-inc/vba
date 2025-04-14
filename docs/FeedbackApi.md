# Vba::FeedbackApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_feedback**](FeedbackApi.md#create_feedback) | **POST** /feedback | Create Feedback |


## create_feedback

> <StringVBAResponse> create_feedback(vbasoftware_database, feedback)

Create Feedback

Submits Feedback for the VBA application.

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

api_instance = Vba::FeedbackApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
feedback = Vba::Feedback.new({screen: 'screen_example', issue_type: 'issue_type_example', description: 'description_example'}) # Feedback | 

begin
  # Create Feedback
  result = api_instance.create_feedback(vbasoftware_database, feedback)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeedbackApi->create_feedback: #{e}"
end
```

#### Using the create_feedback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> create_feedback_with_http_info(vbasoftware_database, feedback)

```ruby
begin
  # Create Feedback
  data, status_code, headers = api_instance.create_feedback_with_http_info(vbasoftware_database, feedback)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeedbackApi->create_feedback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **feedback** | [**Feedback**](Feedback.md) |  |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

