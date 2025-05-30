=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class Context4HealthCostContainmentMessageTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CostContainContext4MessageType
    # Creates a new CostContainContext4MessageType
    # @param vbasoftware_database [String] Target database
    # @param cost_contain_context4_message_type [CostContainContext4MessageType] 
    # @param [Hash] opts the optional parameters
    # @return [CostContainContext4MessageTypeVBAResponse]
    def create_cost_contain_context4_message_type(vbasoftware_database, cost_contain_context4_message_type, opts = {})
      data, _status_code, _headers = create_cost_contain_context4_message_type_with_http_info(vbasoftware_database, cost_contain_context4_message_type, opts)
      data
    end

    # Create CostContainContext4MessageType
    # Creates a new CostContainContext4MessageType
    # @param vbasoftware_database [String] Target database
    # @param cost_contain_context4_message_type [CostContainContext4MessageType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostContainContext4MessageTypeVBAResponse, Integer, Hash)>] CostContainContext4MessageTypeVBAResponse data, response status code and response headers
    def create_cost_contain_context4_message_type_with_http_info(vbasoftware_database, cost_contain_context4_message_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Context4HealthCostContainmentMessageTypesApi.create_cost_contain_context4_message_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling Context4HealthCostContainmentMessageTypesApi.create_cost_contain_context4_message_type"
      end
      # verify the required parameter 'cost_contain_context4_message_type' is set
      if @api_client.config.client_side_validation && cost_contain_context4_message_type.nil?
        fail ArgumentError, "Missing the required parameter 'cost_contain_context4_message_type' when calling Context4HealthCostContainmentMessageTypesApi.create_cost_contain_context4_message_type"
      end
      # resource path
      local_var_path = '/context4health-cost-containment-message-types'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cost_contain_context4_message_type)

      # return_type
      return_type = opts[:debug_return_type] || 'CostContainContext4MessageTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Context4HealthCostContainmentMessageTypesApi.create_cost_contain_context4_message_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Context4HealthCostContainmentMessageTypesApi#create_cost_contain_context4_message_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CostContainContext4MessageType
    # Deletes an CostContainContext4MessageType
    # @param vbasoftware_database [String] Target database
    # @param message_type [String] MessageType
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_cost_contain_context4_message_type(vbasoftware_database, message_type, opts = {})
      delete_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type, opts)
      nil
    end

    # Delete CostContainContext4MessageType
    # Deletes an CostContainContext4MessageType
    # @param vbasoftware_database [String] Target database
    # @param message_type [String] MessageType
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Context4HealthCostContainmentMessageTypesApi.delete_cost_contain_context4_message_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling Context4HealthCostContainmentMessageTypesApi.delete_cost_contain_context4_message_type"
      end
      # verify the required parameter 'message_type' is set
      if @api_client.config.client_side_validation && message_type.nil?
        fail ArgumentError, "Missing the required parameter 'message_type' when calling Context4HealthCostContainmentMessageTypesApi.delete_cost_contain_context4_message_type"
      end
      # resource path
      local_var_path = '/context4health-cost-containment-message-types/{messageType}'.sub('{' + 'messageType' + '}', CGI.escape(message_type.to_s))

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
        :operation => :"Context4HealthCostContainmentMessageTypesApi.delete_cost_contain_context4_message_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Context4HealthCostContainmentMessageTypesApi#delete_cost_contain_context4_message_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CostContainContext4MessageType
    # Gets CostContainContext4MessageType
    # @param vbasoftware_database [String] Target database
    # @param message_type [String] MessageType
    # @param [Hash] opts the optional parameters
    # @return [CostContainContext4MessageTypeVBAResponse]
    def get_cost_contain_context4_message_type(vbasoftware_database, message_type, opts = {})
      data, _status_code, _headers = get_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type, opts)
      data
    end

    # Get CostContainContext4MessageType
    # Gets CostContainContext4MessageType
    # @param vbasoftware_database [String] Target database
    # @param message_type [String] MessageType
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostContainContext4MessageTypeVBAResponse, Integer, Hash)>] CostContainContext4MessageTypeVBAResponse data, response status code and response headers
    def get_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Context4HealthCostContainmentMessageTypesApi.get_cost_contain_context4_message_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling Context4HealthCostContainmentMessageTypesApi.get_cost_contain_context4_message_type"
      end
      # verify the required parameter 'message_type' is set
      if @api_client.config.client_side_validation && message_type.nil?
        fail ArgumentError, "Missing the required parameter 'message_type' when calling Context4HealthCostContainmentMessageTypesApi.get_cost_contain_context4_message_type"
      end
      # resource path
      local_var_path = '/context4health-cost-containment-message-types/{messageType}'.sub('{' + 'messageType' + '}', CGI.escape(message_type.to_s))

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
      return_type = opts[:debug_return_type] || 'CostContainContext4MessageTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Context4HealthCostContainmentMessageTypesApi.get_cost_contain_context4_message_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Context4HealthCostContainmentMessageTypesApi#get_cost_contain_context4_message_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CostContainContext4MessageType
    # Lists all CostContainContext4MessageType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CostContainContext4MessageTypeListVBAResponse]
    def list_cost_contain_context4_message_type(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_cost_contain_context4_message_type_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CostContainContext4MessageType
    # Lists all CostContainContext4MessageType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CostContainContext4MessageTypeListVBAResponse, Integer, Hash)>] CostContainContext4MessageTypeListVBAResponse data, response status code and response headers
    def list_cost_contain_context4_message_type_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Context4HealthCostContainmentMessageTypesApi.list_cost_contain_context4_message_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling Context4HealthCostContainmentMessageTypesApi.list_cost_contain_context4_message_type"
      end
      # resource path
      local_var_path = '/context4health-cost-containment-message-types'

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
      return_type = opts[:debug_return_type] || 'CostContainContext4MessageTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Context4HealthCostContainmentMessageTypesApi.list_cost_contain_context4_message_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Context4HealthCostContainmentMessageTypesApi#list_cost_contain_context4_message_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CostContainContext4MessageType
    # Create or Update multiple CostContainContext4MessageType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param cost_contain_context4_message_type [Array<CostContainContext4MessageType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_cost_contain_context4_message_type(vbasoftware_database, cost_contain_context4_message_type, opts = {})
      data, _status_code, _headers = update_batch_cost_contain_context4_message_type_with_http_info(vbasoftware_database, cost_contain_context4_message_type, opts)
      data
    end

    # Create or Update Batch CostContainContext4MessageType
    # Create or Update multiple CostContainContext4MessageType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param cost_contain_context4_message_type [Array<CostContainContext4MessageType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_cost_contain_context4_message_type_with_http_info(vbasoftware_database, cost_contain_context4_message_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Context4HealthCostContainmentMessageTypesApi.update_batch_cost_contain_context4_message_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling Context4HealthCostContainmentMessageTypesApi.update_batch_cost_contain_context4_message_type"
      end
      # verify the required parameter 'cost_contain_context4_message_type' is set
      if @api_client.config.client_side_validation && cost_contain_context4_message_type.nil?
        fail ArgumentError, "Missing the required parameter 'cost_contain_context4_message_type' when calling Context4HealthCostContainmentMessageTypesApi.update_batch_cost_contain_context4_message_type"
      end
      # resource path
      local_var_path = '/context4health-cost-containment-message-types-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cost_contain_context4_message_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Context4HealthCostContainmentMessageTypesApi.update_batch_cost_contain_context4_message_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Context4HealthCostContainmentMessageTypesApi#update_batch_cost_contain_context4_message_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CostContainContext4MessageType
    # Updates a specific CostContainContext4MessageType.
    # @param vbasoftware_database [String] Target database
    # @param message_type [String] MessageType
    # @param cost_contain_context4_message_type [CostContainContext4MessageType] 
    # @param [Hash] opts the optional parameters
    # @return [CostContainContext4MessageTypeVBAResponse]
    def update_cost_contain_context4_message_type(vbasoftware_database, message_type, cost_contain_context4_message_type, opts = {})
      data, _status_code, _headers = update_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type, cost_contain_context4_message_type, opts)
      data
    end

    # Update CostContainContext4MessageType
    # Updates a specific CostContainContext4MessageType.
    # @param vbasoftware_database [String] Target database
    # @param message_type [String] MessageType
    # @param cost_contain_context4_message_type [CostContainContext4MessageType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostContainContext4MessageTypeVBAResponse, Integer, Hash)>] CostContainContext4MessageTypeVBAResponse data, response status code and response headers
    def update_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type, cost_contain_context4_message_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Context4HealthCostContainmentMessageTypesApi.update_cost_contain_context4_message_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling Context4HealthCostContainmentMessageTypesApi.update_cost_contain_context4_message_type"
      end
      # verify the required parameter 'message_type' is set
      if @api_client.config.client_side_validation && message_type.nil?
        fail ArgumentError, "Missing the required parameter 'message_type' when calling Context4HealthCostContainmentMessageTypesApi.update_cost_contain_context4_message_type"
      end
      # verify the required parameter 'cost_contain_context4_message_type' is set
      if @api_client.config.client_side_validation && cost_contain_context4_message_type.nil?
        fail ArgumentError, "Missing the required parameter 'cost_contain_context4_message_type' when calling Context4HealthCostContainmentMessageTypesApi.update_cost_contain_context4_message_type"
      end
      # resource path
      local_var_path = '/context4health-cost-containment-message-types/{messageType}'.sub('{' + 'messageType' + '}', CGI.escape(message_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cost_contain_context4_message_type)

      # return_type
      return_type = opts[:debug_return_type] || 'CostContainContext4MessageTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Context4HealthCostContainmentMessageTypesApi.update_cost_contain_context4_message_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Context4HealthCostContainmentMessageTypesApi#update_cost_contain_context4_message_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
