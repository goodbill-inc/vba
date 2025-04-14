=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ExplainationCodeCategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ExplanationCodeCategory
    # Creates a new ExplanationCodeCategory
    # @param vbasoftware_database [String] Target database
    # @param explanation_code_category [ExplanationCodeCategory] 
    # @param [Hash] opts the optional parameters
    # @return [ExplanationCodeCategoryVBAResponse]
    def create_explanation_code_category(vbasoftware_database, explanation_code_category, opts = {})
      data, _status_code, _headers = create_explanation_code_category_with_http_info(vbasoftware_database, explanation_code_category, opts)
      data
    end

    # Create ExplanationCodeCategory
    # Creates a new ExplanationCodeCategory
    # @param vbasoftware_database [String] Target database
    # @param explanation_code_category [ExplanationCodeCategory] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExplanationCodeCategoryVBAResponse, Integer, Hash)>] ExplanationCodeCategoryVBAResponse data, response status code and response headers
    def create_explanation_code_category_with_http_info(vbasoftware_database, explanation_code_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplainationCodeCategoriesApi.create_explanation_code_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplainationCodeCategoriesApi.create_explanation_code_category"
      end
      # verify the required parameter 'explanation_code_category' is set
      if @api_client.config.client_side_validation && explanation_code_category.nil?
        fail ArgumentError, "Missing the required parameter 'explanation_code_category' when calling ExplainationCodeCategoriesApi.create_explanation_code_category"
      end
      # resource path
      local_var_path = '/explaination-code-categories'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(explanation_code_category)

      # return_type
      return_type = opts[:debug_return_type] || 'ExplanationCodeCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplainationCodeCategoriesApi.create_explanation_code_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplainationCodeCategoriesApi#create_explanation_code_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ExplanationCodeCategory
    # Deletes an ExplanationCodeCategory
    # @param vbasoftware_database [String] Target database
    # @param category [String] Category
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_explanation_code_category(vbasoftware_database, category, opts = {})
      delete_explanation_code_category_with_http_info(vbasoftware_database, category, opts)
      nil
    end

    # Delete ExplanationCodeCategory
    # Deletes an ExplanationCodeCategory
    # @param vbasoftware_database [String] Target database
    # @param category [String] Category
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_explanation_code_category_with_http_info(vbasoftware_database, category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplainationCodeCategoriesApi.delete_explanation_code_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplainationCodeCategoriesApi.delete_explanation_code_category"
      end
      # verify the required parameter 'category' is set
      if @api_client.config.client_side_validation && category.nil?
        fail ArgumentError, "Missing the required parameter 'category' when calling ExplainationCodeCategoriesApi.delete_explanation_code_category"
      end
      # resource path
      local_var_path = '/explaination-code-categories/{category}'.sub('{' + 'category' + '}', CGI.escape(category.to_s))

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
        :operation => :"ExplainationCodeCategoriesApi.delete_explanation_code_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplainationCodeCategoriesApi#delete_explanation_code_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ExplanationCodeCategory
    # Gets ExplanationCodeCategory
    # @param vbasoftware_database [String] Target database
    # @param category [String] Category
    # @param [Hash] opts the optional parameters
    # @return [ExplanationCodeCategoryVBAResponse]
    def get_explanation_code_category(vbasoftware_database, category, opts = {})
      data, _status_code, _headers = get_explanation_code_category_with_http_info(vbasoftware_database, category, opts)
      data
    end

    # Get ExplanationCodeCategory
    # Gets ExplanationCodeCategory
    # @param vbasoftware_database [String] Target database
    # @param category [String] Category
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExplanationCodeCategoryVBAResponse, Integer, Hash)>] ExplanationCodeCategoryVBAResponse data, response status code and response headers
    def get_explanation_code_category_with_http_info(vbasoftware_database, category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplainationCodeCategoriesApi.get_explanation_code_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplainationCodeCategoriesApi.get_explanation_code_category"
      end
      # verify the required parameter 'category' is set
      if @api_client.config.client_side_validation && category.nil?
        fail ArgumentError, "Missing the required parameter 'category' when calling ExplainationCodeCategoriesApi.get_explanation_code_category"
      end
      # resource path
      local_var_path = '/explaination-code-categories/{category}'.sub('{' + 'category' + '}', CGI.escape(category.to_s))

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
      return_type = opts[:debug_return_type] || 'ExplanationCodeCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplainationCodeCategoriesApi.get_explanation_code_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplainationCodeCategoriesApi#get_explanation_code_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ExplanationCodeCategory
    # Lists all ExplanationCodeCategory
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ExplanationCodeCategoryListVBAResponse]
    def list_explanation_code_category(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_explanation_code_category_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ExplanationCodeCategory
    # Lists all ExplanationCodeCategory
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ExplanationCodeCategoryListVBAResponse, Integer, Hash)>] ExplanationCodeCategoryListVBAResponse data, response status code and response headers
    def list_explanation_code_category_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplainationCodeCategoriesApi.list_explanation_code_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplainationCodeCategoriesApi.list_explanation_code_category"
      end
      # resource path
      local_var_path = '/explaination-code-categories'

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
      return_type = opts[:debug_return_type] || 'ExplanationCodeCategoryListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplainationCodeCategoriesApi.list_explanation_code_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplainationCodeCategoriesApi#list_explanation_code_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ExplanationCodeCategory
    # Create or Update multiple ExplanationCodeCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param explanation_code_category [Array<ExplanationCodeCategory>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_explanation_code_category(vbasoftware_database, explanation_code_category, opts = {})
      data, _status_code, _headers = update_batch_explanation_code_category_with_http_info(vbasoftware_database, explanation_code_category, opts)
      data
    end

    # Create or Update Batch ExplanationCodeCategory
    # Create or Update multiple ExplanationCodeCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param explanation_code_category [Array<ExplanationCodeCategory>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_explanation_code_category_with_http_info(vbasoftware_database, explanation_code_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplainationCodeCategoriesApi.update_batch_explanation_code_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplainationCodeCategoriesApi.update_batch_explanation_code_category"
      end
      # verify the required parameter 'explanation_code_category' is set
      if @api_client.config.client_side_validation && explanation_code_category.nil?
        fail ArgumentError, "Missing the required parameter 'explanation_code_category' when calling ExplainationCodeCategoriesApi.update_batch_explanation_code_category"
      end
      # resource path
      local_var_path = '/explaination-code-categories-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(explanation_code_category)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplainationCodeCategoriesApi.update_batch_explanation_code_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplainationCodeCategoriesApi#update_batch_explanation_code_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ExplanationCodeCategory
    # Updates a specific ExplanationCodeCategory.
    # @param vbasoftware_database [String] Target database
    # @param category [String] Category
    # @param explanation_code_category [ExplanationCodeCategory] 
    # @param [Hash] opts the optional parameters
    # @return [ExplanationCodeCategoryVBAResponse]
    def update_explanation_code_category(vbasoftware_database, category, explanation_code_category, opts = {})
      data, _status_code, _headers = update_explanation_code_category_with_http_info(vbasoftware_database, category, explanation_code_category, opts)
      data
    end

    # Update ExplanationCodeCategory
    # Updates a specific ExplanationCodeCategory.
    # @param vbasoftware_database [String] Target database
    # @param category [String] Category
    # @param explanation_code_category [ExplanationCodeCategory] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExplanationCodeCategoryVBAResponse, Integer, Hash)>] ExplanationCodeCategoryVBAResponse data, response status code and response headers
    def update_explanation_code_category_with_http_info(vbasoftware_database, category, explanation_code_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplainationCodeCategoriesApi.update_explanation_code_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplainationCodeCategoriesApi.update_explanation_code_category"
      end
      # verify the required parameter 'category' is set
      if @api_client.config.client_side_validation && category.nil?
        fail ArgumentError, "Missing the required parameter 'category' when calling ExplainationCodeCategoriesApi.update_explanation_code_category"
      end
      # verify the required parameter 'explanation_code_category' is set
      if @api_client.config.client_side_validation && explanation_code_category.nil?
        fail ArgumentError, "Missing the required parameter 'explanation_code_category' when calling ExplainationCodeCategoriesApi.update_explanation_code_category"
      end
      # resource path
      local_var_path = '/explaination-code-categories/{category}'.sub('{' + 'category' + '}', CGI.escape(category.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(explanation_code_category)

      # return_type
      return_type = opts[:debug_return_type] || 'ExplanationCodeCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplainationCodeCategoriesApi.update_explanation_code_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplainationCodeCategoriesApi#update_explanation_code_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
