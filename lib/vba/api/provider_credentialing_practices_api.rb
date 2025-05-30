=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderCredentialingPracticesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ProviderCredPracticeDetail
    # Creates a new ProviderCredPracticeDetail
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_practice_detail [ProviderCredPracticeDetail] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderCredPracticeDetailVBAResponse]
    def create_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, provider_cred_practice_detail, opts = {})
      data, _status_code, _headers = create_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_detail, opts)
      data
    end

    # Create ProviderCredPracticeDetail
    # Creates a new ProviderCredPracticeDetail
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_practice_detail [ProviderCredPracticeDetail] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderCredPracticeDetailVBAResponse, Integer, Hash)>] ProviderCredPracticeDetailVBAResponse data, response status code and response headers
    def create_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingPracticesApi.create_provider_cred_practice_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingPracticesApi.create_provider_cred_practice_detail"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingPracticesApi.create_provider_cred_practice_detail"
      end
      # verify the required parameter 'provider_cred_practice_detail' is set
      if @api_client.config.client_side_validation && provider_cred_practice_detail.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_practice_detail' when calling ProviderCredentialingPracticesApi.create_provider_cred_practice_detail"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/practices'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_cred_practice_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderCredPracticeDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingPracticesApi.create_provider_cred_practice_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingPracticesApi#create_provider_cred_practice_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ProviderCredPracticeDetail
    # Deletes an ProviderCredPracticeDetail
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_practice_type_key [Integer] CredPracticeType Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, cred_practice_type_key, opts = {})
      delete_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key, opts)
      nil
    end

    # Delete ProviderCredPracticeDetail
    # Deletes an ProviderCredPracticeDetail
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_practice_type_key [Integer] CredPracticeType Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingPracticesApi.delete_provider_cred_practice_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingPracticesApi.delete_provider_cred_practice_detail"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingPracticesApi.delete_provider_cred_practice_detail"
      end
      # verify the required parameter 'cred_practice_type_key' is set
      if @api_client.config.client_side_validation && cred_practice_type_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_practice_type_key' when calling ProviderCredentialingPracticesApi.delete_provider_cred_practice_detail"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/practices/{credPracticeTypeKey}'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s)).sub('{' + 'credPracticeTypeKey' + '}', CGI.escape(cred_practice_type_key.to_s))

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
        :operation => :"ProviderCredentialingPracticesApi.delete_provider_cred_practice_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingPracticesApi#delete_provider_cred_practice_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ProviderCredPracticeDetail
    # Gets ProviderCredPracticeDetail
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_practice_type_key [Integer] CredPracticeType Key
    # @param [Hash] opts the optional parameters
    # @return [ProviderCredPracticeDetailVBAResponse]
    def get_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, cred_practice_type_key, opts = {})
      data, _status_code, _headers = get_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key, opts)
      data
    end

    # Get ProviderCredPracticeDetail
    # Gets ProviderCredPracticeDetail
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_practice_type_key [Integer] CredPracticeType Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderCredPracticeDetailVBAResponse, Integer, Hash)>] ProviderCredPracticeDetailVBAResponse data, response status code and response headers
    def get_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingPracticesApi.get_provider_cred_practice_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingPracticesApi.get_provider_cred_practice_detail"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingPracticesApi.get_provider_cred_practice_detail"
      end
      # verify the required parameter 'cred_practice_type_key' is set
      if @api_client.config.client_side_validation && cred_practice_type_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_practice_type_key' when calling ProviderCredentialingPracticesApi.get_provider_cred_practice_detail"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/practices/{credPracticeTypeKey}'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s)).sub('{' + 'credPracticeTypeKey' + '}', CGI.escape(cred_practice_type_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderCredPracticeDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingPracticesApi.get_provider_cred_practice_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingPracticesApi#get_provider_cred_practice_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ProviderCredPracticeDetail
    # Lists all ProviderCredPracticeDetail for the given providerCredKey
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ProviderCredPracticeDetailListVBAResponse]
    def list_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, opts = {})
      data, _status_code, _headers = list_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, opts)
      data
    end

    # List ProviderCredPracticeDetail
    # Lists all ProviderCredPracticeDetail for the given providerCredKey
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ProviderCredPracticeDetailListVBAResponse, Integer, Hash)>] ProviderCredPracticeDetailListVBAResponse data, response status code and response headers
    def list_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingPracticesApi.list_provider_cred_practice_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingPracticesApi.list_provider_cred_practice_detail"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingPracticesApi.list_provider_cred_practice_detail"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/practices'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderCredPracticeDetailListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingPracticesApi.list_provider_cred_practice_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingPracticesApi#list_provider_cred_practice_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ProviderCredPracticeDetail
    # Create or Update multiple ProviderCredPracticeDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_practice_detail [Array<ProviderCredPracticeDetail>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, provider_cred_practice_detail, opts = {})
      data, _status_code, _headers = update_batch_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_detail, opts)
      data
    end

    # Create or Update Batch ProviderCredPracticeDetail
    # Create or Update multiple ProviderCredPracticeDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_practice_detail [Array<ProviderCredPracticeDetail>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingPracticesApi.update_batch_provider_cred_practice_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingPracticesApi.update_batch_provider_cred_practice_detail"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingPracticesApi.update_batch_provider_cred_practice_detail"
      end
      # verify the required parameter 'provider_cred_practice_detail' is set
      if @api_client.config.client_side_validation && provider_cred_practice_detail.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_practice_detail' when calling ProviderCredentialingPracticesApi.update_batch_provider_cred_practice_detail"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/practices-batch'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_cred_practice_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingPracticesApi.update_batch_provider_cred_practice_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingPracticesApi#update_batch_provider_cred_practice_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ProviderCredPracticeDetail
    # Updates a specific ProviderCredPracticeDetail.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_practice_type_key [Integer] CredPracticeType Key
    # @param provider_cred_practice_detail [ProviderCredPracticeDetail] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderCredPracticeDetailVBAResponse]
    def update_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, cred_practice_type_key, provider_cred_practice_detail, opts = {})
      data, _status_code, _headers = update_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key, provider_cred_practice_detail, opts)
      data
    end

    # Update ProviderCredPracticeDetail
    # Updates a specific ProviderCredPracticeDetail.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_practice_type_key [Integer] CredPracticeType Key
    # @param provider_cred_practice_detail [ProviderCredPracticeDetail] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderCredPracticeDetailVBAResponse, Integer, Hash)>] ProviderCredPracticeDetailVBAResponse data, response status code and response headers
    def update_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key, provider_cred_practice_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingPracticesApi.update_provider_cred_practice_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingPracticesApi.update_provider_cred_practice_detail"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingPracticesApi.update_provider_cred_practice_detail"
      end
      # verify the required parameter 'cred_practice_type_key' is set
      if @api_client.config.client_side_validation && cred_practice_type_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_practice_type_key' when calling ProviderCredentialingPracticesApi.update_provider_cred_practice_detail"
      end
      # verify the required parameter 'provider_cred_practice_detail' is set
      if @api_client.config.client_side_validation && provider_cred_practice_detail.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_practice_detail' when calling ProviderCredentialingPracticesApi.update_provider_cred_practice_detail"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/practices/{credPracticeTypeKey}'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s)).sub('{' + 'credPracticeTypeKey' + '}', CGI.escape(cred_practice_type_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_cred_practice_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderCredPracticeDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingPracticesApi.update_provider_cred_practice_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingPracticesApi#update_provider_cred_practice_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
