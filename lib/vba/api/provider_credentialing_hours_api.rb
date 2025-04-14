=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderCredentialingHoursApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ProviderCredHours
    # Creates a new ProviderCredHours
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours [ProviderCredHours] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderCredHoursVBAResponse]
    def create_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours, opts = {})
      data, _status_code, _headers = create_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours, opts)
      data
    end

    # Create ProviderCredHours
    # Creates a new ProviderCredHours
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours [ProviderCredHours] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderCredHoursVBAResponse, Integer, Hash)>] ProviderCredHoursVBAResponse data, response status code and response headers
    def create_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingHoursApi.create_provider_cred_hours ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingHoursApi.create_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingHoursApi.create_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_hours' is set
      if @api_client.config.client_side_validation && provider_cred_hours.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_hours' when calling ProviderCredentialingHoursApi.create_provider_cred_hours"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/hours'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_cred_hours)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderCredHoursVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingHoursApi.create_provider_cred_hours",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingHoursApi#create_provider_cred_hours\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ProviderCredHours
    # Deletes an ProviderCredHours
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours_key [Integer] ProviderCredHours Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours_key, opts = {})
      delete_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key, opts)
      nil
    end

    # Delete ProviderCredHours
    # Deletes an ProviderCredHours
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours_key [Integer] ProviderCredHours Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingHoursApi.delete_provider_cred_hours ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingHoursApi.delete_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingHoursApi.delete_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_hours_key' is set
      if @api_client.config.client_side_validation && provider_cred_hours_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_hours_key' when calling ProviderCredentialingHoursApi.delete_provider_cred_hours"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/hours/{providerCredHoursKey}'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s)).sub('{' + 'providerCredHoursKey' + '}', CGI.escape(provider_cred_hours_key.to_s))

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
        :operation => :"ProviderCredentialingHoursApi.delete_provider_cred_hours",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingHoursApi#delete_provider_cred_hours\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ProviderCredHours
    # Gets ProviderCredHours
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours_key [Integer] ProviderCredHours Key
    # @param [Hash] opts the optional parameters
    # @return [ProviderCredHoursVBAResponse]
    def get_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours_key, opts = {})
      data, _status_code, _headers = get_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key, opts)
      data
    end

    # Get ProviderCredHours
    # Gets ProviderCredHours
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours_key [Integer] ProviderCredHours Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderCredHoursVBAResponse, Integer, Hash)>] ProviderCredHoursVBAResponse data, response status code and response headers
    def get_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingHoursApi.get_provider_cred_hours ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingHoursApi.get_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingHoursApi.get_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_hours_key' is set
      if @api_client.config.client_side_validation && provider_cred_hours_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_hours_key' when calling ProviderCredentialingHoursApi.get_provider_cred_hours"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/hours/{providerCredHoursKey}'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s)).sub('{' + 'providerCredHoursKey' + '}', CGI.escape(provider_cred_hours_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderCredHoursVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingHoursApi.get_provider_cred_hours",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingHoursApi#get_provider_cred_hours\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ProviderCredHours
    # Lists all ProviderCredHours for the given providerCredKey
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ProviderCredHoursListVBAResponse]
    def list_provider_cred_hours(vbasoftware_database, provider_cred_key, opts = {})
      data, _status_code, _headers = list_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, opts)
      data
    end

    # List ProviderCredHours
    # Lists all ProviderCredHours for the given providerCredKey
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ProviderCredHoursListVBAResponse, Integer, Hash)>] ProviderCredHoursListVBAResponse data, response status code and response headers
    def list_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingHoursApi.list_provider_cred_hours ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingHoursApi.list_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingHoursApi.list_provider_cred_hours"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/hours'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderCredHoursListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingHoursApi.list_provider_cred_hours",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingHoursApi#list_provider_cred_hours\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ProviderCredHours
    # Create or Update multiple ProviderCredHours at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours [Array<ProviderCredHours>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours, opts = {})
      data, _status_code, _headers = update_batch_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours, opts)
      data
    end

    # Create or Update Batch ProviderCredHours
    # Create or Update multiple ProviderCredHours at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours [Array<ProviderCredHours>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingHoursApi.update_batch_provider_cred_hours ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingHoursApi.update_batch_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingHoursApi.update_batch_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_hours' is set
      if @api_client.config.client_side_validation && provider_cred_hours.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_hours' when calling ProviderCredentialingHoursApi.update_batch_provider_cred_hours"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/hours-batch'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_cred_hours)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingHoursApi.update_batch_provider_cred_hours",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingHoursApi#update_batch_provider_cred_hours\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ProviderCredHours
    # Updates a specific ProviderCredHours.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours_key [Integer] ProviderCredHours Key
    # @param provider_cred_hours [ProviderCredHours] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderCredHoursVBAResponse]
    def update_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours_key, provider_cred_hours, opts = {})
      data, _status_code, _headers = update_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key, provider_cred_hours, opts)
      data
    end

    # Update ProviderCredHours
    # Updates a specific ProviderCredHours.
    # @param vbasoftware_database [String] Target database
    # @param provider_cred_key [Integer] ProviderCred Key
    # @param provider_cred_hours_key [Integer] ProviderCredHours Key
    # @param provider_cred_hours [ProviderCredHours] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderCredHoursVBAResponse, Integer, Hash)>] ProviderCredHoursVBAResponse data, response status code and response headers
    def update_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key, provider_cred_hours, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderCredentialingHoursApi.update_provider_cred_hours ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderCredentialingHoursApi.update_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_key' is set
      if @api_client.config.client_side_validation && provider_cred_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_key' when calling ProviderCredentialingHoursApi.update_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_hours_key' is set
      if @api_client.config.client_side_validation && provider_cred_hours_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_hours_key' when calling ProviderCredentialingHoursApi.update_provider_cred_hours"
      end
      # verify the required parameter 'provider_cred_hours' is set
      if @api_client.config.client_side_validation && provider_cred_hours.nil?
        fail ArgumentError, "Missing the required parameter 'provider_cred_hours' when calling ProviderCredentialingHoursApi.update_provider_cred_hours"
      end
      # resource path
      local_var_path = '/provider-credentialing/{providerCredKey}/hours/{providerCredHoursKey}'.sub('{' + 'providerCredKey' + '}', CGI.escape(provider_cred_key.to_s)).sub('{' + 'providerCredHoursKey' + '}', CGI.escape(provider_cred_hours_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_cred_hours)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderCredHoursVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderCredentialingHoursApi.update_provider_cred_hours",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderCredentialingHoursApi#update_provider_cred_hours\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
