=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class EDICodeMappingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create EDICodeMap
    # Creates a new EDICodeMap
    # @param vbasoftware_database [String] Target database
    # @param edi_code_map [EDICodeMap] 
    # @param [Hash] opts the optional parameters
    # @return [EDICodeMapVBAResponse]
    def create_edi_code_map(vbasoftware_database, edi_code_map, opts = {})
      data, _status_code, _headers = create_edi_code_map_with_http_info(vbasoftware_database, edi_code_map, opts)
      data
    end

    # Create EDICodeMap
    # Creates a new EDICodeMap
    # @param vbasoftware_database [String] Target database
    # @param edi_code_map [EDICodeMap] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EDICodeMapVBAResponse, Integer, Hash)>] EDICodeMapVBAResponse data, response status code and response headers
    def create_edi_code_map_with_http_info(vbasoftware_database, edi_code_map, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDICodeMappingsApi.create_edi_code_map ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EDICodeMappingsApi.create_edi_code_map"
      end
      # verify the required parameter 'edi_code_map' is set
      if @api_client.config.client_side_validation && edi_code_map.nil?
        fail ArgumentError, "Missing the required parameter 'edi_code_map' when calling EDICodeMappingsApi.create_edi_code_map"
      end
      # resource path
      local_var_path = '/edi-code-mapping'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(edi_code_map)

      # return_type
      return_type = opts[:debug_return_type] || 'EDICodeMapVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EDICodeMappingsApi.create_edi_code_map",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDICodeMappingsApi#create_edi_code_map\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete EDICodeMap
    # Deletes an EDICodeMap
    # @param vbasoftware_database [String] Target database
    # @param e_di_code_map_key [Integer] EDICodeMap Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_edi_code_map(vbasoftware_database, e_di_code_map_key, opts = {})
      delete_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key, opts)
      nil
    end

    # Delete EDICodeMap
    # Deletes an EDICodeMap
    # @param vbasoftware_database [String] Target database
    # @param e_di_code_map_key [Integer] EDICodeMap Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDICodeMappingsApi.delete_edi_code_map ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EDICodeMappingsApi.delete_edi_code_map"
      end
      # verify the required parameter 'e_di_code_map_key' is set
      if @api_client.config.client_side_validation && e_di_code_map_key.nil?
        fail ArgumentError, "Missing the required parameter 'e_di_code_map_key' when calling EDICodeMappingsApi.delete_edi_code_map"
      end
      # resource path
      local_var_path = '/edi-code-mapping/{eDICodeMapKey}'.sub('{' + 'eDICodeMapKey' + '}', CGI.escape(e_di_code_map_key.to_s))

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
        :operation => :"EDICodeMappingsApi.delete_edi_code_map",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDICodeMappingsApi#delete_edi_code_map\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get EDICodeMap
    # Gets EDICodeMap
    # @param vbasoftware_database [String] Target database
    # @param e_di_code_map_key [Integer] EDICodeMap Key
    # @param [Hash] opts the optional parameters
    # @return [EDICodeMapVBAResponse]
    def get_edi_code_map(vbasoftware_database, e_di_code_map_key, opts = {})
      data, _status_code, _headers = get_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key, opts)
      data
    end

    # Get EDICodeMap
    # Gets EDICodeMap
    # @param vbasoftware_database [String] Target database
    # @param e_di_code_map_key [Integer] EDICodeMap Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(EDICodeMapVBAResponse, Integer, Hash)>] EDICodeMapVBAResponse data, response status code and response headers
    def get_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDICodeMappingsApi.get_edi_code_map ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EDICodeMappingsApi.get_edi_code_map"
      end
      # verify the required parameter 'e_di_code_map_key' is set
      if @api_client.config.client_side_validation && e_di_code_map_key.nil?
        fail ArgumentError, "Missing the required parameter 'e_di_code_map_key' when calling EDICodeMappingsApi.get_edi_code_map"
      end
      # resource path
      local_var_path = '/edi-code-mapping/{eDICodeMapKey}'.sub('{' + 'eDICodeMapKey' + '}', CGI.escape(e_di_code_map_key.to_s))

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
      return_type = opts[:debug_return_type] || 'EDICodeMapVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EDICodeMappingsApi.get_edi_code_map",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDICodeMappingsApi#get_edi_code_map\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List EDICodeMap
    # Lists all EDICodeMap
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [EDICodeMapListVBAResponse]
    def list_edi_code_map(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_edi_code_map_with_http_info(vbasoftware_database, opts)
      data
    end

    # List EDICodeMap
    # Lists all EDICodeMap
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(EDICodeMapListVBAResponse, Integer, Hash)>] EDICodeMapListVBAResponse data, response status code and response headers
    def list_edi_code_map_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDICodeMappingsApi.list_edi_code_map ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EDICodeMappingsApi.list_edi_code_map"
      end
      # resource path
      local_var_path = '/edi-code-mapping'

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
      return_type = opts[:debug_return_type] || 'EDICodeMapListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EDICodeMappingsApi.list_edi_code_map",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDICodeMappingsApi#list_edi_code_map\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch EDICodeMap
    # Create or Update multiple EDICodeMap at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param edi_code_map [Array<EDICodeMap>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_edi_code_map(vbasoftware_database, edi_code_map, opts = {})
      data, _status_code, _headers = update_batch_edi_code_map_with_http_info(vbasoftware_database, edi_code_map, opts)
      data
    end

    # Create or Update Batch EDICodeMap
    # Create or Update multiple EDICodeMap at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param edi_code_map [Array<EDICodeMap>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_edi_code_map_with_http_info(vbasoftware_database, edi_code_map, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDICodeMappingsApi.update_batch_edi_code_map ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EDICodeMappingsApi.update_batch_edi_code_map"
      end
      # verify the required parameter 'edi_code_map' is set
      if @api_client.config.client_side_validation && edi_code_map.nil?
        fail ArgumentError, "Missing the required parameter 'edi_code_map' when calling EDICodeMappingsApi.update_batch_edi_code_map"
      end
      # resource path
      local_var_path = '/edi-code-mapping-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(edi_code_map)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EDICodeMappingsApi.update_batch_edi_code_map",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDICodeMappingsApi#update_batch_edi_code_map\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update EDICodeMap
    # Updates a specific EDICodeMap.
    # @param vbasoftware_database [String] Target database
    # @param e_di_code_map_key [Integer] EDICodeMap Key
    # @param edi_code_map [EDICodeMap] 
    # @param [Hash] opts the optional parameters
    # @return [EDICodeMapVBAResponse]
    def update_edi_code_map(vbasoftware_database, e_di_code_map_key, edi_code_map, opts = {})
      data, _status_code, _headers = update_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key, edi_code_map, opts)
      data
    end

    # Update EDICodeMap
    # Updates a specific EDICodeMap.
    # @param vbasoftware_database [String] Target database
    # @param e_di_code_map_key [Integer] EDICodeMap Key
    # @param edi_code_map [EDICodeMap] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EDICodeMapVBAResponse, Integer, Hash)>] EDICodeMapVBAResponse data, response status code and response headers
    def update_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key, edi_code_map, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDICodeMappingsApi.update_edi_code_map ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EDICodeMappingsApi.update_edi_code_map"
      end
      # verify the required parameter 'e_di_code_map_key' is set
      if @api_client.config.client_side_validation && e_di_code_map_key.nil?
        fail ArgumentError, "Missing the required parameter 'e_di_code_map_key' when calling EDICodeMappingsApi.update_edi_code_map"
      end
      # verify the required parameter 'edi_code_map' is set
      if @api_client.config.client_side_validation && edi_code_map.nil?
        fail ArgumentError, "Missing the required parameter 'edi_code_map' when calling EDICodeMappingsApi.update_edi_code_map"
      end
      # resource path
      local_var_path = '/edi-code-mapping/{eDICodeMapKey}'.sub('{' + 'eDICodeMapKey' + '}', CGI.escape(e_di_code_map_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(edi_code_map)

      # return_type
      return_type = opts[:debug_return_type] || 'EDICodeMapVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EDICodeMappingsApi.update_edi_code_map",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDICodeMappingsApi#update_edi_code_map\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
