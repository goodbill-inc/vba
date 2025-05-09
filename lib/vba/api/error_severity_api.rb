=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ErrorSeverityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ErrorSeverity
    # Creates a new ErrorSeverity
    # @param vbasoftware_database [String] Target database
    # @param error_severity [ErrorSeverity] 
    # @param [Hash] opts the optional parameters
    # @return [ErrorSeverityVBAResponse]
    def create_error_severity(vbasoftware_database, error_severity, opts = {})
      data, _status_code, _headers = create_error_severity_with_http_info(vbasoftware_database, error_severity, opts)
      data
    end

    # Create ErrorSeverity
    # Creates a new ErrorSeverity
    # @param vbasoftware_database [String] Target database
    # @param error_severity [ErrorSeverity] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ErrorSeverityVBAResponse, Integer, Hash)>] ErrorSeverityVBAResponse data, response status code and response headers
    def create_error_severity_with_http_info(vbasoftware_database, error_severity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorSeverityApi.create_error_severity ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorSeverityApi.create_error_severity"
      end
      # verify the required parameter 'error_severity' is set
      if @api_client.config.client_side_validation && error_severity.nil?
        fail ArgumentError, "Missing the required parameter 'error_severity' when calling ErrorSeverityApi.create_error_severity"
      end
      # resource path
      local_var_path = '/error-severities'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(error_severity)

      # return_type
      return_type = opts[:debug_return_type] || 'ErrorSeverityVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorSeverityApi.create_error_severity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorSeverityApi#create_error_severity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ErrorSeverity
    # Deletes an ErrorSeverity
    # @param vbasoftware_database [String] Target database
    # @param error_severity [Integer] Error Severity
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_error_severity(vbasoftware_database, error_severity, opts = {})
      delete_error_severity_with_http_info(vbasoftware_database, error_severity, opts)
      nil
    end

    # Delete ErrorSeverity
    # Deletes an ErrorSeverity
    # @param vbasoftware_database [String] Target database
    # @param error_severity [Integer] Error Severity
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_error_severity_with_http_info(vbasoftware_database, error_severity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorSeverityApi.delete_error_severity ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorSeverityApi.delete_error_severity"
      end
      # verify the required parameter 'error_severity' is set
      if @api_client.config.client_side_validation && error_severity.nil?
        fail ArgumentError, "Missing the required parameter 'error_severity' when calling ErrorSeverityApi.delete_error_severity"
      end
      # resource path
      local_var_path = '/error-severities/{errorSeverity}'.sub('{' + 'errorSeverity' + '}', CGI.escape(error_severity.to_s))

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
        :operation => :"ErrorSeverityApi.delete_error_severity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorSeverityApi#delete_error_severity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ErrorSeverity
    # Gets ErrorSeverity
    # @param vbasoftware_database [String] Target database
    # @param error_severity [Integer] Error Severity
    # @param [Hash] opts the optional parameters
    # @return [ErrorSeverityVBAResponse]
    def get_error_severity(vbasoftware_database, error_severity, opts = {})
      data, _status_code, _headers = get_error_severity_with_http_info(vbasoftware_database, error_severity, opts)
      data
    end

    # Get ErrorSeverity
    # Gets ErrorSeverity
    # @param vbasoftware_database [String] Target database
    # @param error_severity [Integer] Error Severity
    # @param [Hash] opts the optional parameters
    # @return [Array<(ErrorSeverityVBAResponse, Integer, Hash)>] ErrorSeverityVBAResponse data, response status code and response headers
    def get_error_severity_with_http_info(vbasoftware_database, error_severity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorSeverityApi.get_error_severity ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorSeverityApi.get_error_severity"
      end
      # verify the required parameter 'error_severity' is set
      if @api_client.config.client_side_validation && error_severity.nil?
        fail ArgumentError, "Missing the required parameter 'error_severity' when calling ErrorSeverityApi.get_error_severity"
      end
      # resource path
      local_var_path = '/error-severities/{errorSeverity}'.sub('{' + 'errorSeverity' + '}', CGI.escape(error_severity.to_s))

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
      return_type = opts[:debug_return_type] || 'ErrorSeverityVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorSeverityApi.get_error_severity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorSeverityApi#get_error_severity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ErrorSeverity
    # Lists all ErrorSeverity
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ErrorSeverityListVBAResponse]
    def list_error_severity(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_error_severity_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ErrorSeverity
    # Lists all ErrorSeverity
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ErrorSeverityListVBAResponse, Integer, Hash)>] ErrorSeverityListVBAResponse data, response status code and response headers
    def list_error_severity_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorSeverityApi.list_error_severity ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorSeverityApi.list_error_severity"
      end
      # resource path
      local_var_path = '/error-severities'

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
      return_type = opts[:debug_return_type] || 'ErrorSeverityListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorSeverityApi.list_error_severity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorSeverityApi#list_error_severity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ErrorSeverity
    # Create or Update multiple ErrorSeverity at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param error_severity [Array<ErrorSeverity>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_error_severity(vbasoftware_database, error_severity, opts = {})
      data, _status_code, _headers = update_batch_error_severity_with_http_info(vbasoftware_database, error_severity, opts)
      data
    end

    # Create or Update Batch ErrorSeverity
    # Create or Update multiple ErrorSeverity at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param error_severity [Array<ErrorSeverity>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_error_severity_with_http_info(vbasoftware_database, error_severity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorSeverityApi.update_batch_error_severity ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorSeverityApi.update_batch_error_severity"
      end
      # verify the required parameter 'error_severity' is set
      if @api_client.config.client_side_validation && error_severity.nil?
        fail ArgumentError, "Missing the required parameter 'error_severity' when calling ErrorSeverityApi.update_batch_error_severity"
      end
      # resource path
      local_var_path = '/error-severities-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(error_severity)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorSeverityApi.update_batch_error_severity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorSeverityApi#update_batch_error_severity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ErrorSeverity
    # Updates a specific ErrorSeverity.
    # @param vbasoftware_database [String] Target database
    # @param error_severity [Integer] Error Severity
    # @param error_severity2 [ErrorSeverity] 
    # @param [Hash] opts the optional parameters
    # @return [ErrorSeverityVBAResponse]
    def update_error_severity(vbasoftware_database, error_severity, error_severity2, opts = {})
      data, _status_code, _headers = update_error_severity_with_http_info(vbasoftware_database, error_severity, error_severity2, opts)
      data
    end

    # Update ErrorSeverity
    # Updates a specific ErrorSeverity.
    # @param vbasoftware_database [String] Target database
    # @param error_severity [Integer] Error Severity
    # @param error_severity2 [ErrorSeverity] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ErrorSeverityVBAResponse, Integer, Hash)>] ErrorSeverityVBAResponse data, response status code and response headers
    def update_error_severity_with_http_info(vbasoftware_database, error_severity, error_severity2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorSeverityApi.update_error_severity ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorSeverityApi.update_error_severity"
      end
      # verify the required parameter 'error_severity' is set
      if @api_client.config.client_side_validation && error_severity.nil?
        fail ArgumentError, "Missing the required parameter 'error_severity' when calling ErrorSeverityApi.update_error_severity"
      end
      # verify the required parameter 'error_severity2' is set
      if @api_client.config.client_side_validation && error_severity2.nil?
        fail ArgumentError, "Missing the required parameter 'error_severity2' when calling ErrorSeverityApi.update_error_severity"
      end
      # resource path
      local_var_path = '/error-severities/{errorSeverity}'.sub('{' + 'errorSeverity' + '}', CGI.escape(error_severity.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(error_severity2)

      # return_type
      return_type = opts[:debug_return_type] || 'ErrorSeverityVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorSeverityApi.update_error_severity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorSeverityApi#update_error_severity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
