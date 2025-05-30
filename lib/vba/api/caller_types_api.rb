=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CallerTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CallTrackingCallerType
    # Creates a new CallTrackingCallerType
    # @param vbasoftware_database [String] Target database
    # @param call_tracking_caller_type [CallTrackingCallerType] 
    # @param [Hash] opts the optional parameters
    # @return [CallTrackingCallerTypeVBAResponse]
    def create_call_tracking_caller_type(vbasoftware_database, call_tracking_caller_type, opts = {})
      data, _status_code, _headers = create_call_tracking_caller_type_with_http_info(vbasoftware_database, call_tracking_caller_type, opts)
      data
    end

    # Create CallTrackingCallerType
    # Creates a new CallTrackingCallerType
    # @param vbasoftware_database [String] Target database
    # @param call_tracking_caller_type [CallTrackingCallerType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallTrackingCallerTypeVBAResponse, Integer, Hash)>] CallTrackingCallerTypeVBAResponse data, response status code and response headers
    def create_call_tracking_caller_type_with_http_info(vbasoftware_database, call_tracking_caller_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallerTypesApi.create_call_tracking_caller_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallerTypesApi.create_call_tracking_caller_type"
      end
      # verify the required parameter 'call_tracking_caller_type' is set
      if @api_client.config.client_side_validation && call_tracking_caller_type.nil?
        fail ArgumentError, "Missing the required parameter 'call_tracking_caller_type' when calling CallerTypesApi.create_call_tracking_caller_type"
      end
      # resource path
      local_var_path = '/caller-types'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(call_tracking_caller_type)

      # return_type
      return_type = opts[:debug_return_type] || 'CallTrackingCallerTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CallerTypesApi.create_call_tracking_caller_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallerTypesApi#create_call_tracking_caller_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CallTrackingCallerType
    # Deletes an CallTrackingCallerType
    # @param vbasoftware_database [String] Target database
    # @param caller_type [String] Caller Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_call_tracking_caller_type(vbasoftware_database, caller_type, opts = {})
      delete_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type, opts)
      nil
    end

    # Delete CallTrackingCallerType
    # Deletes an CallTrackingCallerType
    # @param vbasoftware_database [String] Target database
    # @param caller_type [String] Caller Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallerTypesApi.delete_call_tracking_caller_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallerTypesApi.delete_call_tracking_caller_type"
      end
      # verify the required parameter 'caller_type' is set
      if @api_client.config.client_side_validation && caller_type.nil?
        fail ArgumentError, "Missing the required parameter 'caller_type' when calling CallerTypesApi.delete_call_tracking_caller_type"
      end
      # resource path
      local_var_path = '/caller-types/{callerType}'.sub('{' + 'callerType' + '}', CGI.escape(caller_type.to_s))

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
        :operation => :"CallerTypesApi.delete_call_tracking_caller_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallerTypesApi#delete_call_tracking_caller_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CallTrackingCallerType
    # Gets CallTrackingCallerType
    # @param vbasoftware_database [String] Target database
    # @param caller_type [String] Caller Type
    # @param [Hash] opts the optional parameters
    # @return [CallTrackingCallerTypeVBAResponse]
    def get_call_tracking_caller_type(vbasoftware_database, caller_type, opts = {})
      data, _status_code, _headers = get_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type, opts)
      data
    end

    # Get CallTrackingCallerType
    # Gets CallTrackingCallerType
    # @param vbasoftware_database [String] Target database
    # @param caller_type [String] Caller Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallTrackingCallerTypeVBAResponse, Integer, Hash)>] CallTrackingCallerTypeVBAResponse data, response status code and response headers
    def get_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallerTypesApi.get_call_tracking_caller_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallerTypesApi.get_call_tracking_caller_type"
      end
      # verify the required parameter 'caller_type' is set
      if @api_client.config.client_side_validation && caller_type.nil?
        fail ArgumentError, "Missing the required parameter 'caller_type' when calling CallerTypesApi.get_call_tracking_caller_type"
      end
      # resource path
      local_var_path = '/caller-types/{callerType}'.sub('{' + 'callerType' + '}', CGI.escape(caller_type.to_s))

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
      return_type = opts[:debug_return_type] || 'CallTrackingCallerTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CallerTypesApi.get_call_tracking_caller_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallerTypesApi#get_call_tracking_caller_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CallTrackingCallerType
    # Lists all CallTrackingCallerType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CallTrackingCallerTypeListVBAResponse]
    def list_call_tracking_caller_type(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_call_tracking_caller_type_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CallTrackingCallerType
    # Lists all CallTrackingCallerType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CallTrackingCallerTypeListVBAResponse, Integer, Hash)>] CallTrackingCallerTypeListVBAResponse data, response status code and response headers
    def list_call_tracking_caller_type_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallerTypesApi.list_call_tracking_caller_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallerTypesApi.list_call_tracking_caller_type"
      end
      # resource path
      local_var_path = '/caller-types'

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
      return_type = opts[:debug_return_type] || 'CallTrackingCallerTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CallerTypesApi.list_call_tracking_caller_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallerTypesApi#list_call_tracking_caller_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CallTrackingCallerType
    # Create or Update multiple CallTrackingCallerType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param call_tracking_caller_type [Array<CallTrackingCallerType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_call_tracking_caller_type(vbasoftware_database, call_tracking_caller_type, opts = {})
      data, _status_code, _headers = update_batch_call_tracking_caller_type_with_http_info(vbasoftware_database, call_tracking_caller_type, opts)
      data
    end

    # Create or Update Batch CallTrackingCallerType
    # Create or Update multiple CallTrackingCallerType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param call_tracking_caller_type [Array<CallTrackingCallerType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_call_tracking_caller_type_with_http_info(vbasoftware_database, call_tracking_caller_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallerTypesApi.update_batch_call_tracking_caller_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallerTypesApi.update_batch_call_tracking_caller_type"
      end
      # verify the required parameter 'call_tracking_caller_type' is set
      if @api_client.config.client_side_validation && call_tracking_caller_type.nil?
        fail ArgumentError, "Missing the required parameter 'call_tracking_caller_type' when calling CallerTypesApi.update_batch_call_tracking_caller_type"
      end
      # resource path
      local_var_path = '/caller-types-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(call_tracking_caller_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CallerTypesApi.update_batch_call_tracking_caller_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallerTypesApi#update_batch_call_tracking_caller_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CallTrackingCallerType
    # Updates a specific CallTrackingCallerType.
    # @param vbasoftware_database [String] Target database
    # @param caller_type [String] Caller Type
    # @param call_tracking_caller_type [CallTrackingCallerType] 
    # @param [Hash] opts the optional parameters
    # @return [CallTrackingCallerTypeVBAResponse]
    def update_call_tracking_caller_type(vbasoftware_database, caller_type, call_tracking_caller_type, opts = {})
      data, _status_code, _headers = update_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type, call_tracking_caller_type, opts)
      data
    end

    # Update CallTrackingCallerType
    # Updates a specific CallTrackingCallerType.
    # @param vbasoftware_database [String] Target database
    # @param caller_type [String] Caller Type
    # @param call_tracking_caller_type [CallTrackingCallerType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallTrackingCallerTypeVBAResponse, Integer, Hash)>] CallTrackingCallerTypeVBAResponse data, response status code and response headers
    def update_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type, call_tracking_caller_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallerTypesApi.update_call_tracking_caller_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallerTypesApi.update_call_tracking_caller_type"
      end
      # verify the required parameter 'caller_type' is set
      if @api_client.config.client_side_validation && caller_type.nil?
        fail ArgumentError, "Missing the required parameter 'caller_type' when calling CallerTypesApi.update_call_tracking_caller_type"
      end
      # verify the required parameter 'call_tracking_caller_type' is set
      if @api_client.config.client_side_validation && call_tracking_caller_type.nil?
        fail ArgumentError, "Missing the required parameter 'call_tracking_caller_type' when calling CallerTypesApi.update_call_tracking_caller_type"
      end
      # resource path
      local_var_path = '/caller-types/{callerType}'.sub('{' + 'callerType' + '}', CGI.escape(caller_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(call_tracking_caller_type)

      # return_type
      return_type = opts[:debug_return_type] || 'CallTrackingCallerTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CallerTypesApi.update_call_tracking_caller_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallerTypesApi#update_call_tracking_caller_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
