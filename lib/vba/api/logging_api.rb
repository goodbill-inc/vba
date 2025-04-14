=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class LoggingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a system log
    # Creates a system log for a client VBA Application
    # @param vbasoftware_database [String] target database for this request
    # @param [Hash] opts the optional parameters
    # @option opts [SystemLogData] :system_log_data 
    # @return [nil]
    def create_system_log(vbasoftware_database, opts = {})
      create_system_log_with_http_info(vbasoftware_database, opts)
      nil
    end

    # Creates a system log
    # Creates a system log for a client VBA Application
    # @param vbasoftware_database [String] target database for this request
    # @param [Hash] opts the optional parameters
    # @option opts [SystemLogData] :system_log_data 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_system_log_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingApi.create_system_log ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling LoggingApi.create_system_log"
      end
      # resource path
      local_var_path = '/system-logs'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'system_log_data'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"LoggingApi.create_system_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingApi#create_system_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates multiple system log
    # Creates multiple system logs for a client VBA Application
    # @param vbasoftware_database [String] target database for this request
    # @param [Hash] opts the optional parameters
    # @option opts [Array<SystemLogData>] :system_log_data 
    # @return [nil]
    def create_system_log_batch(vbasoftware_database, opts = {})
      create_system_log_batch_with_http_info(vbasoftware_database, opts)
      nil
    end

    # Creates multiple system log
    # Creates multiple system logs for a client VBA Application
    # @param vbasoftware_database [String] target database for this request
    # @param [Hash] opts the optional parameters
    # @option opts [Array<SystemLogData>] :system_log_data 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_system_log_batch_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingApi.create_system_log_batch ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling LoggingApi.create_system_log_batch"
      end
      # resource path
      local_var_path = '/system-logs-batch'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'system_log_data'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"LoggingApi.create_system_log_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingApi#create_system_log_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
