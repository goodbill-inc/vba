=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ReinsuranceOptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ReinsuranceOption
    # Creates a new ReinsuranceOption
    # @param vbasoftware_database [String] Target database
    # @param reinsurance_option [ReinsuranceOption] 
    # @param [Hash] opts the optional parameters
    # @return [ReinsuranceOptionVBAResponse]
    def create_reinsurance_option(vbasoftware_database, reinsurance_option, opts = {})
      data, _status_code, _headers = create_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option, opts)
      data
    end

    # Create ReinsuranceOption
    # Creates a new ReinsuranceOption
    # @param vbasoftware_database [String] Target database
    # @param reinsurance_option [ReinsuranceOption] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReinsuranceOptionVBAResponse, Integer, Hash)>] ReinsuranceOptionVBAResponse data, response status code and response headers
    def create_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceOptionsApi.create_reinsurance_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceOptionsApi.create_reinsurance_option"
      end
      # verify the required parameter 'reinsurance_option' is set
      if @api_client.config.client_side_validation && reinsurance_option.nil?
        fail ArgumentError, "Missing the required parameter 'reinsurance_option' when calling ReinsuranceOptionsApi.create_reinsurance_option"
      end
      # resource path
      local_var_path = '/reinsurance-options'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(reinsurance_option)

      # return_type
      return_type = opts[:debug_return_type] || 'ReinsuranceOptionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReinsuranceOptionsApi.create_reinsurance_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceOptionsApi#create_reinsurance_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ReinsuranceOption
    # Deletes an ReinsuranceOption
    # @param vbasoftware_database [String] Target database
    # @param reinsurance_option [String] Reinsurance Option
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_reinsurance_option(vbasoftware_database, reinsurance_option, opts = {})
      delete_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option, opts)
      nil
    end

    # Delete ReinsuranceOption
    # Deletes an ReinsuranceOption
    # @param vbasoftware_database [String] Target database
    # @param reinsurance_option [String] Reinsurance Option
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceOptionsApi.delete_reinsurance_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceOptionsApi.delete_reinsurance_option"
      end
      # verify the required parameter 'reinsurance_option' is set
      if @api_client.config.client_side_validation && reinsurance_option.nil?
        fail ArgumentError, "Missing the required parameter 'reinsurance_option' when calling ReinsuranceOptionsApi.delete_reinsurance_option"
      end
      # resource path
      local_var_path = '/reinsurance-options/{reinsuranceOption}'.sub('{' + 'reinsuranceOption' + '}', CGI.escape(reinsurance_option.to_s))

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
        :operation => :"ReinsuranceOptionsApi.delete_reinsurance_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceOptionsApi#delete_reinsurance_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ReinsuranceOption
    # Gets ReinsuranceOption
    # @param vbasoftware_database [String] Target database
    # @param reinsurance_option [String] Reinsurance Option
    # @param [Hash] opts the optional parameters
    # @return [ReinsuranceOptionVBAResponse]
    def get_reinsurance_option(vbasoftware_database, reinsurance_option, opts = {})
      data, _status_code, _headers = get_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option, opts)
      data
    end

    # Get ReinsuranceOption
    # Gets ReinsuranceOption
    # @param vbasoftware_database [String] Target database
    # @param reinsurance_option [String] Reinsurance Option
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReinsuranceOptionVBAResponse, Integer, Hash)>] ReinsuranceOptionVBAResponse data, response status code and response headers
    def get_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceOptionsApi.get_reinsurance_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceOptionsApi.get_reinsurance_option"
      end
      # verify the required parameter 'reinsurance_option' is set
      if @api_client.config.client_side_validation && reinsurance_option.nil?
        fail ArgumentError, "Missing the required parameter 'reinsurance_option' when calling ReinsuranceOptionsApi.get_reinsurance_option"
      end
      # resource path
      local_var_path = '/reinsurance-options/{reinsuranceOption}'.sub('{' + 'reinsuranceOption' + '}', CGI.escape(reinsurance_option.to_s))

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
      return_type = opts[:debug_return_type] || 'ReinsuranceOptionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReinsuranceOptionsApi.get_reinsurance_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceOptionsApi#get_reinsurance_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ReinsuranceOption
    # Lists all ReinsuranceOption
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ReinsuranceOptionListVBAResponse]
    def list_reinsurance_option(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_reinsurance_option_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ReinsuranceOption
    # Lists all ReinsuranceOption
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ReinsuranceOptionListVBAResponse, Integer, Hash)>] ReinsuranceOptionListVBAResponse data, response status code and response headers
    def list_reinsurance_option_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceOptionsApi.list_reinsurance_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceOptionsApi.list_reinsurance_option"
      end
      # resource path
      local_var_path = '/reinsurance-options'

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
      return_type = opts[:debug_return_type] || 'ReinsuranceOptionListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReinsuranceOptionsApi.list_reinsurance_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceOptionsApi#list_reinsurance_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Batch ReinsuranceOption
    # Create multiple ReinsuranceOption at once.  If the entity exists, an error will be returned.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param reinsurance_option [Array<ReinsuranceOption>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_reinsurance_option(vbasoftware_database, reinsurance_option, opts = {})
      data, _status_code, _headers = update_batch_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option, opts)
      data
    end

    # Create Batch ReinsuranceOption
    # Create multiple ReinsuranceOption at once.  If the entity exists, an error will be returned.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param reinsurance_option [Array<ReinsuranceOption>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceOptionsApi.update_batch_reinsurance_option ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceOptionsApi.update_batch_reinsurance_option"
      end
      # verify the required parameter 'reinsurance_option' is set
      if @api_client.config.client_side_validation && reinsurance_option.nil?
        fail ArgumentError, "Missing the required parameter 'reinsurance_option' when calling ReinsuranceOptionsApi.update_batch_reinsurance_option"
      end
      # resource path
      local_var_path = '/reinsurance-options-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(reinsurance_option)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReinsuranceOptionsApi.update_batch_reinsurance_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceOptionsApi#update_batch_reinsurance_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
