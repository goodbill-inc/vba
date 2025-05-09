=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CareCaseActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CareCaseAction
    # Creates a new CareCaseAction
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action [CareCaseAction] 
    # @param [Hash] opts the optional parameters
    # @return [CareCaseActionVBAResponse]
    def create_care_case_action(vbasoftware_database, case_key, care_case_action, opts = {})
      data, _status_code, _headers = create_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action, opts)
      data
    end

    # Create CareCaseAction
    # Creates a new CareCaseAction
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action [CareCaseAction] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseActionVBAResponse, Integer, Hash)>] CareCaseActionVBAResponse data, response status code and response headers
    def create_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseActionsApi.create_care_case_action ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseActionsApi.create_care_case_action"
      end
      # verify the required parameter 'case_key' is set
      if @api_client.config.client_side_validation && case_key.nil?
        fail ArgumentError, "Missing the required parameter 'case_key' when calling CareCaseActionsApi.create_care_case_action"
      end
      # verify the required parameter 'care_case_action' is set
      if @api_client.config.client_side_validation && care_case_action.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_action' when calling CareCaseActionsApi.create_care_case_action"
      end
      # resource path
      local_var_path = '/cases/{caseKey}/actions'.sub('{' + 'caseKey' + '}', CGI.escape(case_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_action)

      # return_type
      return_type = opts[:debug_return_type] || 'CareCaseActionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseActionsApi.create_care_case_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseActionsApi#create_care_case_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CareCaseAction
    # Deletes an CareCaseAction
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action_key [Integer] CareCaseAction Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_care_case_action(vbasoftware_database, case_key, care_case_action_key, opts = {})
      delete_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key, opts)
      nil
    end

    # Delete CareCaseAction
    # Deletes an CareCaseAction
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action_key [Integer] CareCaseAction Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseActionsApi.delete_care_case_action ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseActionsApi.delete_care_case_action"
      end
      # verify the required parameter 'case_key' is set
      if @api_client.config.client_side_validation && case_key.nil?
        fail ArgumentError, "Missing the required parameter 'case_key' when calling CareCaseActionsApi.delete_care_case_action"
      end
      # verify the required parameter 'care_case_action_key' is set
      if @api_client.config.client_side_validation && care_case_action_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_action_key' when calling CareCaseActionsApi.delete_care_case_action"
      end
      # resource path
      local_var_path = '/cases/{caseKey}/actions/{careCaseActionKey}'.sub('{' + 'caseKey' + '}', CGI.escape(case_key.to_s)).sub('{' + 'careCaseActionKey' + '}', CGI.escape(care_case_action_key.to_s))

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
        :operation => :"CareCaseActionsApi.delete_care_case_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseActionsApi#delete_care_case_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CareCaseAction
    # Gets CareCaseAction
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action_key [Integer] CareCaseAction Key
    # @param [Hash] opts the optional parameters
    # @return [CareCaseActionVBAResponse]
    def get_care_case_action(vbasoftware_database, case_key, care_case_action_key, opts = {})
      data, _status_code, _headers = get_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key, opts)
      data
    end

    # Get CareCaseAction
    # Gets CareCaseAction
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action_key [Integer] CareCaseAction Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseActionVBAResponse, Integer, Hash)>] CareCaseActionVBAResponse data, response status code and response headers
    def get_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseActionsApi.get_care_case_action ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseActionsApi.get_care_case_action"
      end
      # verify the required parameter 'case_key' is set
      if @api_client.config.client_side_validation && case_key.nil?
        fail ArgumentError, "Missing the required parameter 'case_key' when calling CareCaseActionsApi.get_care_case_action"
      end
      # verify the required parameter 'care_case_action_key' is set
      if @api_client.config.client_side_validation && care_case_action_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_action_key' when calling CareCaseActionsApi.get_care_case_action"
      end
      # resource path
      local_var_path = '/cases/{caseKey}/actions/{careCaseActionKey}'.sub('{' + 'caseKey' + '}', CGI.escape(case_key.to_s)).sub('{' + 'careCaseActionKey' + '}', CGI.escape(care_case_action_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CareCaseActionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseActionsApi.get_care_case_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseActionsApi#get_care_case_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CareCaseAction
    # Lists all CareCaseAction for the given caseKey
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CareCaseActionListVBAResponse]
    def list_care_case_action(vbasoftware_database, case_key, opts = {})
      data, _status_code, _headers = list_care_case_action_with_http_info(vbasoftware_database, case_key, opts)
      data
    end

    # List CareCaseAction
    # Lists all CareCaseAction for the given caseKey
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CareCaseActionListVBAResponse, Integer, Hash)>] CareCaseActionListVBAResponse data, response status code and response headers
    def list_care_case_action_with_http_info(vbasoftware_database, case_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseActionsApi.list_care_case_action ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseActionsApi.list_care_case_action"
      end
      # verify the required parameter 'case_key' is set
      if @api_client.config.client_side_validation && case_key.nil?
        fail ArgumentError, "Missing the required parameter 'case_key' when calling CareCaseActionsApi.list_care_case_action"
      end
      # resource path
      local_var_path = '/cases/{caseKey}/actions'.sub('{' + 'caseKey' + '}', CGI.escape(case_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CareCaseActionListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseActionsApi.list_care_case_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseActionsApi#list_care_case_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CareCaseAction
    # Create or Update multiple CareCaseAction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action [Array<CareCaseAction>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_care_case_action(vbasoftware_database, case_key, care_case_action, opts = {})
      data, _status_code, _headers = update_batch_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action, opts)
      data
    end

    # Create or Update Batch CareCaseAction
    # Create or Update multiple CareCaseAction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action [Array<CareCaseAction>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseActionsApi.update_batch_care_case_action ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseActionsApi.update_batch_care_case_action"
      end
      # verify the required parameter 'case_key' is set
      if @api_client.config.client_side_validation && case_key.nil?
        fail ArgumentError, "Missing the required parameter 'case_key' when calling CareCaseActionsApi.update_batch_care_case_action"
      end
      # verify the required parameter 'care_case_action' is set
      if @api_client.config.client_side_validation && care_case_action.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_action' when calling CareCaseActionsApi.update_batch_care_case_action"
      end
      # resource path
      local_var_path = '/cases/{caseKey}/actions-batch'.sub('{' + 'caseKey' + '}', CGI.escape(case_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_action)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseActionsApi.update_batch_care_case_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseActionsApi#update_batch_care_case_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CareCaseAction
    # Updates a specific CareCaseAction.
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action_key [Integer] CareCaseAction Key
    # @param care_case_action [CareCaseAction] 
    # @param [Hash] opts the optional parameters
    # @return [CareCaseActionVBAResponse]
    def update_care_case_action(vbasoftware_database, case_key, care_case_action_key, care_case_action, opts = {})
      data, _status_code, _headers = update_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key, care_case_action, opts)
      data
    end

    # Update CareCaseAction
    # Updates a specific CareCaseAction.
    # @param vbasoftware_database [String] Target database
    # @param case_key [Integer] Case Key
    # @param care_case_action_key [Integer] CareCaseAction Key
    # @param care_case_action [CareCaseAction] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseActionVBAResponse, Integer, Hash)>] CareCaseActionVBAResponse data, response status code and response headers
    def update_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key, care_case_action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseActionsApi.update_care_case_action ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseActionsApi.update_care_case_action"
      end
      # verify the required parameter 'case_key' is set
      if @api_client.config.client_side_validation && case_key.nil?
        fail ArgumentError, "Missing the required parameter 'case_key' when calling CareCaseActionsApi.update_care_case_action"
      end
      # verify the required parameter 'care_case_action_key' is set
      if @api_client.config.client_side_validation && care_case_action_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_action_key' when calling CareCaseActionsApi.update_care_case_action"
      end
      # verify the required parameter 'care_case_action' is set
      if @api_client.config.client_side_validation && care_case_action.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_action' when calling CareCaseActionsApi.update_care_case_action"
      end
      # resource path
      local_var_path = '/cases/{caseKey}/actions/{careCaseActionKey}'.sub('{' + 'caseKey' + '}', CGI.escape(case_key.to_s)).sub('{' + 'careCaseActionKey' + '}', CGI.escape(care_case_action_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_action)

      # return_type
      return_type = opts[:debug_return_type] || 'CareCaseActionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseActionsApi.update_care_case_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseActionsApi#update_care_case_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
