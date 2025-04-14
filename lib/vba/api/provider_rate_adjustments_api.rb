=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderRateAdjustmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ProviderRateAdjust
    # Creates a new ProviderRateAdjust
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust [ProviderRateAdjust] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderRateAdjustVBAResponse]
    def create_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust, opts = {})
      data, _status_code, _headers = create_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust, opts)
      data
    end

    # Create ProviderRateAdjust
    # Creates a new ProviderRateAdjust
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust [ProviderRateAdjust] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderRateAdjustVBAResponse, Integer, Hash)>] ProviderRateAdjustVBAResponse data, response status code and response headers
    def create_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateAdjustmentsApi.create_provider_rate_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateAdjustmentsApi.create_provider_rate_adjust"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateAdjustmentsApi.create_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateAdjustmentsApi.create_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_adjust' is set
      if @api_client.config.client_side_validation && provider_rate_adjust.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_adjust' when calling ProviderRateAdjustmentsApi.create_provider_rate_adjust"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/adjustments'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_rate_adjust)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderRateAdjustVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateAdjustmentsApi.create_provider_rate_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateAdjustmentsApi#create_provider_rate_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ProviderRateAdjust
    # Deletes an ProviderRateAdjust
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust_key [Integer] Provider Rate Adjust Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, opts = {})
      delete_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, opts)
      nil
    end

    # Delete ProviderRateAdjust
    # Deletes an ProviderRateAdjust
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust_key [Integer] Provider Rate Adjust Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateAdjustmentsApi.delete_provider_rate_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateAdjustmentsApi.delete_provider_rate_adjust"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateAdjustmentsApi.delete_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateAdjustmentsApi.delete_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_adjust_key' is set
      if @api_client.config.client_side_validation && provider_rate_adjust_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_adjust_key' when calling ProviderRateAdjustmentsApi.delete_provider_rate_adjust"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/adjustments/{providerRateAdjustKey}'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s)).sub('{' + 'providerRateAdjustKey' + '}', CGI.escape(provider_rate_adjust_key.to_s))

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
        :operation => :"ProviderRateAdjustmentsApi.delete_provider_rate_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateAdjustmentsApi#delete_provider_rate_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ProviderRateAdjust
    # Gets ProviderRateAdjust
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust_key [Integer] Provider Rate Adjust Key
    # @param [Hash] opts the optional parameters
    # @return [ProviderRateAdjustVBAResponse]
    def get_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, opts = {})
      data, _status_code, _headers = get_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, opts)
      data
    end

    # Get ProviderRateAdjust
    # Gets ProviderRateAdjust
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust_key [Integer] Provider Rate Adjust Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderRateAdjustVBAResponse, Integer, Hash)>] ProviderRateAdjustVBAResponse data, response status code and response headers
    def get_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateAdjustmentsApi.get_provider_rate_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateAdjustmentsApi.get_provider_rate_adjust"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateAdjustmentsApi.get_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateAdjustmentsApi.get_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_adjust_key' is set
      if @api_client.config.client_side_validation && provider_rate_adjust_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_adjust_key' when calling ProviderRateAdjustmentsApi.get_provider_rate_adjust"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/adjustments/{providerRateAdjustKey}'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s)).sub('{' + 'providerRateAdjustKey' + '}', CGI.escape(provider_rate_adjust_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderRateAdjustVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateAdjustmentsApi.get_provider_rate_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateAdjustmentsApi#get_provider_rate_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Provider Rate Adjustments
    # List Adjustments for a specific Provider Rate 
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param [Hash] opts the optional parameters
    # @return [ProviderRateAdjustListVBAResponse]
    def list_provider_rate_adjustments(vbasoftware_database, provider_id, provider_rate_key, opts = {})
      data, _status_code, _headers = list_provider_rate_adjustments_with_http_info(vbasoftware_database, provider_id, provider_rate_key, opts)
      data
    end

    # List Provider Rate Adjustments
    # List Adjustments for a specific Provider Rate 
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderRateAdjustListVBAResponse, Integer, Hash)>] ProviderRateAdjustListVBAResponse data, response status code and response headers
    def list_provider_rate_adjustments_with_http_info(vbasoftware_database, provider_id, provider_rate_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateAdjustmentsApi.list_provider_rate_adjustments ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateAdjustmentsApi.list_provider_rate_adjustments"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateAdjustmentsApi.list_provider_rate_adjustments"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateAdjustmentsApi.list_provider_rate_adjustments"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/adjustments'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderRateAdjustListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateAdjustmentsApi.list_provider_rate_adjustments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateAdjustmentsApi#list_provider_rate_adjustments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Batch ProviderRateAdjust
    # Create or Update multiple ProviderRateAdjust.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust [Array<ProviderRateAdjust>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust, opts = {})
      data, _status_code, _headers = update_batch_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust, opts)
      data
    end

    # Update Batch ProviderRateAdjust
    # Create or Update multiple ProviderRateAdjust.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust [Array<ProviderRateAdjust>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateAdjustmentsApi.update_batch_provider_rate_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateAdjustmentsApi.update_batch_provider_rate_adjust"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateAdjustmentsApi.update_batch_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateAdjustmentsApi.update_batch_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_adjust' is set
      if @api_client.config.client_side_validation && provider_rate_adjust.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_adjust' when calling ProviderRateAdjustmentsApi.update_batch_provider_rate_adjust"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/adjustments-batch'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_rate_adjust)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateAdjustmentsApi.update_batch_provider_rate_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateAdjustmentsApi#update_batch_provider_rate_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ProviderRateAdjust
    # Updates a specific ProviderRateAdjust.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust_key [Integer] Provider Rate Adjust Key
    # @param provider_rate_adjust [ProviderRateAdjust] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderRateAdjustVBAResponse]
    def update_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, provider_rate_adjust, opts = {})
      data, _status_code, _headers = update_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, provider_rate_adjust, opts)
      data
    end

    # Update ProviderRateAdjust
    # Updates a specific ProviderRateAdjust.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_adjust_key [Integer] Provider Rate Adjust Key
    # @param provider_rate_adjust [ProviderRateAdjust] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderRateAdjustVBAResponse, Integer, Hash)>] ProviderRateAdjustVBAResponse data, response status code and response headers
    def update_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, provider_rate_adjust, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateAdjustmentsApi.update_provider_rate_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateAdjustmentsApi.update_provider_rate_adjust"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateAdjustmentsApi.update_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateAdjustmentsApi.update_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_adjust_key' is set
      if @api_client.config.client_side_validation && provider_rate_adjust_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_adjust_key' when calling ProviderRateAdjustmentsApi.update_provider_rate_adjust"
      end
      # verify the required parameter 'provider_rate_adjust' is set
      if @api_client.config.client_side_validation && provider_rate_adjust.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_adjust' when calling ProviderRateAdjustmentsApi.update_provider_rate_adjust"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/adjustments/{providerRateAdjustKey}'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s)).sub('{' + 'providerRateAdjustKey' + '}', CGI.escape(provider_rate_adjust_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_rate_adjust)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderRateAdjustVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateAdjustmentsApi.update_provider_rate_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateAdjustmentsApi#update_provider_rate_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
