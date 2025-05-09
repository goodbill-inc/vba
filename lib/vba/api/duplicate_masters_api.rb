=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class DuplicateMastersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create DuplicateMaster
    # Creates a new DuplicateMaster
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master [DuplicateMaster] 
    # @param [Hash] opts the optional parameters
    # @return [DuplicateMasterVBAResponse]
    def create_duplicate_master(vbasoftware_database, duplicate_master, opts = {})
      data, _status_code, _headers = create_duplicate_master_with_http_info(vbasoftware_database, duplicate_master, opts)
      data
    end

    # Create DuplicateMaster
    # Creates a new DuplicateMaster
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master [DuplicateMaster] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DuplicateMasterVBAResponse, Integer, Hash)>] DuplicateMasterVBAResponse data, response status code and response headers
    def create_duplicate_master_with_http_info(vbasoftware_database, duplicate_master, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DuplicateMastersApi.create_duplicate_master ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling DuplicateMastersApi.create_duplicate_master"
      end
      # verify the required parameter 'duplicate_master' is set
      if @api_client.config.client_side_validation && duplicate_master.nil?
        fail ArgumentError, "Missing the required parameter 'duplicate_master' when calling DuplicateMastersApi.create_duplicate_master"
      end
      # resource path
      local_var_path = '/duplicate-masters'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(duplicate_master)

      # return_type
      return_type = opts[:debug_return_type] || 'DuplicateMasterVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"DuplicateMastersApi.create_duplicate_master",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuplicateMastersApi#create_duplicate_master\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete DuplicateMaster
    # Deletes an DuplicateMaster
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master_key [Integer] DuplicateMaster Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_duplicate_master(vbasoftware_database, duplicate_master_key, opts = {})
      delete_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key, opts)
      nil
    end

    # Delete DuplicateMaster
    # Deletes an DuplicateMaster
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master_key [Integer] DuplicateMaster Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DuplicateMastersApi.delete_duplicate_master ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling DuplicateMastersApi.delete_duplicate_master"
      end
      # verify the required parameter 'duplicate_master_key' is set
      if @api_client.config.client_side_validation && duplicate_master_key.nil?
        fail ArgumentError, "Missing the required parameter 'duplicate_master_key' when calling DuplicateMastersApi.delete_duplicate_master"
      end
      # resource path
      local_var_path = '/duplicate-masters/{duplicateMasterKey}'.sub('{' + 'duplicateMasterKey' + '}', CGI.escape(duplicate_master_key.to_s))

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
        :operation => :"DuplicateMastersApi.delete_duplicate_master",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuplicateMastersApi#delete_duplicate_master\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get DuplicateMaster
    # Gets DuplicateMaster
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master_key [Integer] DuplicateMaster Key
    # @param [Hash] opts the optional parameters
    # @return [DuplicateMasterVBAResponse]
    def get_duplicate_master(vbasoftware_database, duplicate_master_key, opts = {})
      data, _status_code, _headers = get_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key, opts)
      data
    end

    # Get DuplicateMaster
    # Gets DuplicateMaster
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master_key [Integer] DuplicateMaster Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(DuplicateMasterVBAResponse, Integer, Hash)>] DuplicateMasterVBAResponse data, response status code and response headers
    def get_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DuplicateMastersApi.get_duplicate_master ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling DuplicateMastersApi.get_duplicate_master"
      end
      # verify the required parameter 'duplicate_master_key' is set
      if @api_client.config.client_side_validation && duplicate_master_key.nil?
        fail ArgumentError, "Missing the required parameter 'duplicate_master_key' when calling DuplicateMastersApi.get_duplicate_master"
      end
      # resource path
      local_var_path = '/duplicate-masters/{duplicateMasterKey}'.sub('{' + 'duplicateMasterKey' + '}', CGI.escape(duplicate_master_key.to_s))

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
      return_type = opts[:debug_return_type] || 'DuplicateMasterVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"DuplicateMastersApi.get_duplicate_master",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuplicateMastersApi#get_duplicate_master\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List DuplicateMaster
    # Lists all DuplicateMaster
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [DuplicateMasterListVBAResponse]
    def list_duplicate_master(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_duplicate_master_with_http_info(vbasoftware_database, opts)
      data
    end

    # List DuplicateMaster
    # Lists all DuplicateMaster
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(DuplicateMasterListVBAResponse, Integer, Hash)>] DuplicateMasterListVBAResponse data, response status code and response headers
    def list_duplicate_master_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DuplicateMastersApi.list_duplicate_master ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling DuplicateMastersApi.list_duplicate_master"
      end
      # resource path
      local_var_path = '/duplicate-masters'

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
      return_type = opts[:debug_return_type] || 'DuplicateMasterListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"DuplicateMastersApi.list_duplicate_master",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuplicateMastersApi#list_duplicate_master\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch DuplicateMaster
    # Create or Update multiple DuplicateMaster at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master [Array<DuplicateMaster>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_duplicate_master(vbasoftware_database, duplicate_master, opts = {})
      data, _status_code, _headers = update_batch_duplicate_master_with_http_info(vbasoftware_database, duplicate_master, opts)
      data
    end

    # Create or Update Batch DuplicateMaster
    # Create or Update multiple DuplicateMaster at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master [Array<DuplicateMaster>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_duplicate_master_with_http_info(vbasoftware_database, duplicate_master, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DuplicateMastersApi.update_batch_duplicate_master ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling DuplicateMastersApi.update_batch_duplicate_master"
      end
      # verify the required parameter 'duplicate_master' is set
      if @api_client.config.client_side_validation && duplicate_master.nil?
        fail ArgumentError, "Missing the required parameter 'duplicate_master' when calling DuplicateMastersApi.update_batch_duplicate_master"
      end
      # resource path
      local_var_path = '/duplicate-masters-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(duplicate_master)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"DuplicateMastersApi.update_batch_duplicate_master",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuplicateMastersApi#update_batch_duplicate_master\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update DuplicateMaster
    # Updates a specific DuplicateMaster.
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master_key [Integer] DuplicateMaster Key
    # @param duplicate_master [DuplicateMaster] 
    # @param [Hash] opts the optional parameters
    # @return [DuplicateMasterVBAResponse]
    def update_duplicate_master(vbasoftware_database, duplicate_master_key, duplicate_master, opts = {})
      data, _status_code, _headers = update_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_master, opts)
      data
    end

    # Update DuplicateMaster
    # Updates a specific DuplicateMaster.
    # @param vbasoftware_database [String] Target database
    # @param duplicate_master_key [Integer] DuplicateMaster Key
    # @param duplicate_master [DuplicateMaster] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DuplicateMasterVBAResponse, Integer, Hash)>] DuplicateMasterVBAResponse data, response status code and response headers
    def update_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_master, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DuplicateMastersApi.update_duplicate_master ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling DuplicateMastersApi.update_duplicate_master"
      end
      # verify the required parameter 'duplicate_master_key' is set
      if @api_client.config.client_side_validation && duplicate_master_key.nil?
        fail ArgumentError, "Missing the required parameter 'duplicate_master_key' when calling DuplicateMastersApi.update_duplicate_master"
      end
      # verify the required parameter 'duplicate_master' is set
      if @api_client.config.client_side_validation && duplicate_master.nil?
        fail ArgumentError, "Missing the required parameter 'duplicate_master' when calling DuplicateMastersApi.update_duplicate_master"
      end
      # resource path
      local_var_path = '/duplicate-masters/{duplicateMasterKey}'.sub('{' + 'duplicateMasterKey' + '}', CGI.escape(duplicate_master_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(duplicate_master)

      # return_type
      return_type = opts[:debug_return_type] || 'DuplicateMasterVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"DuplicateMastersApi.update_duplicate_master",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuplicateMastersApi#update_duplicate_master\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
