=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CareManagerCareTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CareManagerCareType
    # Creates a new CareManagerCareType
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param care_manager_care_type [CareManagerCareType] 
    # @param [Hash] opts the optional parameters
    # @return [CareManagerCareTypeVBAResponse]
    def create_care_manager_care_type(vbasoftware_database, care_manager_key, care_manager_care_type, opts = {})
      data, _status_code, _headers = create_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_type, opts)
      data
    end

    # Create CareManagerCareType
    # Creates a new CareManagerCareType
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param care_manager_care_type [CareManagerCareType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareManagerCareTypeVBAResponse, Integer, Hash)>] CareManagerCareTypeVBAResponse data, response status code and response headers
    def create_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareManagerCareTypesApi.create_care_manager_care_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareManagerCareTypesApi.create_care_manager_care_type"
      end
      # verify the required parameter 'care_manager_key' is set
      if @api_client.config.client_side_validation && care_manager_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_manager_key' when calling CareManagerCareTypesApi.create_care_manager_care_type"
      end
      # verify the required parameter 'care_manager_care_type' is set
      if @api_client.config.client_side_validation && care_manager_care_type.nil?
        fail ArgumentError, "Missing the required parameter 'care_manager_care_type' when calling CareManagerCareTypesApi.create_care_manager_care_type"
      end
      # resource path
      local_var_path = '/care-managers/{careManagerKey}/care-types'.sub('{' + 'careManagerKey' + '}', CGI.escape(care_manager_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_manager_care_type)

      # return_type
      return_type = opts[:debug_return_type] || 'CareManagerCareTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareManagerCareTypesApi.create_care_manager_care_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareManagerCareTypesApi#create_care_manager_care_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CareManagerCareType
    # Deletes an CareManagerCareType
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param care_type [String] Care Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_care_manager_care_type(vbasoftware_database, care_manager_key, care_type, opts = {})
      delete_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_type, opts)
      nil
    end

    # Delete CareManagerCareType
    # Deletes an CareManagerCareType
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param care_type [String] Care Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareManagerCareTypesApi.delete_care_manager_care_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareManagerCareTypesApi.delete_care_manager_care_type"
      end
      # verify the required parameter 'care_manager_key' is set
      if @api_client.config.client_side_validation && care_manager_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_manager_key' when calling CareManagerCareTypesApi.delete_care_manager_care_type"
      end
      # verify the required parameter 'care_type' is set
      if @api_client.config.client_side_validation && care_type.nil?
        fail ArgumentError, "Missing the required parameter 'care_type' when calling CareManagerCareTypesApi.delete_care_manager_care_type"
      end
      # resource path
      local_var_path = '/care-managers/{careManagerKey}/care-types/{careType}'.sub('{' + 'careManagerKey' + '}', CGI.escape(care_manager_key.to_s)).sub('{' + 'careType' + '}', CGI.escape(care_type.to_s))

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
        :operation => :"CareManagerCareTypesApi.delete_care_manager_care_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareManagerCareTypesApi#delete_care_manager_care_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CareManagerCareType
    # Gets CareManagerCareType
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param care_type [String] Care Type
    # @param [Hash] opts the optional parameters
    # @return [CareManagerCareTypeVBAResponse]
    def get_care_manager_care_type(vbasoftware_database, care_manager_key, care_type, opts = {})
      data, _status_code, _headers = get_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_type, opts)
      data
    end

    # Get CareManagerCareType
    # Gets CareManagerCareType
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param care_type [String] Care Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareManagerCareTypeVBAResponse, Integer, Hash)>] CareManagerCareTypeVBAResponse data, response status code and response headers
    def get_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareManagerCareTypesApi.get_care_manager_care_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareManagerCareTypesApi.get_care_manager_care_type"
      end
      # verify the required parameter 'care_manager_key' is set
      if @api_client.config.client_side_validation && care_manager_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_manager_key' when calling CareManagerCareTypesApi.get_care_manager_care_type"
      end
      # verify the required parameter 'care_type' is set
      if @api_client.config.client_side_validation && care_type.nil?
        fail ArgumentError, "Missing the required parameter 'care_type' when calling CareManagerCareTypesApi.get_care_manager_care_type"
      end
      # resource path
      local_var_path = '/care-managers/{careManagerKey}/care-types/{careType}'.sub('{' + 'careManagerKey' + '}', CGI.escape(care_manager_key.to_s)).sub('{' + 'careType' + '}', CGI.escape(care_type.to_s))

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
      return_type = opts[:debug_return_type] || 'CareManagerCareTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareManagerCareTypesApi.get_care_manager_care_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareManagerCareTypesApi#get_care_manager_care_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CareManagerCareType
    # Lists all CareManagerCareType for the given careManagerKey
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CareManagerCareTypeListVBAResponse]
    def list_care_manager_care_type(vbasoftware_database, care_manager_key, opts = {})
      data, _status_code, _headers = list_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, opts)
      data
    end

    # List CareManagerCareType
    # Lists all CareManagerCareType for the given careManagerKey
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CareManagerCareTypeListVBAResponse, Integer, Hash)>] CareManagerCareTypeListVBAResponse data, response status code and response headers
    def list_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareManagerCareTypesApi.list_care_manager_care_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareManagerCareTypesApi.list_care_manager_care_type"
      end
      # verify the required parameter 'care_manager_key' is set
      if @api_client.config.client_side_validation && care_manager_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_manager_key' when calling CareManagerCareTypesApi.list_care_manager_care_type"
      end
      # resource path
      local_var_path = '/care-managers/{careManagerKey}/care-types'.sub('{' + 'careManagerKey' + '}', CGI.escape(care_manager_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CareManagerCareTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareManagerCareTypesApi.list_care_manager_care_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareManagerCareTypesApi#list_care_manager_care_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CareManagerCareType
    # Create or Update multiple CareManagerCareType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param care_manager_care_type [Array<CareManagerCareType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_care_manager_care_type(vbasoftware_database, care_manager_key, care_manager_care_type, opts = {})
      data, _status_code, _headers = update_batch_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_type, opts)
      data
    end

    # Create or Update Batch CareManagerCareType
    # Create or Update multiple CareManagerCareType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_manager_key [Integer] CareManager Key
    # @param care_manager_care_type [Array<CareManagerCareType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareManagerCareTypesApi.update_batch_care_manager_care_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareManagerCareTypesApi.update_batch_care_manager_care_type"
      end
      # verify the required parameter 'care_manager_key' is set
      if @api_client.config.client_side_validation && care_manager_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_manager_key' when calling CareManagerCareTypesApi.update_batch_care_manager_care_type"
      end
      # verify the required parameter 'care_manager_care_type' is set
      if @api_client.config.client_side_validation && care_manager_care_type.nil?
        fail ArgumentError, "Missing the required parameter 'care_manager_care_type' when calling CareManagerCareTypesApi.update_batch_care_manager_care_type"
      end
      # resource path
      local_var_path = '/care-managers/{careManagerKey}/care-types-batch'.sub('{' + 'careManagerKey' + '}', CGI.escape(care_manager_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_manager_care_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareManagerCareTypesApi.update_batch_care_manager_care_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareManagerCareTypesApi#update_batch_care_manager_care_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
