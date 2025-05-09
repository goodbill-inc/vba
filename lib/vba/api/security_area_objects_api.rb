=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class SecurityAreaObjectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create SecurityAreaObject
    # Creates a new SecurityAreaObject
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param security_area_object [SecurityAreaObject] 
    # @param [Hash] opts the optional parameters
    # @return [SecurityAreaObjectVBAResponse]
    def create_security_area_object(vbasoftware_database, security_area, security_area_object, opts = {})
      data, _status_code, _headers = create_security_area_object_with_http_info(vbasoftware_database, security_area, security_area_object, opts)
      data
    end

    # Create SecurityAreaObject
    # Creates a new SecurityAreaObject
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param security_area_object [SecurityAreaObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecurityAreaObjectVBAResponse, Integer, Hash)>] SecurityAreaObjectVBAResponse data, response status code and response headers
    def create_security_area_object_with_http_info(vbasoftware_database, security_area, security_area_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityAreaObjectsApi.create_security_area_object ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SecurityAreaObjectsApi.create_security_area_object"
      end
      # verify the required parameter 'security_area' is set
      if @api_client.config.client_side_validation && security_area.nil?
        fail ArgumentError, "Missing the required parameter 'security_area' when calling SecurityAreaObjectsApi.create_security_area_object"
      end
      # verify the required parameter 'security_area_object' is set
      if @api_client.config.client_side_validation && security_area_object.nil?
        fail ArgumentError, "Missing the required parameter 'security_area_object' when calling SecurityAreaObjectsApi.create_security_area_object"
      end
      # resource path
      local_var_path = '/security-areas/{securityArea}/objects'.sub('{' + 'securityArea' + '}', CGI.escape(security_area.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(security_area_object)

      # return_type
      return_type = opts[:debug_return_type] || 'SecurityAreaObjectVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SecurityAreaObjectsApi.create_security_area_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityAreaObjectsApi#create_security_area_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete SecurityAreaObject
    # Deletes an SecurityAreaObject
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param object_name [String] Object Name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_security_area_object(vbasoftware_database, security_area, object_name, opts = {})
      delete_security_area_object_with_http_info(vbasoftware_database, security_area, object_name, opts)
      nil
    end

    # Delete SecurityAreaObject
    # Deletes an SecurityAreaObject
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param object_name [String] Object Name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_security_area_object_with_http_info(vbasoftware_database, security_area, object_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityAreaObjectsApi.delete_security_area_object ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SecurityAreaObjectsApi.delete_security_area_object"
      end
      # verify the required parameter 'security_area' is set
      if @api_client.config.client_side_validation && security_area.nil?
        fail ArgumentError, "Missing the required parameter 'security_area' when calling SecurityAreaObjectsApi.delete_security_area_object"
      end
      # verify the required parameter 'object_name' is set
      if @api_client.config.client_side_validation && object_name.nil?
        fail ArgumentError, "Missing the required parameter 'object_name' when calling SecurityAreaObjectsApi.delete_security_area_object"
      end
      # resource path
      local_var_path = '/security-areas/{securityArea}/objects/{objectName}'.sub('{' + 'securityArea' + '}', CGI.escape(security_area.to_s)).sub('{' + 'objectName' + '}', CGI.escape(object_name.to_s))

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
        :operation => :"SecurityAreaObjectsApi.delete_security_area_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityAreaObjectsApi#delete_security_area_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get SecurityAreaObject
    # Gets SecurityAreaObject
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param object_name [String] Object Name
    # @param [Hash] opts the optional parameters
    # @return [SecurityAreaObjectVBAResponse]
    def get_security_area_object(vbasoftware_database, security_area, object_name, opts = {})
      data, _status_code, _headers = get_security_area_object_with_http_info(vbasoftware_database, security_area, object_name, opts)
      data
    end

    # Get SecurityAreaObject
    # Gets SecurityAreaObject
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param object_name [String] Object Name
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecurityAreaObjectVBAResponse, Integer, Hash)>] SecurityAreaObjectVBAResponse data, response status code and response headers
    def get_security_area_object_with_http_info(vbasoftware_database, security_area, object_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityAreaObjectsApi.get_security_area_object ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SecurityAreaObjectsApi.get_security_area_object"
      end
      # verify the required parameter 'security_area' is set
      if @api_client.config.client_side_validation && security_area.nil?
        fail ArgumentError, "Missing the required parameter 'security_area' when calling SecurityAreaObjectsApi.get_security_area_object"
      end
      # verify the required parameter 'object_name' is set
      if @api_client.config.client_side_validation && object_name.nil?
        fail ArgumentError, "Missing the required parameter 'object_name' when calling SecurityAreaObjectsApi.get_security_area_object"
      end
      # resource path
      local_var_path = '/security-areas/{securityArea}/objects/{objectName}'.sub('{' + 'securityArea' + '}', CGI.escape(security_area.to_s)).sub('{' + 'objectName' + '}', CGI.escape(object_name.to_s))

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
      return_type = opts[:debug_return_type] || 'SecurityAreaObjectVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SecurityAreaObjectsApi.get_security_area_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityAreaObjectsApi#get_security_area_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List SecurityAreaObject
    # Lists all SecurityAreaObject securityArea
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param [Hash] opts the optional parameters
    # @return [SecurityAreaObjectListVBAResponse]
    def list_security_area_object(vbasoftware_database, security_area, opts = {})
      data, _status_code, _headers = list_security_area_object_with_http_info(vbasoftware_database, security_area, opts)
      data
    end

    # List SecurityAreaObject
    # Lists all SecurityAreaObject securityArea
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecurityAreaObjectListVBAResponse, Integer, Hash)>] SecurityAreaObjectListVBAResponse data, response status code and response headers
    def list_security_area_object_with_http_info(vbasoftware_database, security_area, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityAreaObjectsApi.list_security_area_object ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SecurityAreaObjectsApi.list_security_area_object"
      end
      # verify the required parameter 'security_area' is set
      if @api_client.config.client_side_validation && security_area.nil?
        fail ArgumentError, "Missing the required parameter 'security_area' when calling SecurityAreaObjectsApi.list_security_area_object"
      end
      # resource path
      local_var_path = '/security-areas/{securityArea}/objects'.sub('{' + 'securityArea' + '}', CGI.escape(security_area.to_s))

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
      return_type = opts[:debug_return_type] || 'SecurityAreaObjectListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SecurityAreaObjectsApi.list_security_area_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityAreaObjectsApi#list_security_area_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch SecurityAreaObject
    # Create or Update multiple SecurityAreaObject at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param security_area_object [Array<SecurityAreaObject>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_security_area_object(vbasoftware_database, security_area, security_area_object, opts = {})
      data, _status_code, _headers = update_batch_security_area_object_with_http_info(vbasoftware_database, security_area, security_area_object, opts)
      data
    end

    # Create or Update Batch SecurityAreaObject
    # Create or Update multiple SecurityAreaObject at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param security_area_object [Array<SecurityAreaObject>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_security_area_object_with_http_info(vbasoftware_database, security_area, security_area_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityAreaObjectsApi.update_batch_security_area_object ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SecurityAreaObjectsApi.update_batch_security_area_object"
      end
      # verify the required parameter 'security_area' is set
      if @api_client.config.client_side_validation && security_area.nil?
        fail ArgumentError, "Missing the required parameter 'security_area' when calling SecurityAreaObjectsApi.update_batch_security_area_object"
      end
      # verify the required parameter 'security_area_object' is set
      if @api_client.config.client_side_validation && security_area_object.nil?
        fail ArgumentError, "Missing the required parameter 'security_area_object' when calling SecurityAreaObjectsApi.update_batch_security_area_object"
      end
      # resource path
      local_var_path = '/security-areas/{securityArea}/objects'.sub('{' + 'securityArea' + '}', CGI.escape(security_area.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(security_area_object)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SecurityAreaObjectsApi.update_batch_security_area_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityAreaObjectsApi#update_batch_security_area_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update SecurityAreaObject
    # Updates a specific SecurityAreaObject.
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param object_name [String] Object Name
    # @param security_area_object [SecurityAreaObject] 
    # @param [Hash] opts the optional parameters
    # @return [SecurityAreaObjectVBAResponse]
    def update_security_area_object(vbasoftware_database, security_area, object_name, security_area_object, opts = {})
      data, _status_code, _headers = update_security_area_object_with_http_info(vbasoftware_database, security_area, object_name, security_area_object, opts)
      data
    end

    # Update SecurityAreaObject
    # Updates a specific SecurityAreaObject.
    # @param vbasoftware_database [String] Target database
    # @param security_area [String] Security Area
    # @param object_name [String] Object Name
    # @param security_area_object [SecurityAreaObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecurityAreaObjectVBAResponse, Integer, Hash)>] SecurityAreaObjectVBAResponse data, response status code and response headers
    def update_security_area_object_with_http_info(vbasoftware_database, security_area, object_name, security_area_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityAreaObjectsApi.update_security_area_object ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SecurityAreaObjectsApi.update_security_area_object"
      end
      # verify the required parameter 'security_area' is set
      if @api_client.config.client_side_validation && security_area.nil?
        fail ArgumentError, "Missing the required parameter 'security_area' when calling SecurityAreaObjectsApi.update_security_area_object"
      end
      # verify the required parameter 'object_name' is set
      if @api_client.config.client_side_validation && object_name.nil?
        fail ArgumentError, "Missing the required parameter 'object_name' when calling SecurityAreaObjectsApi.update_security_area_object"
      end
      # verify the required parameter 'security_area_object' is set
      if @api_client.config.client_side_validation && security_area_object.nil?
        fail ArgumentError, "Missing the required parameter 'security_area_object' when calling SecurityAreaObjectsApi.update_security_area_object"
      end
      # resource path
      local_var_path = '/security-areas/{securityArea}/objects/{objectName}'.sub('{' + 'securityArea' + '}', CGI.escape(security_area.to_s)).sub('{' + 'objectName' + '}', CGI.escape(object_name.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(security_area_object)

      # return_type
      return_type = opts[:debug_return_type] || 'SecurityAreaObjectVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SecurityAreaObjectsApi.update_security_area_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityAreaObjectsApi#update_security_area_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
