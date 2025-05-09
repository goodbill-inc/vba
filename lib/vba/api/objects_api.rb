=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ObjectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Functional Areas
    # Gets a list of all Functional Areas
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [FunctionalAreaListVBAResponse]
    def list_functional_areas(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_functional_areas_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Functional Areas
    # Gets a list of all Functional Areas
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(FunctionalAreaListVBAResponse, Integer, Hash)>] FunctionalAreaListVBAResponse data, response status code and response headers
    def list_functional_areas_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectsApi.list_functional_areas ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ObjectsApi.list_functional_areas"
      end
      # resource path
      local_var_path = '/functional-areas'

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
      return_type = opts[:debug_return_type] || 'FunctionalAreaListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ObjectsApi.list_functional_areas",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectsApi#list_functional_areas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Objects
    # Gets a list of Objects with optional Functional Area and Purpose filters.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :functional_area Functional Area filter
    # @option opts [String] :purpose PurposeArea filter
    # @return [ObjectListListVBAResponse]
    def list_objects(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_objects_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Objects
    # Gets a list of Objects with optional Functional Area and Purpose filters.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :functional_area Functional Area filter
    # @option opts [String] :purpose PurposeArea filter
    # @return [Array<(ObjectListListVBAResponse, Integer, Hash)>] ObjectListListVBAResponse data, response status code and response headers
    def list_objects_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectsApi.list_objects ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ObjectsApi.list_objects"
      end
      # resource path
      local_var_path = '/objects'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'functionalArea'] = opts[:'functional_area'] if !opts[:'functional_area'].nil?
      query_params[:'purpose'] = opts[:'purpose'] if !opts[:'purpose'].nil?

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
      return_type = opts[:debug_return_type] || 'ObjectListListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ObjectsApi.list_objects",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectsApi#list_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Purposes
    # Gets a list of all Purposes
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [PurposeListVBAResponse]
    def list_purposes(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_purposes_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Purposes
    # Gets a list of all Purposes
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurposeListVBAResponse, Integer, Hash)>] PurposeListVBAResponse data, response status code and response headers
    def list_purposes_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectsApi.list_purposes ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ObjectsApi.list_purposes"
      end
      # resource path
      local_var_path = '/purposes'

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
      return_type = opts[:debug_return_type] || 'PurposeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ObjectsApi.list_purposes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectsApi#list_purposes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
