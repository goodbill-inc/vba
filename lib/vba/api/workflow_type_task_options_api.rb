=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class WorkflowTypeTaskOptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create WorkflowTypeTaskOption
    # Creates a new WorkflowTypeTaskOption
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_type_task_option [WorkflowTypeTaskOption] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowTypeTaskOptionVBAResponse]
    def create_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_type_task_option, opts = {})
      data, _status_code, _headers = create_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_type_task_option, opts)
      data
    end

    # Create WorkflowTypeTaskOption
    # Creates a new WorkflowTypeTaskOption
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_type_task_option [WorkflowTypeTaskOption] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowTypeTaskOptionVBAResponse, Integer, Hash)>] WorkflowTypeTaskOptionVBAResponse data, response status code and response headers
    def create_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_type_task_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTypeTaskOptionsApi.create_workflow_type_task_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling WorkflowTypeTaskOptionsApi.create_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_type' is set
      if @api_client.config.client_side_validation && workflow_type.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_type' when calling WorkflowTypeTaskOptionsApi.create_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_type_task_option' is set
      if @api_client.config.client_side_validation && workflow_type_task_option.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_type_task_option' when calling WorkflowTypeTaskOptionsApi.create_workflow_type_task_option"
      end
      # resource path
      local_var_path = '/workflow-types/{workflowType}/task-options'.sub('{' + 'workflowType' + '}', CGI.escape(workflow_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(workflow_type_task_option)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowTypeTaskOptionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTypeTaskOptionsApi.create_workflow_type_task_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTypeTaskOptionsApi#create_workflow_type_task_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete WorkflowTypeTaskOption
    # Deletes an WorkflowTypeTaskOption
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_task_option [String] WorkflowTask Option
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_task_option, opts = {})
      delete_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option, opts)
      nil
    end

    # Delete WorkflowTypeTaskOption
    # Deletes an WorkflowTypeTaskOption
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_task_option [String] WorkflowTask Option
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTypeTaskOptionsApi.delete_workflow_type_task_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling WorkflowTypeTaskOptionsApi.delete_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_type' is set
      if @api_client.config.client_side_validation && workflow_type.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_type' when calling WorkflowTypeTaskOptionsApi.delete_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_task_option' is set
      if @api_client.config.client_side_validation && workflow_task_option.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_task_option' when calling WorkflowTypeTaskOptionsApi.delete_workflow_type_task_option"
      end
      # resource path
      local_var_path = '/workflow-types/{workflowType}/task-options/{workflowTaskOption}'.sub('{' + 'workflowType' + '}', CGI.escape(workflow_type.to_s)).sub('{' + 'workflowTaskOption' + '}', CGI.escape(workflow_task_option.to_s))

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
        :operation => :"WorkflowTypeTaskOptionsApi.delete_workflow_type_task_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTypeTaskOptionsApi#delete_workflow_type_task_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get WorkflowTypeTaskOption
    # Gets WorkflowTypeTaskOption
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_task_option [String] WorkflowTask Option
    # @param [Hash] opts the optional parameters
    # @return [WorkflowTypeTaskOptionVBAResponse]
    def get_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_task_option, opts = {})
      data, _status_code, _headers = get_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option, opts)
      data
    end

    # Get WorkflowTypeTaskOption
    # Gets WorkflowTypeTaskOption
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_task_option [String] WorkflowTask Option
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowTypeTaskOptionVBAResponse, Integer, Hash)>] WorkflowTypeTaskOptionVBAResponse data, response status code and response headers
    def get_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTypeTaskOptionsApi.get_workflow_type_task_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling WorkflowTypeTaskOptionsApi.get_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_type' is set
      if @api_client.config.client_side_validation && workflow_type.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_type' when calling WorkflowTypeTaskOptionsApi.get_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_task_option' is set
      if @api_client.config.client_side_validation && workflow_task_option.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_task_option' when calling WorkflowTypeTaskOptionsApi.get_workflow_type_task_option"
      end
      # resource path
      local_var_path = '/workflow-types/{workflowType}/task-options/{workflowTaskOption}'.sub('{' + 'workflowType' + '}', CGI.escape(workflow_type.to_s)).sub('{' + 'workflowTaskOption' + '}', CGI.escape(workflow_task_option.to_s))

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
      return_type = opts[:debug_return_type] || 'WorkflowTypeTaskOptionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTypeTaskOptionsApi.get_workflow_type_task_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTypeTaskOptionsApi#get_workflow_type_task_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List WorkflowTypeTaskOption
    # Lists all WorkflowTypeTaskOption for the given workflowType
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [WorkflowTypeTaskOptionListVBAResponse]
    def list_workflow_type_task_option(vbasoftware_database, workflow_type, opts = {})
      data, _status_code, _headers = list_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, opts)
      data
    end

    # List WorkflowTypeTaskOption
    # Lists all WorkflowTypeTaskOption for the given workflowType
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(WorkflowTypeTaskOptionListVBAResponse, Integer, Hash)>] WorkflowTypeTaskOptionListVBAResponse data, response status code and response headers
    def list_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTypeTaskOptionsApi.list_workflow_type_task_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling WorkflowTypeTaskOptionsApi.list_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_type' is set
      if @api_client.config.client_side_validation && workflow_type.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_type' when calling WorkflowTypeTaskOptionsApi.list_workflow_type_task_option"
      end
      # resource path
      local_var_path = '/workflow-types/{workflowType}/task-options'.sub('{' + 'workflowType' + '}', CGI.escape(workflow_type.to_s))

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
      return_type = opts[:debug_return_type] || 'WorkflowTypeTaskOptionListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTypeTaskOptionsApi.list_workflow_type_task_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTypeTaskOptionsApi#list_workflow_type_task_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch WorkflowTypeTaskOption
    # Create or Update multiple WorkflowTypeTaskOption at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_type_task_option [Array<WorkflowTypeTaskOption>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_type_task_option, opts = {})
      data, _status_code, _headers = update_batch_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_type_task_option, opts)
      data
    end

    # Create or Update Batch WorkflowTypeTaskOption
    # Create or Update multiple WorkflowTypeTaskOption at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_type_task_option [Array<WorkflowTypeTaskOption>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_type_task_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTypeTaskOptionsApi.update_batch_workflow_type_task_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling WorkflowTypeTaskOptionsApi.update_batch_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_type' is set
      if @api_client.config.client_side_validation && workflow_type.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_type' when calling WorkflowTypeTaskOptionsApi.update_batch_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_type_task_option' is set
      if @api_client.config.client_side_validation && workflow_type_task_option.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_type_task_option' when calling WorkflowTypeTaskOptionsApi.update_batch_workflow_type_task_option"
      end
      # resource path
      local_var_path = '/workflow-types/{workflowType}/task-options-batch'.sub('{' + 'workflowType' + '}', CGI.escape(workflow_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(workflow_type_task_option)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTypeTaskOptionsApi.update_batch_workflow_type_task_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTypeTaskOptionsApi#update_batch_workflow_type_task_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update WorkflowTypeTaskOption
    # Updates a specific WorkflowTypeTaskOption.
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_task_option [String] WorkflowTask Option
    # @param workflow_type_task_option [WorkflowTypeTaskOption] 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowTypeTaskOptionVBAResponse]
    def update_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_task_option, workflow_type_task_option, opts = {})
      data, _status_code, _headers = update_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option, workflow_type_task_option, opts)
      data
    end

    # Update WorkflowTypeTaskOption
    # Updates a specific WorkflowTypeTaskOption.
    # @param vbasoftware_database [String] Target database
    # @param workflow_type [String] Workflow Type
    # @param workflow_task_option [String] WorkflowTask Option
    # @param workflow_type_task_option [WorkflowTypeTaskOption] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowTypeTaskOptionVBAResponse, Integer, Hash)>] WorkflowTypeTaskOptionVBAResponse data, response status code and response headers
    def update_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option, workflow_type_task_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowTypeTaskOptionsApi.update_workflow_type_task_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling WorkflowTypeTaskOptionsApi.update_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_type' is set
      if @api_client.config.client_side_validation && workflow_type.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_type' when calling WorkflowTypeTaskOptionsApi.update_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_task_option' is set
      if @api_client.config.client_side_validation && workflow_task_option.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_task_option' when calling WorkflowTypeTaskOptionsApi.update_workflow_type_task_option"
      end
      # verify the required parameter 'workflow_type_task_option' is set
      if @api_client.config.client_side_validation && workflow_type_task_option.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_type_task_option' when calling WorkflowTypeTaskOptionsApi.update_workflow_type_task_option"
      end
      # resource path
      local_var_path = '/workflow-types/{workflowType}/task-options/{workflowTaskOption}'.sub('{' + 'workflowType' + '}', CGI.escape(workflow_type.to_s)).sub('{' + 'workflowTaskOption' + '}', CGI.escape(workflow_task_option.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(workflow_type_task_option)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkflowTypeTaskOptionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkflowTypeTaskOptionsApi.update_workflow_type_task_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTypeTaskOptionsApi#update_workflow_type_task_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
