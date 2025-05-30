=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClassesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Class
    # Creates a new Class
    # @param vbasoftware_database [String] Target database
    # @param model_class [ModelClass] 
    # @param [Hash] opts the optional parameters
    # @return [ClassVBAResponse]
    def create_class(vbasoftware_database, model_class, opts = {})
      data, _status_code, _headers = create_class_with_http_info(vbasoftware_database, model_class, opts)
      data
    end

    # Create Class
    # Creates a new Class
    # @param vbasoftware_database [String] Target database
    # @param model_class [ModelClass] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClassVBAResponse, Integer, Hash)>] ClassVBAResponse data, response status code and response headers
    def create_class_with_http_info(vbasoftware_database, model_class, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesApi.create_class ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClassesApi.create_class"
      end
      # verify the required parameter 'model_class' is set
      if @api_client.config.client_side_validation && model_class.nil?
        fail ArgumentError, "Missing the required parameter 'model_class' when calling ClassesApi.create_class"
      end
      # resource path
      local_var_path = '/classes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(model_class)

      # return_type
      return_type = opts[:debug_return_type] || 'ClassVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClassesApi.create_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesApi#create_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Class
    # Deletes an Class
    # @param vbasoftware_database [String] Target database
    # @param class_code [String] Class Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_class(vbasoftware_database, class_code, opts = {})
      delete_class_with_http_info(vbasoftware_database, class_code, opts)
      nil
    end

    # Delete Class
    # Deletes an Class
    # @param vbasoftware_database [String] Target database
    # @param class_code [String] Class Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_class_with_http_info(vbasoftware_database, class_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesApi.delete_class ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClassesApi.delete_class"
      end
      # verify the required parameter 'class_code' is set
      if @api_client.config.client_side_validation && class_code.nil?
        fail ArgumentError, "Missing the required parameter 'class_code' when calling ClassesApi.delete_class"
      end
      # resource path
      local_var_path = '/classes/{classCode}'.sub('{' + 'classCode' + '}', CGI.escape(class_code.to_s))

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
        :operation => :"ClassesApi.delete_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesApi#delete_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Class
    # Gets Class
    # @param vbasoftware_database [String] Target database
    # @param class_code [String] Class Code
    # @param [Hash] opts the optional parameters
    # @return [ClassVBAResponse]
    def get_class(vbasoftware_database, class_code, opts = {})
      data, _status_code, _headers = get_class_with_http_info(vbasoftware_database, class_code, opts)
      data
    end

    # Get Class
    # Gets Class
    # @param vbasoftware_database [String] Target database
    # @param class_code [String] Class Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClassVBAResponse, Integer, Hash)>] ClassVBAResponse data, response status code and response headers
    def get_class_with_http_info(vbasoftware_database, class_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesApi.get_class ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClassesApi.get_class"
      end
      # verify the required parameter 'class_code' is set
      if @api_client.config.client_side_validation && class_code.nil?
        fail ArgumentError, "Missing the required parameter 'class_code' when calling ClassesApi.get_class"
      end
      # resource path
      local_var_path = '/classes/{classCode}'.sub('{' + 'classCode' + '}', CGI.escape(class_code.to_s))

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
      return_type = opts[:debug_return_type] || 'ClassVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClassesApi.get_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesApi#get_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Class
    # Lists all Class
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClassListVBAResponse]
    def list_class(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_class_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Class
    # Lists all Class
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClassListVBAResponse, Integer, Hash)>] ClassListVBAResponse data, response status code and response headers
    def list_class_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesApi.list_class ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClassesApi.list_class"
      end
      # resource path
      local_var_path = '/classes'

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
      return_type = opts[:debug_return_type] || 'ClassListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClassesApi.list_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesApi#list_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch Class
    # Create or Update multiple Class at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param model_class [Array<ModelClass>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_class(vbasoftware_database, model_class, opts = {})
      data, _status_code, _headers = update_batch_class_with_http_info(vbasoftware_database, model_class, opts)
      data
    end

    # Create or Update Batch Class
    # Create or Update multiple Class at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param model_class [Array<ModelClass>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_class_with_http_info(vbasoftware_database, model_class, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesApi.update_batch_class ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClassesApi.update_batch_class"
      end
      # verify the required parameter 'model_class' is set
      if @api_client.config.client_side_validation && model_class.nil?
        fail ArgumentError, "Missing the required parameter 'model_class' when calling ClassesApi.update_batch_class"
      end
      # resource path
      local_var_path = '/classes-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(model_class)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClassesApi.update_batch_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesApi#update_batch_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Class
    # Updates a specific Class.
    # @param vbasoftware_database [String] Target database
    # @param class_code [String] Class Code
    # @param model_class [ModelClass] 
    # @param [Hash] opts the optional parameters
    # @return [ClassVBAResponse]
    def update_class(vbasoftware_database, class_code, model_class, opts = {})
      data, _status_code, _headers = update_class_with_http_info(vbasoftware_database, class_code, model_class, opts)
      data
    end

    # Update Class
    # Updates a specific Class.
    # @param vbasoftware_database [String] Target database
    # @param class_code [String] Class Code
    # @param model_class [ModelClass] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClassVBAResponse, Integer, Hash)>] ClassVBAResponse data, response status code and response headers
    def update_class_with_http_info(vbasoftware_database, class_code, model_class, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesApi.update_class ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClassesApi.update_class"
      end
      # verify the required parameter 'class_code' is set
      if @api_client.config.client_side_validation && class_code.nil?
        fail ArgumentError, "Missing the required parameter 'class_code' when calling ClassesApi.update_class"
      end
      # verify the required parameter 'model_class' is set
      if @api_client.config.client_side_validation && model_class.nil?
        fail ArgumentError, "Missing the required parameter 'model_class' when calling ClassesApi.update_class"
      end
      # resource path
      local_var_path = '/classes/{classCode}'.sub('{' + 'classCode' + '}', CGI.escape(class_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(model_class)

      # return_type
      return_type = opts[:debug_return_type] || 'ClassVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClassesApi.update_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesApi#update_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
