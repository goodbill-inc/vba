=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderPayeesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ProviderPayee
    # Creates a new ProviderPayee
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_payee [ProviderPayee] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderPayeeVBAResponse]
    def create_provider_payee(vbasoftware_database, provider_id, provider_payee, opts = {})
      data, _status_code, _headers = create_provider_payee_with_http_info(vbasoftware_database, provider_id, provider_payee, opts)
      data
    end

    # Create ProviderPayee
    # Creates a new ProviderPayee
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_payee [ProviderPayee] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderPayeeVBAResponse, Integer, Hash)>] ProviderPayeeVBAResponse data, response status code and response headers
    def create_provider_payee_with_http_info(vbasoftware_database, provider_id, provider_payee, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderPayeesApi.create_provider_payee ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderPayeesApi.create_provider_payee"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderPayeesApi.create_provider_payee"
      end
      # verify the required parameter 'provider_payee' is set
      if @api_client.config.client_side_validation && provider_payee.nil?
        fail ArgumentError, "Missing the required parameter 'provider_payee' when calling ProviderPayeesApi.create_provider_payee"
      end
      # resource path
      local_var_path = '/providers/{providerID}/payees'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_payee)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderPayeeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderPayeesApi.create_provider_payee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderPayeesApi#create_provider_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ProviderPayee
    # Deletes an ProviderPayee
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param payee_id [String] Payee ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider_payee(vbasoftware_database, provider_id, payee_id, effective_date, opts = {})
      delete_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date, opts)
      nil
    end

    # Delete ProviderPayee
    # Deletes an ProviderPayee
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param payee_id [String] Payee ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderPayeesApi.delete_provider_payee ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderPayeesApi.delete_provider_payee"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderPayeesApi.delete_provider_payee"
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling ProviderPayeesApi.delete_provider_payee"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling ProviderPayeesApi.delete_provider_payee"
      end
      # resource path
      local_var_path = '/providers/{providerID}/payees/{payeeID}/{effectiveDate}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'payeeID' + '}', CGI.escape(payee_id.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
        :operation => :"ProviderPayeesApi.delete_provider_payee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderPayeesApi#delete_provider_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ProviderPayee
    # Gets ProviderPayee
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param payee_id [String] Payee ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [ProviderPayeeVBAResponse]
    def get_provider_payee(vbasoftware_database, provider_id, payee_id, effective_date, opts = {})
      data, _status_code, _headers = get_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date, opts)
      data
    end

    # Get ProviderPayee
    # Gets ProviderPayee
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param payee_id [String] Payee ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderPayeeVBAResponse, Integer, Hash)>] ProviderPayeeVBAResponse data, response status code and response headers
    def get_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderPayeesApi.get_provider_payee ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderPayeesApi.get_provider_payee"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderPayeesApi.get_provider_payee"
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling ProviderPayeesApi.get_provider_payee"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling ProviderPayeesApi.get_provider_payee"
      end
      # resource path
      local_var_path = '/providers/{providerID}/payees/{payeeID}/{effectiveDate}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'payeeID' + '}', CGI.escape(payee_id.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderPayeeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderPayeesApi.get_provider_payee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderPayeesApi#get_provider_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ProviderPayee
    # Lists all ProviderPayee for the given providerID
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ProviderPayeeListVBAResponse]
    def list_provider_payee(vbasoftware_database, provider_id, opts = {})
      data, _status_code, _headers = list_provider_payee_with_http_info(vbasoftware_database, provider_id, opts)
      data
    end

    # List ProviderPayee
    # Lists all ProviderPayee for the given providerID
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ProviderPayeeListVBAResponse, Integer, Hash)>] ProviderPayeeListVBAResponse data, response status code and response headers
    def list_provider_payee_with_http_info(vbasoftware_database, provider_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderPayeesApi.list_provider_payee ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderPayeesApi.list_provider_payee"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderPayeesApi.list_provider_payee"
      end
      # resource path
      local_var_path = '/providers/{providerID}/payees'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderPayeeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderPayeesApi.list_provider_payee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderPayeesApi#list_provider_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ProviderPayee
    # Create or Update multiple ProviderPayee at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_payee [Array<ProviderPayee>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider_payee(vbasoftware_database, provider_id, provider_payee, opts = {})
      data, _status_code, _headers = update_batch_provider_payee_with_http_info(vbasoftware_database, provider_id, provider_payee, opts)
      data
    end

    # Create or Update Batch ProviderPayee
    # Create or Update multiple ProviderPayee at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_payee [Array<ProviderPayee>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_payee_with_http_info(vbasoftware_database, provider_id, provider_payee, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderPayeesApi.update_batch_provider_payee ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderPayeesApi.update_batch_provider_payee"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderPayeesApi.update_batch_provider_payee"
      end
      # verify the required parameter 'provider_payee' is set
      if @api_client.config.client_side_validation && provider_payee.nil?
        fail ArgumentError, "Missing the required parameter 'provider_payee' when calling ProviderPayeesApi.update_batch_provider_payee"
      end
      # resource path
      local_var_path = '/providers/{providerID}/payees-batch'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_payee)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderPayeesApi.update_batch_provider_payee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderPayeesApi#update_batch_provider_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ProviderPayee
    # Updates a specific ProviderPayee.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param payee_id [String] Payee ID
    # @param effective_date [Time] Effective Date
    # @param provider_payee [ProviderPayee] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderPayeeVBAResponse]
    def update_provider_payee(vbasoftware_database, provider_id, payee_id, effective_date, provider_payee, opts = {})
      data, _status_code, _headers = update_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date, provider_payee, opts)
      data
    end

    # Update ProviderPayee
    # Updates a specific ProviderPayee.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param payee_id [String] Payee ID
    # @param effective_date [Time] Effective Date
    # @param provider_payee [ProviderPayee] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderPayeeVBAResponse, Integer, Hash)>] ProviderPayeeVBAResponse data, response status code and response headers
    def update_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date, provider_payee, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderPayeesApi.update_provider_payee ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderPayeesApi.update_provider_payee"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderPayeesApi.update_provider_payee"
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling ProviderPayeesApi.update_provider_payee"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling ProviderPayeesApi.update_provider_payee"
      end
      # verify the required parameter 'provider_payee' is set
      if @api_client.config.client_side_validation && provider_payee.nil?
        fail ArgumentError, "Missing the required parameter 'provider_payee' when calling ProviderPayeesApi.update_provider_payee"
      end
      # resource path
      local_var_path = '/providers/{providerID}/payees/{payeeID}/{effectiveDate}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'payeeID' + '}', CGI.escape(payee_id.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_payee)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderPayeeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderPayeesApi.update_provider_payee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderPayeesApi#update_provider_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
