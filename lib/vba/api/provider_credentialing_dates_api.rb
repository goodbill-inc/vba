=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderCredentialingDatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ProviderCredDate
    # Creates a new ProviderCredDate
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_date [ProviderCredDate] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderCredDateVBAResponse]
    def create_provider_cred_date(vbasoftware_database, provider_cred_key, provider_cred_date, opts = {})
      data, _status_code, _headers = create_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_date, opts)
      data
    end

    # Create ProviderCredDate
    # Creates a new ProviderCredDate
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_date [ProviderCredDate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderCredDateVBAResponse, Integer, Hash)>] ProviderCredDateVBAResponse data, response status code and response headers
    def create_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingDatesApi.create_provider_cred_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingDatesApi.create_provider_cred_date"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingDatesApi.create_provider_cred_date"
      end
      # verify the required parameter 'provider_cred_date' is set
      if @api_client.config.client_side_validation && provider_cred_date.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_date' when calling ProviderCredentialingDatesApi.create_provider_cred_date"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/dates'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_cred_date)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderCredDateVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingDatesApi.create_provider_cred_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingDatesApi#create_provider_cred_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ProviderCredDate
    # Deletes an ProviderCredDate
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_date_key [Integer] CredDate Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider_cred_date(vbasoftware_database, provider_cred_key, cred_date_key, opts = {})
      delete_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key, opts)
      nil
    end

    # Delete ProviderCredDate
    # Deletes an ProviderCredDate
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_date_key [Integer] CredDate Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingDatesApi.delete_provider_cred_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingDatesApi.delete_provider_cred_date"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingDatesApi.delete_provider_cred_date"
      end
      # verify the required parameter 'cred_date_key' is set
      if @api_client.config.client_side_validation && cred_date_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_date_key' when calling ProviderCredentialingDatesApi.delete_provider_cred_date"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/dates/{credDateKey}'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s)).sub('{' + 'credDateKey' + '}', CGI.escape(cred_date_key.to_s))

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
        :operation => :"ProviderCredentialingDatesApi.delete_provider_cred_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingDatesApi#delete_provider_cred_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ProviderCredDate
    # Gets ProviderCredDate
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_date_key [Integer] CredDate Key
    # @param [Hash] opts the optional parameters
    # @return [ProviderCredDateVBAResponse]
    def get_provider_cred_date(vbasoftware_database, provider_cred_key, cred_date_key, opts = {})
      data, _status_code, _headers = get_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key, opts)
      data
    end

    # Get ProviderCredDate
    # Gets ProviderCredDate
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_date_key [Integer] CredDate Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderCredDateVBAResponse, Integer, Hash)>] ProviderCredDateVBAResponse data, response status code and response headers
    def get_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingDatesApi.get_provider_cred_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingDatesApi.get_provider_cred_date"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingDatesApi.get_provider_cred_date"
      end
      # verify the required parameter 'cred_date_key' is set
      if @api_client.config.client_side_validation && cred_date_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_date_key' when calling ProviderCredentialingDatesApi.get_provider_cred_date"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/dates/{credDateKey}'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s)).sub('{' + 'credDateKey' + '}', CGI.escape(cred_date_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderCredDateVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingDatesApi.get_provider_cred_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingDatesApi#get_provider_cred_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ProviderCredDate
    # Lists all ProviderCredDate for the given providerCredKey
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ProviderCredDateListVBAResponse]
    def list_provider_cred_date(vbasoftware_database, provider_cred_key, opts = {})
      data, _status_code, _headers = list_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, opts)
      data
    end

    # List ProviderCredDate
    # Lists all ProviderCredDate for the given providerCredKey
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ProviderCredDateListVBAResponse, Integer, Hash)>] ProviderCredDateListVBAResponse data, response status code and response headers
    def list_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingDatesApi.list_provider_cred_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingDatesApi.list_provider_cred_date"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingDatesApi.list_provider_cred_date"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/dates'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderCredDateListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingDatesApi.list_provider_cred_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingDatesApi#list_provider_cred_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ProviderCredDate
    # Create or Update multiple ProviderCredDate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_date [Array<ProviderCredDate>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider_cred_date(vbasoftware_database, provider_cred_key, provider_cred_date, opts = {})
      data, _status_code, _headers = update_batch_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_date, opts)
      data
    end

    # Create or Update Batch ProviderCredDate
    # Create or Update multiple ProviderCredDate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_date [Array<ProviderCredDate>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingDatesApi.update_batch_provider_cred_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingDatesApi.update_batch_provider_cred_date"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingDatesApi.update_batch_provider_cred_date"
      end
      # verify the required parameter 'provider_cred_date' is set
      if @api_client.config.client_side_validation && provider_cred_date.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_date' when calling ProviderCredentialingDatesApi.update_batch_provider_cred_date"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/dates-batch'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_cred_date)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingDatesApi.update_batch_provider_cred_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingDatesApi#update_batch_provider_cred_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ProviderCredDate
    # Updates a specific ProviderCredDate.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_date_key [Integer] CredDate Key
    # @param provider_cred_date [ProviderCredDate] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderCredDateVBAResponse]
    def update_provider_cred_date(vbasoftware_database, provider_cred_key, cred_date_key, provider_cred_date, opts = {})
      data, _status_code, _headers = update_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key, provider_cred_date, opts)
      data
    end

    # Update ProviderCredDate
    # Updates a specific ProviderCredDate.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param cred_date_key [Integer] CredDate Key
    # @param provider_cred_date [ProviderCredDate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderCredDateVBAResponse, Integer, Hash)>] ProviderCredDateVBAResponse data, response status code and response headers
    def update_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key, provider_cred_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingDatesApi.update_provider_cred_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingDatesApi.update_provider_cred_date"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingDatesApi.update_provider_cred_date"
      end
      # verify the required parameter 'cred_date_key' is set
      if @api_client.config.client_side_validation && cred_date_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_date_key' when calling ProviderCredentialingDatesApi.update_provider_cred_date"
      end
      # verify the required parameter 'provider_cred_date' is set
      if @api_client.config.client_side_validation && provider_cred_date.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_date' when calling ProviderCredentialingDatesApi.update_provider_cred_date"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/dates/{credDateKey}'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s)).sub('{' + 'credDateKey' + '}', CGI.escape(cred_date_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_cred_date)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderCredDateVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingDatesApi.update_provider_cred_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingDatesApi#update_provider_cred_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
