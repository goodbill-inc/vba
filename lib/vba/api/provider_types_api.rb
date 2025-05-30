=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ProviderTypes
    # Creates a new ProviderTypes
    # @param vbasoftware_database [String] Target database
    # @param provider_types [ProviderTypes] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderTypesVBAResponse]
    def create_provider_types(vbasoftware_database, provider_types, opts = {})
      data, _status_code, _headers = create_provider_types_with_http_info(vbasoftware_database, provider_types, opts)
      data
    end

    # Create ProviderTypes
    # Creates a new ProviderTypes
    # @param vbasoftware_database [String] Target database
    # @param provider_types [ProviderTypes] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderTypesVBAResponse, Integer, Hash)>] ProviderTypesVBAResponse data, response status code and response headers
    def create_provider_types_with_http_info(vbasoftware_database, provider_types, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderTypesApi.create_provider_types ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderTypesApi.create_provider_types"
      end
      # verify the required parameter 'provider_types' is set
      if @api_client.config.client_side_validation && provider_types.nil?
        fail ArgumentError, "Missing the required parameter 'provider_types' when calling ProviderTypesApi.create_provider_types"
      end
      # resource path
      local_var_path = '/provider-types'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_types)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderTypesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderTypesApi.create_provider_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderTypesApi#create_provider_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ProviderTypes
    # Deletes an ProviderTypes
    # @param vbasoftware_database [String] Target database
    # @param provider_type [String] Provider Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider_types(vbasoftware_database, provider_type, opts = {})
      delete_provider_types_with_http_info(vbasoftware_database, provider_type, opts)
      nil
    end

    # Delete ProviderTypes
    # Deletes an ProviderTypes
    # @param vbasoftware_database [String] Target database
    # @param provider_type [String] Provider Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_types_with_http_info(vbasoftware_database, provider_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderTypesApi.delete_provider_types ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderTypesApi.delete_provider_types"
      end
      # verify the required parameter 'provider_type' is set
      if @api_client.config.client_side_validation && provider_type.nil?
        fail ArgumentError, "Missing the required parameter 'provider_type' when calling ProviderTypesApi.delete_provider_types"
      end
      # resource path
      local_var_path = '/provider-types/{providerType}'.sub('{' + 'providerType' + '}', CGI.escape(provider_type.to_s))

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
        :operation => :"ProviderTypesApi.delete_provider_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderTypesApi#delete_provider_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ProviderTypes
    # Gets ProviderTypes
    # @param vbasoftware_database [String] Target database
    # @param provider_type [String] Provider Type
    # @param [Hash] opts the optional parameters
    # @return [ProviderTypesVBAResponse]
    def get_provider_types(vbasoftware_database, provider_type, opts = {})
      data, _status_code, _headers = get_provider_types_with_http_info(vbasoftware_database, provider_type, opts)
      data
    end

    # Get ProviderTypes
    # Gets ProviderTypes
    # @param vbasoftware_database [String] Target database
    # @param provider_type [String] Provider Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderTypesVBAResponse, Integer, Hash)>] ProviderTypesVBAResponse data, response status code and response headers
    def get_provider_types_with_http_info(vbasoftware_database, provider_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderTypesApi.get_provider_types ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderTypesApi.get_provider_types"
      end
      # verify the required parameter 'provider_type' is set
      if @api_client.config.client_side_validation && provider_type.nil?
        fail ArgumentError, "Missing the required parameter 'provider_type' when calling ProviderTypesApi.get_provider_types"
      end
      # resource path
      local_var_path = '/provider-types/{providerType}'.sub('{' + 'providerType' + '}', CGI.escape(provider_type.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderTypesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderTypesApi.get_provider_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderTypesApi#get_provider_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ProviderTypes
    # Lists all ProviderTypes 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [ProviderTypesListVBAResponse]
    def list_provider_types(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_provider_types_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ProviderTypes
    # Lists all ProviderTypes 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderTypesListVBAResponse, Integer, Hash)>] ProviderTypesListVBAResponse data, response status code and response headers
    def list_provider_types_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderTypesApi.list_provider_types ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderTypesApi.list_provider_types"
      end
      # resource path
      local_var_path = '/provider-types'

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
      return_type = opts[:debug_return_type] || 'ProviderTypesListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderTypesApi.list_provider_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderTypesApi#list_provider_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ProviderTypes
    # Create or Update multiple ProviderTypes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_types [Array<ProviderTypes>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider_types(vbasoftware_database, provider_types, opts = {})
      data, _status_code, _headers = update_batch_provider_types_with_http_info(vbasoftware_database, provider_types, opts)
      data
    end

    # Create or Update Batch ProviderTypes
    # Create or Update multiple ProviderTypes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_types [Array<ProviderTypes>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_types_with_http_info(vbasoftware_database, provider_types, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderTypesApi.update_batch_provider_types ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderTypesApi.update_batch_provider_types"
      end
      # verify the required parameter 'provider_types' is set
      if @api_client.config.client_side_validation && provider_types.nil?
        fail ArgumentError, "Missing the required parameter 'provider_types' when calling ProviderTypesApi.update_batch_provider_types"
      end
      # resource path
      local_var_path = '/provider-types-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_types)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderTypesApi.update_batch_provider_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderTypesApi#update_batch_provider_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ProviderTypes
    # Updates a specific ProviderTypes.
    # @param vbasoftware_database [String] Target database
    # @param provider_type [String] Provider Type
    # @param provider_types [ProviderTypes] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderTypesVBAResponse]
    def update_provider_types(vbasoftware_database, provider_type, provider_types, opts = {})
      data, _status_code, _headers = update_provider_types_with_http_info(vbasoftware_database, provider_type, provider_types, opts)
      data
    end

    # Update ProviderTypes
    # Updates a specific ProviderTypes.
    # @param vbasoftware_database [String] Target database
    # @param provider_type [String] Provider Type
    # @param provider_types [ProviderTypes] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderTypesVBAResponse, Integer, Hash)>] ProviderTypesVBAResponse data, response status code and response headers
    def update_provider_types_with_http_info(vbasoftware_database, provider_type, provider_types, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderTypesApi.update_provider_types ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderTypesApi.update_provider_types"
      end
      # verify the required parameter 'provider_type' is set
      if @api_client.config.client_side_validation && provider_type.nil?
        fail ArgumentError, "Missing the required parameter 'provider_type' when calling ProviderTypesApi.update_provider_types"
      end
      # verify the required parameter 'provider_types' is set
      if @api_client.config.client_side_validation && provider_types.nil?
        fail ArgumentError, "Missing the required parameter 'provider_types' when calling ProviderTypesApi.update_provider_types"
      end
      # resource path
      local_var_path = '/provider-types/{providerType}'.sub('{' + 'providerType' + '}', CGI.escape(provider_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_types)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderTypesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderTypesApi.update_provider_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderTypesApi#update_provider_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
