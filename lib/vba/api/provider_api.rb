=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Provider
    # Creates a new Provider
    # @param vbasoftware_database [String] Target database
    # @param provider [Provider] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderVBAResponse]
    def create_provider(vbasoftware_database, provider, opts = {})
      data, _status_code, _headers = create_provider_with_http_info(vbasoftware_database, provider, opts)
      data
    end

    # Create Provider
    # Creates a new Provider
    # @param vbasoftware_database [String] Target database
    # @param provider [Provider] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderVBAResponse, Integer, Hash)>] ProviderVBAResponse data, response status code and response headers
    def create_provider_with_http_info(vbasoftware_database, provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderApi.create_provider ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderApi.create_provider"
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling ProviderApi.create_provider"
      end
      # resource path
      local_var_path = '/providers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderApi.create_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderApi#create_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Provider
    # Deletes an Provider
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider(vbasoftware_database, provider_id, opts = {})
      delete_provider_with_http_info(vbasoftware_database, provider_id, opts)
      nil
    end

    # Delete Provider
    # Deletes an Provider
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_with_http_info(vbasoftware_database, provider_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderApi.delete_provider ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderApi.delete_provider"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderApi.delete_provider"
      end
      # resource path
      local_var_path = '/providers/{providerID}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
        :operation => :"ProviderApi.delete_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderApi#delete_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Provider
    # Gets Provider
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @return [ProviderVBAResponse]
    def get_provider(vbasoftware_database, provider_id, opts = {})
      data, _status_code, _headers = get_provider_with_http_info(vbasoftware_database, provider_id, opts)
      data
    end

    # Get Provider
    # Gets Provider
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderVBAResponse, Integer, Hash)>] ProviderVBAResponse data, response status code and response headers
    def get_provider_with_http_info(vbasoftware_database, provider_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderApi.get_provider ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderApi.get_provider"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderApi.get_provider"
      end
      # resource path
      local_var_path = '/providers/{providerID}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderApi.get_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderApi#get_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Provider
    # Lists all Provider
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ProviderListVBAResponse]
    def list_provider(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_provider_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Provider
    # Lists all Provider
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ProviderListVBAResponse, Integer, Hash)>] ProviderListVBAResponse data, response status code and response headers
    def list_provider_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderApi.list_provider ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderApi.list_provider"
      end
      # resource path
      local_var_path = '/providers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

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
      return_type = opts[:debug_return_type] || 'ProviderListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderApi.list_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderApi#list_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch Provider
    # Create or Update multiple Provider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider [Array<Provider>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider(vbasoftware_database, provider, opts = {})
      data, _status_code, _headers = update_batch_provider_with_http_info(vbasoftware_database, provider, opts)
      data
    end

    # Create or Update Batch Provider
    # Create or Update multiple Provider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider [Array<Provider>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_with_http_info(vbasoftware_database, provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderApi.update_batch_provider ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderApi.update_batch_provider"
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling ProviderApi.update_batch_provider"
      end
      # resource path
      local_var_path = '/providers-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderApi.update_batch_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderApi#update_batch_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Provider
    # Updates a specific Provider.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider [Provider] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderVBAResponse]
    def update_provider(vbasoftware_database, provider_id, provider, opts = {})
      data, _status_code, _headers = update_provider_with_http_info(vbasoftware_database, provider_id, provider, opts)
      data
    end

    # Update Provider
    # Updates a specific Provider.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider [Provider] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderVBAResponse, Integer, Hash)>] ProviderVBAResponse data, response status code and response headers
    def update_provider_with_http_info(vbasoftware_database, provider_id, provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderApi.update_provider ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderApi.update_provider"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderApi.update_provider"
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling ProviderApi.update_provider"
      end
      # resource path
      local_var_path = '/providers/{providerID}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderApi.update_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderApi#update_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
