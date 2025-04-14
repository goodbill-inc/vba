=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ErrorCategoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ErrorCategory
    # Creates a new ErrorCategory
    # @param vbasoftware_database [String] Target database
    # @param error_category [ErrorCategory] 
    # @param [Hash] opts the optional parameters
    # @return [ErrorCategoryVBAResponse]
    def create_error_category(vbasoftware_database, error_category, opts = {})
      data, _status_code, _headers = create_error_category_with_http_info(vbasoftware_database, error_category, opts)
      data
    end

    # Create ErrorCategory
    # Creates a new ErrorCategory
    # @param vbasoftware_database [String] Target database
    # @param error_category [ErrorCategory] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ErrorCategoryVBAResponse, Integer, Hash)>] ErrorCategoryVBAResponse data, response status code and response headers
    def create_error_category_with_http_info(vbasoftware_database, error_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorCategoryApi.create_error_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorCategoryApi.create_error_category"
      end
      # verify the required parameter 'error_category' is set
      if @api_client.config.client_side_validation && error_category.nil?
        fail ArgumentError, "Missing the required parameter 'error_category' when calling ErrorCategoryApi.create_error_category"
      end
      # resource path
      local_var_path = '/error-categories'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(error_category)

      # return_type
      return_type = opts[:debug_return_type] || 'ErrorCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorCategoryApi.create_error_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorCategoryApi#create_error_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ErrorCategory
    # Deletes an ErrorCategory
    # @param vbasoftware_database [String] Target database
    # @param error_category [String] Error Category
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_error_category(vbasoftware_database, error_category, opts = {})
      delete_error_category_with_http_info(vbasoftware_database, error_category, opts)
      nil
    end

    # Delete ErrorCategory
    # Deletes an ErrorCategory
    # @param vbasoftware_database [String] Target database
    # @param error_category [String] Error Category
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_error_category_with_http_info(vbasoftware_database, error_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorCategoryApi.delete_error_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorCategoryApi.delete_error_category"
      end
      # verify the required parameter 'error_category' is set
      if @api_client.config.client_side_validation && error_category.nil?
        fail ArgumentError, "Missing the required parameter 'error_category' when calling ErrorCategoryApi.delete_error_category"
      end
      # resource path
      local_var_path = '/error-categories/{errorCategory}'.sub('{' + 'errorCategory' + '}', CGI.escape(error_category.to_s))

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
        :operation => :"ErrorCategoryApi.delete_error_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorCategoryApi#delete_error_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ErrorCategory
    # Gets ErrorCategory
    # @param vbasoftware_database [String] Target database
    # @param error_category [String] Error Category
    # @param [Hash] opts the optional parameters
    # @return [ErrorCategoryVBAResponse]
    def get_error_category(vbasoftware_database, error_category, opts = {})
      data, _status_code, _headers = get_error_category_with_http_info(vbasoftware_database, error_category, opts)
      data
    end

    # Get ErrorCategory
    # Gets ErrorCategory
    # @param vbasoftware_database [String] Target database
    # @param error_category [String] Error Category
    # @param [Hash] opts the optional parameters
    # @return [Array<(ErrorCategoryVBAResponse, Integer, Hash)>] ErrorCategoryVBAResponse data, response status code and response headers
    def get_error_category_with_http_info(vbasoftware_database, error_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorCategoryApi.get_error_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorCategoryApi.get_error_category"
      end
      # verify the required parameter 'error_category' is set
      if @api_client.config.client_side_validation && error_category.nil?
        fail ArgumentError, "Missing the required parameter 'error_category' when calling ErrorCategoryApi.get_error_category"
      end
      # resource path
      local_var_path = '/error-categories/{errorCategory}'.sub('{' + 'errorCategory' + '}', CGI.escape(error_category.to_s))

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
      return_type = opts[:debug_return_type] || 'ErrorCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorCategoryApi.get_error_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorCategoryApi#get_error_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ErrorCategory
    # Lists all ErrorCategory
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ErrorCategoryListVBAResponse]
    def list_error_category(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_error_category_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ErrorCategory
    # Lists all ErrorCategory
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ErrorCategoryListVBAResponse, Integer, Hash)>] ErrorCategoryListVBAResponse data, response status code and response headers
    def list_error_category_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorCategoryApi.list_error_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorCategoryApi.list_error_category"
      end
      # resource path
      local_var_path = '/error-categories'

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
      return_type = opts[:debug_return_type] || 'ErrorCategoryListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorCategoryApi.list_error_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorCategoryApi#list_error_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ErrorCategory
    # Create or Update multiple ErrorCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param error_category [Array<ErrorCategory>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_error_category(vbasoftware_database, error_category, opts = {})
      data, _status_code, _headers = update_batch_error_category_with_http_info(vbasoftware_database, error_category, opts)
      data
    end

    # Create or Update Batch ErrorCategory
    # Create or Update multiple ErrorCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param error_category [Array<ErrorCategory>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_error_category_with_http_info(vbasoftware_database, error_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorCategoryApi.update_batch_error_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorCategoryApi.update_batch_error_category"
      end
      # verify the required parameter 'error_category' is set
      if @api_client.config.client_side_validation && error_category.nil?
        fail ArgumentError, "Missing the required parameter 'error_category' when calling ErrorCategoryApi.update_batch_error_category"
      end
      # resource path
      local_var_path = '/error-categories-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(error_category)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorCategoryApi.update_batch_error_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorCategoryApi#update_batch_error_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ErrorCategory
    # Updates a specific ErrorCategory.
    # @param vbasoftware_database [String] Target database
    # @param error_category [String] Error Category
    # @param error_category2 [ErrorCategory] 
    # @param [Hash] opts the optional parameters
    # @return [ErrorCategoryVBAResponse]
    def update_error_category(vbasoftware_database, error_category, error_category2, opts = {})
      data, _status_code, _headers = update_error_category_with_http_info(vbasoftware_database, error_category, error_category2, opts)
      data
    end

    # Update ErrorCategory
    # Updates a specific ErrorCategory.
    # @param vbasoftware_database [String] Target database
    # @param error_category [String] Error Category
    # @param error_category2 [ErrorCategory] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ErrorCategoryVBAResponse, Integer, Hash)>] ErrorCategoryVBAResponse data, response status code and response headers
    def update_error_category_with_http_info(vbasoftware_database, error_category, error_category2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErrorCategoryApi.update_error_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ErrorCategoryApi.update_error_category"
      end
      # verify the required parameter 'error_category' is set
      if @api_client.config.client_side_validation && error_category.nil?
        fail ArgumentError, "Missing the required parameter 'error_category' when calling ErrorCategoryApi.update_error_category"
      end
      # verify the required parameter 'error_category2' is set
      if @api_client.config.client_side_validation && error_category2.nil?
        fail ArgumentError, "Missing the required parameter 'error_category2' when calling ErrorCategoryApi.update_error_category"
      end
      # resource path
      local_var_path = '/error-categories/{errorCategory}'.sub('{' + 'errorCategory' + '}', CGI.escape(error_category.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(error_category2)

      # return_type
      return_type = opts[:debug_return_type] || 'ErrorCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ErrorCategoryApi.update_error_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErrorCategoryApi#update_error_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
