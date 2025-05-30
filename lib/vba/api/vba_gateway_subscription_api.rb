=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class VBAGatewaySubscriptionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create VBAGatewaySubscription
    # Creates a new VBAGatewaySubscription
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription [VBAGatewaySubscription] 
    # @param [Hash] opts the optional parameters
    # @return [VBAGatewaySubscriptionVBAResponse]
    def create_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription, opts = {})
      data, _status_code, _headers = create_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription, opts)
      data
    end

    # Create VBAGatewaySubscription
    # Creates a new VBAGatewaySubscription
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription [VBAGatewaySubscription] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAGatewaySubscriptionVBAResponse, Integer, Hash)>] VBAGatewaySubscriptionVBAResponse data, response status code and response headers
    def create_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAGatewaySubscriptionApi.create_vba_gateway_subscription ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAGatewaySubscriptionApi.create_vba_gateway_subscription"
      end
      # verify the required parameter 'vba_gateway_subscription' is set
      if @api_client.config.client_side_validation && vba_gateway_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'vba_gateway_subscription' when calling VBAGatewaySubscriptionApi.create_vba_gateway_subscription"
      end
      # resource path
      local_var_path = '/vbagateway-subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vba_gateway_subscription)

      # return_type
      return_type = opts[:debug_return_type] || 'VBAGatewaySubscriptionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAGatewaySubscriptionApi.create_vba_gateway_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAGatewaySubscriptionApi#create_vba_gateway_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete VBAGatewaySubscription
    # Deletes an VBAGatewaySubscription
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription_key [Integer] VBAGatewaySubscription Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription_key, opts = {})
      delete_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key, opts)
      nil
    end

    # Delete VBAGatewaySubscription
    # Deletes an VBAGatewaySubscription
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription_key [Integer] VBAGatewaySubscription Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAGatewaySubscriptionApi.delete_vba_gateway_subscription ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAGatewaySubscriptionApi.delete_vba_gateway_subscription"
      end
      # verify the required parameter 'vba_gateway_subscription_key' is set
      if @api_client.config.client_side_validation && vba_gateway_subscription_key.nil?
        fail ArgumentError, "Missing the required parameter 'vba_gateway_subscription_key' when calling VBAGatewaySubscriptionApi.delete_vba_gateway_subscription"
      end
      # resource path
      local_var_path = '/vbagateway-subscriptions/{VBAGatewaySubscription_Key}'.sub('{' + 'VBAGatewaySubscription_Key' + '}', CGI.escape(vba_gateway_subscription_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAGatewaySubscriptionApi.delete_vba_gateway_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAGatewaySubscriptionApi#delete_vba_gateway_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get VBAGatewaySubscription
    # Gets VBAGatewaySubscription
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription_key [Integer] VBAGatewaySubscription Key
    # @param [Hash] opts the optional parameters
    # @return [VBAGatewaySubscriptionVBAResponse]
    def get_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription_key, opts = {})
      data, _status_code, _headers = get_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key, opts)
      data
    end

    # Get VBAGatewaySubscription
    # Gets VBAGatewaySubscription
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription_key [Integer] VBAGatewaySubscription Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAGatewaySubscriptionVBAResponse, Integer, Hash)>] VBAGatewaySubscriptionVBAResponse data, response status code and response headers
    def get_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAGatewaySubscriptionApi.get_vba_gateway_subscription ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAGatewaySubscriptionApi.get_vba_gateway_subscription"
      end
      # verify the required parameter 'vba_gateway_subscription_key' is set
      if @api_client.config.client_side_validation && vba_gateway_subscription_key.nil?
        fail ArgumentError, "Missing the required parameter 'vba_gateway_subscription_key' when calling VBAGatewaySubscriptionApi.get_vba_gateway_subscription"
      end
      # resource path
      local_var_path = '/vbagateway-subscriptions/{VBAGatewaySubscription_Key}'.sub('{' + 'VBAGatewaySubscription_Key' + '}', CGI.escape(vba_gateway_subscription_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VBAGatewaySubscriptionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAGatewaySubscriptionApi.get_vba_gateway_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAGatewaySubscriptionApi#get_vba_gateway_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List VBAGatewaySubscription
    # Lists all VBAGatewaySubscription
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [VBAGatewaySubscriptionListVBAResponse]
    def list_vba_gateway_subscription(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_vba_gateway_subscription_with_http_info(vbasoftware_database, opts)
      data
    end

    # List VBAGatewaySubscription
    # Lists all VBAGatewaySubscription
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [Array<(VBAGatewaySubscriptionListVBAResponse, Integer, Hash)>] VBAGatewaySubscriptionListVBAResponse data, response status code and response headers
    def list_vba_gateway_subscription_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAGatewaySubscriptionApi.list_vba_gateway_subscription ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAGatewaySubscriptionApi.list_vba_gateway_subscription"
      end
      # resource path
      local_var_path = '/vbagateway-subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VBAGatewaySubscriptionListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAGatewaySubscriptionApi.list_vba_gateway_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAGatewaySubscriptionApi#list_vba_gateway_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch VBAGatewaySubscription
    # Create or Update multiple VBAGatewaySubscription at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription [Array<VBAGatewaySubscription>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription, opts = {})
      data, _status_code, _headers = update_batch_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription, opts)
      data
    end

    # Create or Update Batch VBAGatewaySubscription
    # Create or Update multiple VBAGatewaySubscription at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription [Array<VBAGatewaySubscription>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAGatewaySubscriptionApi.update_batch_vba_gateway_subscription ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAGatewaySubscriptionApi.update_batch_vba_gateway_subscription"
      end
      # verify the required parameter 'vba_gateway_subscription' is set
      if @api_client.config.client_side_validation && vba_gateway_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'vba_gateway_subscription' when calling VBAGatewaySubscriptionApi.update_batch_vba_gateway_subscription"
      end
      # resource path
      local_var_path = '/vbagateway-subscriptions-batch'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vba_gateway_subscription)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAGatewaySubscriptionApi.update_batch_vba_gateway_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAGatewaySubscriptionApi#update_batch_vba_gateway_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update VBAGatewaySubscription
    # Updates a specific VBAGatewaySubscription.
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription_key [Integer] VBAGatewaySubscription Key
    # @param vba_gateway_subscription [VBAGatewaySubscription] 
    # @param [Hash] opts the optional parameters
    # @return [VBAGatewaySubscriptionVBAResponse]
    def update_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription_key, vba_gateway_subscription, opts = {})
      data, _status_code, _headers = update_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key, vba_gateway_subscription, opts)
      data
    end

    # Update VBAGatewaySubscription
    # Updates a specific VBAGatewaySubscription.
    # @param vbasoftware_database [String] Target database
    # @param vba_gateway_subscription_key [Integer] VBAGatewaySubscription Key
    # @param vba_gateway_subscription [VBAGatewaySubscription] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAGatewaySubscriptionVBAResponse, Integer, Hash)>] VBAGatewaySubscriptionVBAResponse data, response status code and response headers
    def update_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key, vba_gateway_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAGatewaySubscriptionApi.update_vba_gateway_subscription ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAGatewaySubscriptionApi.update_vba_gateway_subscription"
      end
      # verify the required parameter 'vba_gateway_subscription_key' is set
      if @api_client.config.client_side_validation && vba_gateway_subscription_key.nil?
        fail ArgumentError, "Missing the required parameter 'vba_gateway_subscription_key' when calling VBAGatewaySubscriptionApi.update_vba_gateway_subscription"
      end
      # verify the required parameter 'vba_gateway_subscription' is set
      if @api_client.config.client_side_validation && vba_gateway_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'vba_gateway_subscription' when calling VBAGatewaySubscriptionApi.update_vba_gateway_subscription"
      end
      # resource path
      local_var_path = '/vbagateway-subscriptions/{VBAGatewaySubscription_Key}'.sub('{' + 'VBAGatewaySubscription_Key' + '}', CGI.escape(vba_gateway_subscription_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vba_gateway_subscription)

      # return_type
      return_type = opts[:debug_return_type] || 'VBAGatewaySubscriptionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAGatewaySubscriptionApi.update_vba_gateway_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAGatewaySubscriptionApi#update_vba_gateway_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
