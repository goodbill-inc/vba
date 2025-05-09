=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProcedureCategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ProcedureCategory
    # Creates a new ProcedureCategory
    # @param vbasoftware_database [String] Target database
    # @param procedure_category [ProcedureCategory] 
    # @param [Hash] opts the optional parameters
    # @return [ProcedureCategoryVBAResponse]
    def create_procedure_category(vbasoftware_database, procedure_category, opts = {})
      data, _status_code, _headers = create_procedure_category_with_http_info(vbasoftware_database, procedure_category, opts)
      data
    end

    # Create ProcedureCategory
    # Creates a new ProcedureCategory
    # @param vbasoftware_database [String] Target database
    # @param procedure_category [ProcedureCategory] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProcedureCategoryVBAResponse, Integer, Hash)>] ProcedureCategoryVBAResponse data, response status code and response headers
    def create_procedure_category_with_http_info(vbasoftware_database, procedure_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcedureCategoriesApi.create_procedure_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProcedureCategoriesApi.create_procedure_category"
      end
      # verify the required parameter 'procedure_category' is set
      if @api_client.config.client_side_validation && procedure_category.nil?
        fail ArgumentError, "Missing the required parameter 'procedure_category' when calling ProcedureCategoriesApi.create_procedure_category"
      end
      # resource path
      local_var_path = '/procedure-categories'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(procedure_category)

      # return_type
      return_type = opts[:debug_return_type] || 'ProcedureCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProcedureCategoriesApi.create_procedure_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcedureCategoriesApi#create_procedure_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ProcedureCategory
    # Deletes an ProcedureCategory
    # @param vbasoftware_database [String] Target database
    # @param category_id [String] Category ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_procedure_category(vbasoftware_database, category_id, opts = {})
      delete_procedure_category_with_http_info(vbasoftware_database, category_id, opts)
      nil
    end

    # Delete ProcedureCategory
    # Deletes an ProcedureCategory
    # @param vbasoftware_database [String] Target database
    # @param category_id [String] Category ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_procedure_category_with_http_info(vbasoftware_database, category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcedureCategoriesApi.delete_procedure_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProcedureCategoriesApi.delete_procedure_category"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling ProcedureCategoriesApi.delete_procedure_category"
      end
      # resource path
      local_var_path = '/procedure-categories/{categoryID}'.sub('{' + 'categoryID' + '}', CGI.escape(category_id.to_s))

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
        :operation => :"ProcedureCategoriesApi.delete_procedure_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcedureCategoriesApi#delete_procedure_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ProcedureCategory
    # Gets ProcedureCategory
    # @param vbasoftware_database [String] Target database
    # @param category_id [String] Category ID
    # @param [Hash] opts the optional parameters
    # @return [ProcedureCategoryVBAResponse]
    def get_procedure_category(vbasoftware_database, category_id, opts = {})
      data, _status_code, _headers = get_procedure_category_with_http_info(vbasoftware_database, category_id, opts)
      data
    end

    # Get ProcedureCategory
    # Gets ProcedureCategory
    # @param vbasoftware_database [String] Target database
    # @param category_id [String] Category ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProcedureCategoryVBAResponse, Integer, Hash)>] ProcedureCategoryVBAResponse data, response status code and response headers
    def get_procedure_category_with_http_info(vbasoftware_database, category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcedureCategoriesApi.get_procedure_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProcedureCategoriesApi.get_procedure_category"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling ProcedureCategoriesApi.get_procedure_category"
      end
      # resource path
      local_var_path = '/procedure-categories/{categoryID}'.sub('{' + 'categoryID' + '}', CGI.escape(category_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProcedureCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProcedureCategoriesApi.get_procedure_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcedureCategoriesApi#get_procedure_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ProcedureCategory
    # Lists all ProcedureCategory given a specific 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [ProcedureCategoryListVBAResponse]
    def list_procedure_category(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_procedure_category_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ProcedureCategory
    # Lists all ProcedureCategory given a specific 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProcedureCategoryListVBAResponse, Integer, Hash)>] ProcedureCategoryListVBAResponse data, response status code and response headers
    def list_procedure_category_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcedureCategoriesApi.list_procedure_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProcedureCategoriesApi.list_procedure_category"
      end
      # resource path
      local_var_path = '/procedure-categories'

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
      return_type = opts[:debug_return_type] || 'ProcedureCategoryListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProcedureCategoriesApi.list_procedure_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcedureCategoriesApi#list_procedure_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ProcedureCategory
    # Create or Update multiple ProcedureCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param procedure_category [Array<ProcedureCategory>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_procedure_category(vbasoftware_database, procedure_category, opts = {})
      data, _status_code, _headers = update_batch_procedure_category_with_http_info(vbasoftware_database, procedure_category, opts)
      data
    end

    # Create or Update Batch ProcedureCategory
    # Create or Update multiple ProcedureCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param procedure_category [Array<ProcedureCategory>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_procedure_category_with_http_info(vbasoftware_database, procedure_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcedureCategoriesApi.update_batch_procedure_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProcedureCategoriesApi.update_batch_procedure_category"
      end
      # verify the required parameter 'procedure_category' is set
      if @api_client.config.client_side_validation && procedure_category.nil?
        fail ArgumentError, "Missing the required parameter 'procedure_category' when calling ProcedureCategoriesApi.update_batch_procedure_category"
      end
      # resource path
      local_var_path = '/procedure-categories-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(procedure_category)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProcedureCategoriesApi.update_batch_procedure_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcedureCategoriesApi#update_batch_procedure_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ProcedureCategory
    # Updates a specific ProcedureCategory.
    # @param vbasoftware_database [String] Target database
    # @param category_id [String] Category ID
    # @param procedure_category [ProcedureCategory] 
    # @param [Hash] opts the optional parameters
    # @return [ProcedureCategoryVBAResponse]
    def update_procedure_category(vbasoftware_database, category_id, procedure_category, opts = {})
      data, _status_code, _headers = update_procedure_category_with_http_info(vbasoftware_database, category_id, procedure_category, opts)
      data
    end

    # Update ProcedureCategory
    # Updates a specific ProcedureCategory.
    # @param vbasoftware_database [String] Target database
    # @param category_id [String] Category ID
    # @param procedure_category [ProcedureCategory] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProcedureCategoryVBAResponse, Integer, Hash)>] ProcedureCategoryVBAResponse data, response status code and response headers
    def update_procedure_category_with_http_info(vbasoftware_database, category_id, procedure_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcedureCategoriesApi.update_procedure_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProcedureCategoriesApi.update_procedure_category"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling ProcedureCategoriesApi.update_procedure_category"
      end
      # verify the required parameter 'procedure_category' is set
      if @api_client.config.client_side_validation && procedure_category.nil?
        fail ArgumentError, "Missing the required parameter 'procedure_category' when calling ProcedureCategoriesApi.update_procedure_category"
      end
      # resource path
      local_var_path = '/procedure-categories/{categoryID}'.sub('{' + 'categoryID' + '}', CGI.escape(category_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(procedure_category)

      # return_type
      return_type = opts[:debug_return_type] || 'ProcedureCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProcedureCategoriesApi.update_procedure_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcedureCategoriesApi#update_procedure_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
