=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ToothApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Tooth
    # Creates a new Tooth
    # @param vbasoftware_database [String] Target database
    # @param tooth [Tooth] 
    # @param [Hash] opts the optional parameters
    # @return [ToothVBAResponse]
    def create_tooth(vbasoftware_database, tooth, opts = {})
      data, _status_code, _headers = create_tooth_with_http_info(vbasoftware_database, tooth, opts)
      data
    end

    # Create Tooth
    # Creates a new Tooth
    # @param vbasoftware_database [String] Target database
    # @param tooth [Tooth] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ToothVBAResponse, Integer, Hash)>] ToothVBAResponse data, response status code and response headers
    def create_tooth_with_http_info(vbasoftware_database, tooth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothApi.create_tooth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothApi.create_tooth"
      end
      # verify the required parameter 'tooth' is set
      if @api_client.config.client_side_validation && tooth.nil?
        fail ArgumentError, "Missing the required parameter 'tooth' when calling ToothApi.create_tooth"
      end
      # resource path
      local_var_path = '/teeth'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tooth)

      # return_type
      return_type = opts[:debug_return_type] || 'ToothVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothApi.create_tooth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothApi#create_tooth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Tooth
    # Deletes an Tooth
    # @param vbasoftware_database [String] Target database
    # @param tooth_number [Integer] Tooth Number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tooth(vbasoftware_database, tooth_number, opts = {})
      delete_tooth_with_http_info(vbasoftware_database, tooth_number, opts)
      nil
    end

    # Delete Tooth
    # Deletes an Tooth
    # @param vbasoftware_database [String] Target database
    # @param tooth_number [Integer] Tooth Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tooth_with_http_info(vbasoftware_database, tooth_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothApi.delete_tooth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothApi.delete_tooth"
      end
      # verify the required parameter 'tooth_number' is set
      if @api_client.config.client_side_validation && tooth_number.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_number' when calling ToothApi.delete_tooth"
      end
      # resource path
      local_var_path = '/teeth/{toothNumber}'.sub('{' + 'toothNumber' + '}', CGI.escape(tooth_number.to_s))

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
        :operation => :"ToothApi.delete_tooth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothApi#delete_tooth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Tooth
    # Gets Tooth
    # @param vbasoftware_database [String] Target database
    # @param tooth_number [Integer] Tooth Number
    # @param [Hash] opts the optional parameters
    # @return [ToothVBAResponse]
    def get_tooth(vbasoftware_database, tooth_number, opts = {})
      data, _status_code, _headers = get_tooth_with_http_info(vbasoftware_database, tooth_number, opts)
      data
    end

    # Get Tooth
    # Gets Tooth
    # @param vbasoftware_database [String] Target database
    # @param tooth_number [Integer] Tooth Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(ToothVBAResponse, Integer, Hash)>] ToothVBAResponse data, response status code and response headers
    def get_tooth_with_http_info(vbasoftware_database, tooth_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothApi.get_tooth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothApi.get_tooth"
      end
      # verify the required parameter 'tooth_number' is set
      if @api_client.config.client_side_validation && tooth_number.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_number' when calling ToothApi.get_tooth"
      end
      # resource path
      local_var_path = '/teeth/{toothNumber}'.sub('{' + 'toothNumber' + '}', CGI.escape(tooth_number.to_s))

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
      return_type = opts[:debug_return_type] || 'ToothVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothApi.get_tooth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothApi#get_tooth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Tooth
    # Lists all Tooth
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ToothListVBAResponse]
    def list_tooth(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_tooth_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Tooth
    # Lists all Tooth
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ToothListVBAResponse, Integer, Hash)>] ToothListVBAResponse data, response status code and response headers
    def list_tooth_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothApi.list_tooth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothApi.list_tooth"
      end
      # resource path
      local_var_path = '/teeth'

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
      return_type = opts[:debug_return_type] || 'ToothListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothApi.list_tooth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothApi#list_tooth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch Tooth
    # Create or Update multiple Tooth at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param tooth [Array<Tooth>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_tooth(vbasoftware_database, tooth, opts = {})
      data, _status_code, _headers = update_batch_tooth_with_http_info(vbasoftware_database, tooth, opts)
      data
    end

    # Create or Update Batch Tooth
    # Create or Update multiple Tooth at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param tooth [Array<Tooth>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_tooth_with_http_info(vbasoftware_database, tooth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothApi.update_batch_tooth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothApi.update_batch_tooth"
      end
      # verify the required parameter 'tooth' is set
      if @api_client.config.client_side_validation && tooth.nil?
        fail ArgumentError, "Missing the required parameter 'tooth' when calling ToothApi.update_batch_tooth"
      end
      # resource path
      local_var_path = '/teeth-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tooth)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothApi.update_batch_tooth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothApi#update_batch_tooth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Tooth
    # Updates a specific Tooth.
    # @param vbasoftware_database [String] Target database
    # @param tooth_number [Integer] Tooth Number
    # @param tooth [Tooth] 
    # @param [Hash] opts the optional parameters
    # @return [ToothVBAResponse]
    def update_tooth(vbasoftware_database, tooth_number, tooth, opts = {})
      data, _status_code, _headers = update_tooth_with_http_info(vbasoftware_database, tooth_number, tooth, opts)
      data
    end

    # Update Tooth
    # Updates a specific Tooth.
    # @param vbasoftware_database [String] Target database
    # @param tooth_number [Integer] Tooth Number
    # @param tooth [Tooth] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ToothVBAResponse, Integer, Hash)>] ToothVBAResponse data, response status code and response headers
    def update_tooth_with_http_info(vbasoftware_database, tooth_number, tooth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothApi.update_tooth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothApi.update_tooth"
      end
      # verify the required parameter 'tooth_number' is set
      if @api_client.config.client_side_validation && tooth_number.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_number' when calling ToothApi.update_tooth"
      end
      # verify the required parameter 'tooth' is set
      if @api_client.config.client_side_validation && tooth.nil?
        fail ArgumentError, "Missing the required parameter 'tooth' when calling ToothApi.update_tooth"
      end
      # resource path
      local_var_path = '/teeth/{toothNumber}'.sub('{' + 'toothNumber' + '}', CGI.escape(tooth_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tooth)

      # return_type
      return_type = opts[:debug_return_type] || 'ToothVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothApi.update_tooth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothApi#update_tooth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
