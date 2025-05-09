=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class BillingCyclesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create BillingCycle
    # Creates a new BillingCycle
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle [BillingCycle] 
    # @param [Hash] opts the optional parameters
    # @return [BillingCycleVBAResponse]
    def create_billing_cycle(vbasoftware_database, billing_cycle, opts = {})
      data, _status_code, _headers = create_billing_cycle_with_http_info(vbasoftware_database, billing_cycle, opts)
      data
    end

    # Create BillingCycle
    # Creates a new BillingCycle
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle [BillingCycle] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillingCycleVBAResponse, Integer, Hash)>] BillingCycleVBAResponse data, response status code and response headers
    def create_billing_cycle_with_http_info(vbasoftware_database, billing_cycle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingCyclesApi.create_billing_cycle ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling BillingCyclesApi.create_billing_cycle"
      end
      # verify the required parameter 'billing_cycle' is set
      if @api_client.config.client_side_validation && billing_cycle.nil?
        fail ArgumentError, "Missing the required parameter 'billing_cycle' when calling BillingCyclesApi.create_billing_cycle"
      end
      # resource path
      local_var_path = '/billing-cycles'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(billing_cycle)

      # return_type
      return_type = opts[:debug_return_type] || 'BillingCycleVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"BillingCyclesApi.create_billing_cycle",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingCyclesApi#create_billing_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete BillingCycle
    # Deletes an BillingCycle
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle_id [String] Billing Cycle ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_billing_cycle(vbasoftware_database, billing_cycle_id, opts = {})
      delete_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id, opts)
      nil
    end

    # Delete BillingCycle
    # Deletes an BillingCycle
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle_id [String] Billing Cycle ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingCyclesApi.delete_billing_cycle ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling BillingCyclesApi.delete_billing_cycle"
      end
      # verify the required parameter 'billing_cycle_id' is set
      if @api_client.config.client_side_validation && billing_cycle_id.nil?
        fail ArgumentError, "Missing the required parameter 'billing_cycle_id' when calling BillingCyclesApi.delete_billing_cycle"
      end
      # resource path
      local_var_path = '/billing-cycles/{billingCycleID}'.sub('{' + 'billingCycleID' + '}', CGI.escape(billing_cycle_id.to_s))

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
        :operation => :"BillingCyclesApi.delete_billing_cycle",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingCyclesApi#delete_billing_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get BillingCycle
    # Gets BillingCycle
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle_id [String] Billing Cycle ID
    # @param [Hash] opts the optional parameters
    # @return [BillingCycleVBAResponse]
    def get_billing_cycle(vbasoftware_database, billing_cycle_id, opts = {})
      data, _status_code, _headers = get_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id, opts)
      data
    end

    # Get BillingCycle
    # Gets BillingCycle
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle_id [String] Billing Cycle ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillingCycleVBAResponse, Integer, Hash)>] BillingCycleVBAResponse data, response status code and response headers
    def get_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingCyclesApi.get_billing_cycle ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling BillingCyclesApi.get_billing_cycle"
      end
      # verify the required parameter 'billing_cycle_id' is set
      if @api_client.config.client_side_validation && billing_cycle_id.nil?
        fail ArgumentError, "Missing the required parameter 'billing_cycle_id' when calling BillingCyclesApi.get_billing_cycle"
      end
      # resource path
      local_var_path = '/billing-cycles/{billingCycleID}'.sub('{' + 'billingCycleID' + '}', CGI.escape(billing_cycle_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BillingCycleVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"BillingCyclesApi.get_billing_cycle",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingCyclesApi#get_billing_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List BillingCycle
    # Lists all BillingCycle
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [BillingCycleListVBAResponse]
    def list_billing_cycle(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_billing_cycle_with_http_info(vbasoftware_database, opts)
      data
    end

    # List BillingCycle
    # Lists all BillingCycle
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(BillingCycleListVBAResponse, Integer, Hash)>] BillingCycleListVBAResponse data, response status code and response headers
    def list_billing_cycle_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingCyclesApi.list_billing_cycle ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling BillingCyclesApi.list_billing_cycle"
      end
      # resource path
      local_var_path = '/billing-cycles'

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
      return_type = opts[:debug_return_type] || 'BillingCycleListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"BillingCyclesApi.list_billing_cycle",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingCyclesApi#list_billing_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch BillingCycle
    # Create or Update multiple BillingCycle at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle [Array<BillingCycle>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_billing_cycle(vbasoftware_database, billing_cycle, opts = {})
      data, _status_code, _headers = update_batch_billing_cycle_with_http_info(vbasoftware_database, billing_cycle, opts)
      data
    end

    # Create or Update Batch BillingCycle
    # Create or Update multiple BillingCycle at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle [Array<BillingCycle>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_billing_cycle_with_http_info(vbasoftware_database, billing_cycle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingCyclesApi.update_batch_billing_cycle ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling BillingCyclesApi.update_batch_billing_cycle"
      end
      # verify the required parameter 'billing_cycle' is set
      if @api_client.config.client_side_validation && billing_cycle.nil?
        fail ArgumentError, "Missing the required parameter 'billing_cycle' when calling BillingCyclesApi.update_batch_billing_cycle"
      end
      # resource path
      local_var_path = '/billing-cycles-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(billing_cycle)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"BillingCyclesApi.update_batch_billing_cycle",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingCyclesApi#update_batch_billing_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update BillingCycle
    # Updates a specific BillingCycle.
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle_id [String] Billing Cycle ID
    # @param billing_cycle [BillingCycle] 
    # @param [Hash] opts the optional parameters
    # @return [BillingCycleVBAResponse]
    def update_billing_cycle(vbasoftware_database, billing_cycle_id, billing_cycle, opts = {})
      data, _status_code, _headers = update_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id, billing_cycle, opts)
      data
    end

    # Update BillingCycle
    # Updates a specific BillingCycle.
    # @param vbasoftware_database [String] Target database
    # @param billing_cycle_id [String] Billing Cycle ID
    # @param billing_cycle [BillingCycle] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillingCycleVBAResponse, Integer, Hash)>] BillingCycleVBAResponse data, response status code and response headers
    def update_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id, billing_cycle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingCyclesApi.update_billing_cycle ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling BillingCyclesApi.update_billing_cycle"
      end
      # verify the required parameter 'billing_cycle_id' is set
      if @api_client.config.client_side_validation && billing_cycle_id.nil?
        fail ArgumentError, "Missing the required parameter 'billing_cycle_id' when calling BillingCyclesApi.update_billing_cycle"
      end
      # verify the required parameter 'billing_cycle' is set
      if @api_client.config.client_side_validation && billing_cycle.nil?
        fail ArgumentError, "Missing the required parameter 'billing_cycle' when calling BillingCyclesApi.update_billing_cycle"
      end
      # resource path
      local_var_path = '/billing-cycles/{billingCycleID}'.sub('{' + 'billingCycleID' + '}', CGI.escape(billing_cycle_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(billing_cycle)

      # return_type
      return_type = opts[:debug_return_type] || 'BillingCycleVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"BillingCyclesApi.update_billing_cycle",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingCyclesApi#update_billing_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
