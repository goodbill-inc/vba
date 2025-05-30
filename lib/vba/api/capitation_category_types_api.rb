=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CapitationCategoryTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CapitationCategoryType
    # Creates a new CapitationCategoryType
    # @param vbasoftware_database [String] Target database
    # @param capitation_category [String] Capitation Category
    # @param capitation_type [String] Capitation Type
    # @param [Hash] opts the optional parameters
    # @return [CapitationCategoryTypeVBAResponse]
    def create_capitation_category_type(vbasoftware_database, capitation_category, capitation_type, opts = {})
      data, _status_code, _headers = create_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type, opts)
      data
    end

    # Create CapitationCategoryType
    # Creates a new CapitationCategoryType
    # @param vbasoftware_database [String] Target database
    # @param capitation_category [String] Capitation Category
    # @param capitation_type [String] Capitation Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(CapitationCategoryTypeVBAResponse, Integer, Hash)>] CapitationCategoryTypeVBAResponse data, response status code and response headers
    def create_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationCategoryTypesApi.create_capitation_category_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationCategoryTypesApi.create_capitation_category_type"
      end
      # verify the required parameter 'capitation_category' is set
      if @api_client.config.client_side_validation && capitation_category.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_category' when calling CapitationCategoryTypesApi.create_capitation_category_type"
      end
      # verify the required parameter 'capitation_type' is set
      if @api_client.config.client_side_validation && capitation_type.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_type' when calling CapitationCategoryTypesApi.create_capitation_category_type"
      end
      # resource path
      local_var_path = '/capitation-categories/{capitationCategory}/capitation-types/{capitationType}'.sub('{' + 'capitationCategory' + '}', CGI.escape(capitation_category.to_s)).sub('{' + 'capitationType' + '}', CGI.escape(capitation_type.to_s))

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
      return_type = opts[:debug_return_type] || 'CapitationCategoryTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CapitationCategoryTypesApi.create_capitation_category_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationCategoryTypesApi#create_capitation_category_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CapitationCategoryType
    # Deletes an CapitationCategoryType
    # @param vbasoftware_database [String] Target database
    # @param capitation_category [String] Capitation Category
    # @param capitation_type [String] Capitation Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_capitation_category_type(vbasoftware_database, capitation_category, capitation_type, opts = {})
      delete_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type, opts)
      nil
    end

    # Delete CapitationCategoryType
    # Deletes an CapitationCategoryType
    # @param vbasoftware_database [String] Target database
    # @param capitation_category [String] Capitation Category
    # @param capitation_type [String] Capitation Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationCategoryTypesApi.delete_capitation_category_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationCategoryTypesApi.delete_capitation_category_type"
      end
      # verify the required parameter 'capitation_category' is set
      if @api_client.config.client_side_validation && capitation_category.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_category' when calling CapitationCategoryTypesApi.delete_capitation_category_type"
      end
      # verify the required parameter 'capitation_type' is set
      if @api_client.config.client_side_validation && capitation_type.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_type' when calling CapitationCategoryTypesApi.delete_capitation_category_type"
      end
      # resource path
      local_var_path = '/capitation-categories/{capitationCategory}/capitation-types/{capitationType}'.sub('{' + 'capitationCategory' + '}', CGI.escape(capitation_category.to_s)).sub('{' + 'capitationType' + '}', CGI.escape(capitation_type.to_s))

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
        :operation => :"CapitationCategoryTypesApi.delete_capitation_category_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationCategoryTypesApi#delete_capitation_category_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CapitationCategoryType
    # Gets CapitationCategoryType
    # @param vbasoftware_database [String] Target database
    # @param capitation_category [String] Capitation Category
    # @param capitation_type [String] Capitation Type
    # @param [Hash] opts the optional parameters
    # @return [CapitationCategoryTypeVBAResponse]
    def get_capitation_category_type(vbasoftware_database, capitation_category, capitation_type, opts = {})
      data, _status_code, _headers = get_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type, opts)
      data
    end

    # Get CapitationCategoryType
    # Gets CapitationCategoryType
    # @param vbasoftware_database [String] Target database
    # @param capitation_category [String] Capitation Category
    # @param capitation_type [String] Capitation Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(CapitationCategoryTypeVBAResponse, Integer, Hash)>] CapitationCategoryTypeVBAResponse data, response status code and response headers
    def get_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationCategoryTypesApi.get_capitation_category_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationCategoryTypesApi.get_capitation_category_type"
      end
      # verify the required parameter 'capitation_category' is set
      if @api_client.config.client_side_validation && capitation_category.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_category' when calling CapitationCategoryTypesApi.get_capitation_category_type"
      end
      # verify the required parameter 'capitation_type' is set
      if @api_client.config.client_side_validation && capitation_type.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_type' when calling CapitationCategoryTypesApi.get_capitation_category_type"
      end
      # resource path
      local_var_path = '/capitation-categories/{capitationCategory}/capitation-types/{capitationType}'.sub('{' + 'capitationCategory' + '}', CGI.escape(capitation_category.to_s)).sub('{' + 'capitationType' + '}', CGI.escape(capitation_type.to_s))

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
      return_type = opts[:debug_return_type] || 'CapitationCategoryTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CapitationCategoryTypesApi.get_capitation_category_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationCategoryTypesApi#get_capitation_category_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CapitationCategoryType
    # Lists all CapitationCategoryType for the given capitationCategory
    # @param vbasoftware_database [String] Target database
    # @param capitation_category [String] Capitation Category
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CapitationCategoryTypeListVBAResponse]
    def list_capitation_category_type(vbasoftware_database, capitation_category, opts = {})
      data, _status_code, _headers = list_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, opts)
      data
    end

    # List CapitationCategoryType
    # Lists all CapitationCategoryType for the given capitationCategory
    # @param vbasoftware_database [String] Target database
    # @param capitation_category [String] Capitation Category
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CapitationCategoryTypeListVBAResponse, Integer, Hash)>] CapitationCategoryTypeListVBAResponse data, response status code and response headers
    def list_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationCategoryTypesApi.list_capitation_category_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationCategoryTypesApi.list_capitation_category_type"
      end
      # verify the required parameter 'capitation_category' is set
      if @api_client.config.client_side_validation && capitation_category.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_category' when calling CapitationCategoryTypesApi.list_capitation_category_type"
      end
      # resource path
      local_var_path = '/capitation-categories/{capitationCategory}/capitation-types'.sub('{' + 'capitationCategory' + '}', CGI.escape(capitation_category.to_s))

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
      return_type = opts[:debug_return_type] || 'CapitationCategoryTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CapitationCategoryTypesApi.list_capitation_category_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationCategoryTypesApi#list_capitation_category_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
