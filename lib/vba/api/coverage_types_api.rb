=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CoverageTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CoverageType
    # Creates a new CoverageType
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [CoverageType] 
    # @param [Hash] opts the optional parameters
    # @return [CoverageTypeVBAResponse]
    def create_coverage_type(vbasoftware_database, coverage_type, opts = {})
      data, _status_code, _headers = create_coverage_type_with_http_info(vbasoftware_database, coverage_type, opts)
      data
    end

    # Create CoverageType
    # Creates a new CoverageType
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [CoverageType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CoverageTypeVBAResponse, Integer, Hash)>] CoverageTypeVBAResponse data, response status code and response headers
    def create_coverage_type_with_http_info(vbasoftware_database, coverage_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CoverageTypesApi.create_coverage_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CoverageTypesApi.create_coverage_type"
      end
      # verify the required parameter 'coverage_type' is set
      if @api_client.config.client_side_validation && coverage_type.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_type' when calling CoverageTypesApi.create_coverage_type"
      end
      # resource path
      local_var_path = '/coverage-types'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(coverage_type)

      # return_type
      return_type = opts[:debug_return_type] || 'CoverageTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CoverageTypesApi.create_coverage_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoverageTypesApi#create_coverage_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CoverageType
    # Deletes an CoverageType
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [String] Coverage Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_coverage_type(vbasoftware_database, coverage_type, opts = {})
      delete_coverage_type_with_http_info(vbasoftware_database, coverage_type, opts)
      nil
    end

    # Delete CoverageType
    # Deletes an CoverageType
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [String] Coverage Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_coverage_type_with_http_info(vbasoftware_database, coverage_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CoverageTypesApi.delete_coverage_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CoverageTypesApi.delete_coverage_type"
      end
      # verify the required parameter 'coverage_type' is set
      if @api_client.config.client_side_validation && coverage_type.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_type' when calling CoverageTypesApi.delete_coverage_type"
      end
      # resource path
      local_var_path = '/coverage-types/{coverageType}'.sub('{' + 'coverageType' + '}', CGI.escape(coverage_type.to_s))

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
        :operation => :"CoverageTypesApi.delete_coverage_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoverageTypesApi#delete_coverage_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CoverageType
    # Gets CoverageType
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [String] Coverage Type
    # @param [Hash] opts the optional parameters
    # @return [CoverageTypeVBAResponse]
    def get_coverage_type(vbasoftware_database, coverage_type, opts = {})
      data, _status_code, _headers = get_coverage_type_with_http_info(vbasoftware_database, coverage_type, opts)
      data
    end

    # Get CoverageType
    # Gets CoverageType
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [String] Coverage Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(CoverageTypeVBAResponse, Integer, Hash)>] CoverageTypeVBAResponse data, response status code and response headers
    def get_coverage_type_with_http_info(vbasoftware_database, coverage_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CoverageTypesApi.get_coverage_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CoverageTypesApi.get_coverage_type"
      end
      # verify the required parameter 'coverage_type' is set
      if @api_client.config.client_side_validation && coverage_type.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_type' when calling CoverageTypesApi.get_coverage_type"
      end
      # resource path
      local_var_path = '/coverage-types/{coverageType}'.sub('{' + 'coverageType' + '}', CGI.escape(coverage_type.to_s))

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
      return_type = opts[:debug_return_type] || 'CoverageTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CoverageTypesApi.get_coverage_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoverageTypesApi#get_coverage_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CoverageType
    # Lists all CoverageType 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [CoverageTypeListVBAResponse]
    def list_coverage_type(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_coverage_type_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CoverageType
    # Lists all CoverageType 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(CoverageTypeListVBAResponse, Integer, Hash)>] CoverageTypeListVBAResponse data, response status code and response headers
    def list_coverage_type_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CoverageTypesApi.list_coverage_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CoverageTypesApi.list_coverage_type"
      end
      # resource path
      local_var_path = '/coverage-types'

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
      return_type = opts[:debug_return_type] || 'CoverageTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CoverageTypesApi.list_coverage_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoverageTypesApi#list_coverage_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CoverageType
    # Create or Update multiple CoverageType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [Array<CoverageType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_coverage_type(vbasoftware_database, coverage_type, opts = {})
      data, _status_code, _headers = update_batch_coverage_type_with_http_info(vbasoftware_database, coverage_type, opts)
      data
    end

    # Create or Update Batch CoverageType
    # Create or Update multiple CoverageType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [Array<CoverageType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_coverage_type_with_http_info(vbasoftware_database, coverage_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CoverageTypesApi.update_batch_coverage_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CoverageTypesApi.update_batch_coverage_type"
      end
      # verify the required parameter 'coverage_type' is set
      if @api_client.config.client_side_validation && coverage_type.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_type' when calling CoverageTypesApi.update_batch_coverage_type"
      end
      # resource path
      local_var_path = '/coverage-types-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(coverage_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CoverageTypesApi.update_batch_coverage_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoverageTypesApi#update_batch_coverage_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CoverageType
    # Updates a specific CoverageType.
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [String] Coverage Type
    # @param coverage_type2 [CoverageType] 
    # @param [Hash] opts the optional parameters
    # @return [CoverageTypeVBAResponse]
    def update_coverage_type(vbasoftware_database, coverage_type, coverage_type2, opts = {})
      data, _status_code, _headers = update_coverage_type_with_http_info(vbasoftware_database, coverage_type, coverage_type2, opts)
      data
    end

    # Update CoverageType
    # Updates a specific CoverageType.
    # @param vbasoftware_database [String] Target database
    # @param coverage_type [String] Coverage Type
    # @param coverage_type2 [CoverageType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CoverageTypeVBAResponse, Integer, Hash)>] CoverageTypeVBAResponse data, response status code and response headers
    def update_coverage_type_with_http_info(vbasoftware_database, coverage_type, coverage_type2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CoverageTypesApi.update_coverage_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CoverageTypesApi.update_coverage_type"
      end
      # verify the required parameter 'coverage_type' is set
      if @api_client.config.client_side_validation && coverage_type.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_type' when calling CoverageTypesApi.update_coverage_type"
      end
      # verify the required parameter 'coverage_type2' is set
      if @api_client.config.client_side_validation && coverage_type2.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_type2' when calling CoverageTypesApi.update_coverage_type"
      end
      # resource path
      local_var_path = '/coverage-types/{coverageType}'.sub('{' + 'coverageType' + '}', CGI.escape(coverage_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(coverage_type2)

      # return_type
      return_type = opts[:debug_return_type] || 'CoverageTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CoverageTypesApi.update_coverage_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoverageTypesApi#update_coverage_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
