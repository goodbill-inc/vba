=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PremiumRateAddOnsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PremRateAddOn
    # Creates a new PremRateAddOn
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on [PremRateAddOn] 
    # @param [Hash] opts the optional parameters
    # @return [PremRateAddOnVBAResponse]
    def create_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on, opts = {})
      data, _status_code, _headers = create_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on, opts)
      data
    end

    # Create PremRateAddOn
    # Creates a new PremRateAddOn
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on [PremRateAddOn] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateAddOnVBAResponse, Integer, Hash)>] PremRateAddOnVBAResponse data, response status code and response headers
    def create_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateAddOnsApi.create_prem_rate_add_on ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateAddOnsApi.create_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateAddOnsApi.create_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_add_on' is set
      if @api_client.config.client_side_validation && prem_rate_add_on.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_add_on' when calling PremiumRateAddOnsApi.create_prem_rate_add_on"
      end
      # resource path
      local_var_path = '/premium-rates/{PremRate_Key}/add-ons'.sub('{' + 'PremRate_Key' + '}', CGI.escape(prem_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_add_on)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRateAddOnVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateAddOnsApi.create_prem_rate_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateAddOnsApi#create_prem_rate_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PremRateAddOn
    # Deletes an PremRateAddOn
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on_key [Integer] PremRateAddOn Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, opts = {})
      delete_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, opts)
      nil
    end

    # Delete PremRateAddOn
    # Deletes an PremRateAddOn
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on_key [Integer] PremRateAddOn Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateAddOnsApi.delete_prem_rate_add_on ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateAddOnsApi.delete_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateAddOnsApi.delete_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_add_on_key' is set
      if @api_client.config.client_side_validation && prem_rate_add_on_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_add_on_key' when calling PremiumRateAddOnsApi.delete_prem_rate_add_on"
      end
      # resource path
      local_var_path = '/premium-rates/{PremRate_Key}/add-ons/{PremRateAddOn_Key}'.sub('{' + 'PremRate_Key' + '}', CGI.escape(prem_rate_key.to_s)).sub('{' + 'PremRateAddOn_Key' + '}', CGI.escape(prem_rate_add_on_key.to_s))

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
        :operation => :"PremiumRateAddOnsApi.delete_prem_rate_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateAddOnsApi#delete_prem_rate_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PremRateAddOn
    # Gets PremRateAddOn
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on_key [Integer] PremRateAddOn Key
    # @param [Hash] opts the optional parameters
    # @return [PremRateAddOnVBAResponse]
    def get_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, opts = {})
      data, _status_code, _headers = get_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, opts)
      data
    end

    # Get PremRateAddOn
    # Gets PremRateAddOn
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on_key [Integer] PremRateAddOn Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateAddOnVBAResponse, Integer, Hash)>] PremRateAddOnVBAResponse data, response status code and response headers
    def get_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateAddOnsApi.get_prem_rate_add_on ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateAddOnsApi.get_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateAddOnsApi.get_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_add_on_key' is set
      if @api_client.config.client_side_validation && prem_rate_add_on_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_add_on_key' when calling PremiumRateAddOnsApi.get_prem_rate_add_on"
      end
      # resource path
      local_var_path = '/premium-rates/{PremRate_Key}/add-ons/{PremRateAddOn_Key}'.sub('{' + 'PremRate_Key' + '}', CGI.escape(prem_rate_key.to_s)).sub('{' + 'PremRateAddOn_Key' + '}', CGI.escape(prem_rate_add_on_key.to_s))

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
      return_type = opts[:debug_return_type] || 'PremRateAddOnVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateAddOnsApi.get_prem_rate_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateAddOnsApi#get_prem_rate_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PremRateAddOn
    # Lists all PremRateAddOn for the given PremRate_Key
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [PremRateAddOnListVBAResponse]
    def list_prem_rate_add_on(vbasoftware_database, prem_rate_key, opts = {})
      data, _status_code, _headers = list_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, opts)
      data
    end

    # List PremRateAddOn
    # Lists all PremRateAddOn for the given PremRate_Key
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [Array<(PremRateAddOnListVBAResponse, Integer, Hash)>] PremRateAddOnListVBAResponse data, response status code and response headers
    def list_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateAddOnsApi.list_prem_rate_add_on ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateAddOnsApi.list_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateAddOnsApi.list_prem_rate_add_on"
      end
      # resource path
      local_var_path = '/premium-rates/{PremRate_Key}/add-ons'.sub('{' + 'PremRate_Key' + '}', CGI.escape(prem_rate_key.to_s))

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
      return_type = opts[:debug_return_type] || 'PremRateAddOnListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateAddOnsApi.list_prem_rate_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateAddOnsApi#list_prem_rate_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PremRateAddOn
    # Create or Update multiple PremRateAddOn at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on [Array<PremRateAddOn>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on, opts = {})
      data, _status_code, _headers = update_batch_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on, opts)
      data
    end

    # Create or Update Batch PremRateAddOn
    # Create or Update multiple PremRateAddOn at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on [Array<PremRateAddOn>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateAddOnsApi.update_batch_prem_rate_add_on ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateAddOnsApi.update_batch_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateAddOnsApi.update_batch_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_add_on' is set
      if @api_client.config.client_side_validation && prem_rate_add_on.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_add_on' when calling PremiumRateAddOnsApi.update_batch_prem_rate_add_on"
      end
      # resource path
      local_var_path = '/premium-rates/{PremRate_Key}/add-ons-batch'.sub('{' + 'PremRate_Key' + '}', CGI.escape(prem_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_add_on)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateAddOnsApi.update_batch_prem_rate_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateAddOnsApi#update_batch_prem_rate_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PremRateAddOn
    # Updates a specific PremRateAddOn.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on_key [Integer] PremRateAddOn Key
    # @param prem_rate_add_on [PremRateAddOn] 
    # @param [Hash] opts the optional parameters
    # @return [PremRateAddOnVBAResponse]
    def update_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, prem_rate_add_on, opts = {})
      data, _status_code, _headers = update_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, prem_rate_add_on, opts)
      data
    end

    # Update PremRateAddOn
    # Updates a specific PremRateAddOn.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_add_on_key [Integer] PremRateAddOn Key
    # @param prem_rate_add_on [PremRateAddOn] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateAddOnVBAResponse, Integer, Hash)>] PremRateAddOnVBAResponse data, response status code and response headers
    def update_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, prem_rate_add_on, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateAddOnsApi.update_prem_rate_add_on ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateAddOnsApi.update_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateAddOnsApi.update_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_add_on_key' is set
      if @api_client.config.client_side_validation && prem_rate_add_on_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_add_on_key' when calling PremiumRateAddOnsApi.update_prem_rate_add_on"
      end
      # verify the required parameter 'prem_rate_add_on' is set
      if @api_client.config.client_side_validation && prem_rate_add_on.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_add_on' when calling PremiumRateAddOnsApi.update_prem_rate_add_on"
      end
      # resource path
      local_var_path = '/premium-rates/{PremRate_Key}/add-ons/{PremRateAddOn_Key}'.sub('{' + 'PremRate_Key' + '}', CGI.escape(prem_rate_key.to_s)).sub('{' + 'PremRateAddOn_Key' + '}', CGI.escape(prem_rate_add_on_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_add_on)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRateAddOnVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateAddOnsApi.update_prem_rate_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateAddOnsApi#update_prem_rate_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
