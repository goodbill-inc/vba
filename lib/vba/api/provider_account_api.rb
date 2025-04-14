=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderAccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Provider Account
    # Creates a new Provider Account
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account [ProviderAccount] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderAccountVBAResponse]
    def create_provider_account(vbasoftware_database, provider_id, provider_account, opts = {})
      data, _status_code, _headers = create_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account, opts)
      data
    end

    # Create Provider Account
    # Creates a new Provider Account
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account [ProviderAccount] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderAccountVBAResponse, Integer, Hash)>] ProviderAccountVBAResponse data, response status code and response headers
    def create_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAccountApi.create_provider_account ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAccountApi.create_provider_account"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAccountApi.create_provider_account"
      end
      # verify the required parameter 'provider_account' is set
      if @api_client.config.client_side_validation && provider_account.nil?
        fail ArgumentError, "Missing the required parameter 'provider_account' when calling ProviderAccountApi.create_provider_account"
      end
      # resource path
      local_var_path = '/providers/{providerID}/accounts'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_account)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderAccountVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAccountApi.create_provider_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAccountApi#create_provider_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Provider Account
    # Deletes a Provider Account
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account_key [Integer] ProviderAccount Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider_account(vbasoftware_database, provider_id, provider_account_key, opts = {})
      delete_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key, opts)
      nil
    end

    # Delete Provider Account
    # Deletes a Provider Account
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account_key [Integer] ProviderAccount Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAccountApi.delete_provider_account ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAccountApi.delete_provider_account"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAccountApi.delete_provider_account"
      end
      # verify the required parameter 'provider_account_key' is set
      if @api_client.config.client_side_validation && provider_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_account_key' when calling ProviderAccountApi.delete_provider_account"
      end
      # resource path
      local_var_path = '/providers/{providerID}/accounts/{providerAccountKey}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerAccountKey' + '}', CGI.escape(provider_account_key.to_s))

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
        :operation => :"ProviderAccountApi.delete_provider_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAccountApi#delete_provider_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Provider Account
    # Gets Provider Account
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account_key [Integer] ProviderAccount Key
    # @param [Hash] opts the optional parameters
    # @return [ProviderAccountVBAResponse]
    def get_provider_account(vbasoftware_database, provider_id, provider_account_key, opts = {})
      data, _status_code, _headers = get_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key, opts)
      data
    end

    # Get Provider Account
    # Gets Provider Account
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account_key [Integer] ProviderAccount Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderAccountVBAResponse, Integer, Hash)>] ProviderAccountVBAResponse data, response status code and response headers
    def get_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAccountApi.get_provider_account ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAccountApi.get_provider_account"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAccountApi.get_provider_account"
      end
      # verify the required parameter 'provider_account_key' is set
      if @api_client.config.client_side_validation && provider_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_account_key' when calling ProviderAccountApi.get_provider_account"
      end
      # resource path
      local_var_path = '/providers/{providerID}/accounts/{providerAccountKey}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerAccountKey' + '}', CGI.escape(provider_account_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderAccountVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAccountApi.get_provider_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAccountApi#get_provider_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Provider Accounts
    # List Provider Accounts for a specific Provider ID.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @return [ProviderAccountListVBAResponse]
    def list_provider_account(vbasoftware_database, provider_id, opts = {})
      data, _status_code, _headers = list_provider_account_with_http_info(vbasoftware_database, provider_id, opts)
      data
    end

    # List Provider Accounts
    # List Provider Accounts for a specific Provider ID.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderAccountListVBAResponse, Integer, Hash)>] ProviderAccountListVBAResponse data, response status code and response headers
    def list_provider_account_with_http_info(vbasoftware_database, provider_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAccountApi.list_provider_account ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAccountApi.list_provider_account"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAccountApi.list_provider_account"
      end
      # resource path
      local_var_path = '/providers/{providerID}/accounts'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderAccountListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAccountApi.list_provider_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAccountApi#list_provider_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch Provider Account
    # Create or Update multiple Provider Accounts at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account [Array<ProviderAccount>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider_account(vbasoftware_database, provider_id, provider_account, opts = {})
      data, _status_code, _headers = update_batch_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account, opts)
      data
    end

    # Create or Update Batch Provider Account
    # Create or Update multiple Provider Accounts at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account [Array<ProviderAccount>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAccountApi.update_batch_provider_account ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAccountApi.update_batch_provider_account"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAccountApi.update_batch_provider_account"
      end
      # verify the required parameter 'provider_account' is set
      if @api_client.config.client_side_validation && provider_account.nil?
        fail ArgumentError, "Missing the required parameter 'provider_account' when calling ProviderAccountApi.update_batch_provider_account"
      end
      # resource path
      local_var_path = '/providers/{providerID}/accounts-batch'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_account)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAccountApi.update_batch_provider_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAccountApi#update_batch_provider_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Provider Account
    # Updates a specific Provider Account.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account_key [Integer] ProviderAccount Key
    # @param provider_account [ProviderAccount] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderAccountVBAResponse]
    def update_provider_account(vbasoftware_database, provider_id, provider_account_key, provider_account, opts = {})
      data, _status_code, _headers = update_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key, provider_account, opts)
      data
    end

    # Update Provider Account
    # Updates a specific Provider Account.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_account_key [Integer] ProviderAccount Key
    # @param provider_account [ProviderAccount] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderAccountVBAResponse, Integer, Hash)>] ProviderAccountVBAResponse data, response status code and response headers
    def update_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key, provider_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAccountApi.update_provider_account ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAccountApi.update_provider_account"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAccountApi.update_provider_account"
      end
      # verify the required parameter 'provider_account_key' is set
      if @api_client.config.client_side_validation && provider_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_account_key' when calling ProviderAccountApi.update_provider_account"
      end
      # verify the required parameter 'provider_account' is set
      if @api_client.config.client_side_validation && provider_account.nil?
        fail ArgumentError, "Missing the required parameter 'provider_account' when calling ProviderAccountApi.update_provider_account"
      end
      # resource path
      local_var_path = '/providers/{providerID}/accounts/{providerAccountKey}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerAccountKey' + '}', CGI.escape(provider_account_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_account)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderAccountVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAccountApi.update_provider_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAccountApi#update_provider_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
