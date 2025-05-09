=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ReportSeriesStepArgsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ReportSeriesStepArg
    # Creates a new ReportSeriesStepArg
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg [ReportSeriesStepArg] 
    # @param [Hash] opts the optional parameters
    # @return [ReportSeriesStepArgVBAResponse]
    def create_report_series_step_arg(vbasoftware_database, report_series_step_arg, opts = {})
      data, _status_code, _headers = create_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg, opts)
      data
    end

    # Create ReportSeriesStepArg
    # Creates a new ReportSeriesStepArg
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg [ReportSeriesStepArg] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportSeriesStepArgVBAResponse, Integer, Hash)>] ReportSeriesStepArgVBAResponse data, response status code and response headers
    def create_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportSeriesStepArgsApi.create_report_series_step_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportSeriesStepArgsApi.create_report_series_step_arg"
      end
      # verify the required parameter 'report_series_step_arg' is set
      if @api_client.config.client_side_validation && report_series_step_arg.nil?
        fail ArgumentError, "Missing the required parameter 'report_series_step_arg' when calling ReportSeriesStepArgsApi.create_report_series_step_arg"
      end
      # resource path
      local_var_path = '/report-series-step-args'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(report_series_step_arg)

      # return_type
      return_type = opts[:debug_return_type] || 'ReportSeriesStepArgVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportSeriesStepArgsApi.create_report_series_step_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportSeriesStepArgsApi#create_report_series_step_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ReportSeriesStepArg
    # Deletes an ReportSeriesStepArg
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg_key [Integer] ReportSeriesStepArg Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_report_series_step_arg(vbasoftware_database, report_series_step_arg_key, opts = {})
      delete_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key, opts)
      nil
    end

    # Delete ReportSeriesStepArg
    # Deletes an ReportSeriesStepArg
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg_key [Integer] ReportSeriesStepArg Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportSeriesStepArgsApi.delete_report_series_step_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportSeriesStepArgsApi.delete_report_series_step_arg"
      end
      # verify the required parameter 'report_series_step_arg_key' is set
      if @api_client.config.client_side_validation && report_series_step_arg_key.nil?
        fail ArgumentError, "Missing the required parameter 'report_series_step_arg_key' when calling ReportSeriesStepArgsApi.delete_report_series_step_arg"
      end
      # resource path
      local_var_path = '/report-series-step-args/{reportSeriesStepArgKey}'.sub('{' + 'reportSeriesStepArgKey' + '}', CGI.escape(report_series_step_arg_key.to_s))

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
        :operation => :"ReportSeriesStepArgsApi.delete_report_series_step_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportSeriesStepArgsApi#delete_report_series_step_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ReportSeriesStepArg
    # Gets ReportSeriesStepArg
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg_key [Integer] ReportSeriesStepArg Key
    # @param [Hash] opts the optional parameters
    # @return [ReportSeriesStepArgVBAResponse]
    def get_report_series_step_arg(vbasoftware_database, report_series_step_arg_key, opts = {})
      data, _status_code, _headers = get_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key, opts)
      data
    end

    # Get ReportSeriesStepArg
    # Gets ReportSeriesStepArg
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg_key [Integer] ReportSeriesStepArg Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportSeriesStepArgVBAResponse, Integer, Hash)>] ReportSeriesStepArgVBAResponse data, response status code and response headers
    def get_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportSeriesStepArgsApi.get_report_series_step_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportSeriesStepArgsApi.get_report_series_step_arg"
      end
      # verify the required parameter 'report_series_step_arg_key' is set
      if @api_client.config.client_side_validation && report_series_step_arg_key.nil?
        fail ArgumentError, "Missing the required parameter 'report_series_step_arg_key' when calling ReportSeriesStepArgsApi.get_report_series_step_arg"
      end
      # resource path
      local_var_path = '/report-series-step-args/{reportSeriesStepArgKey}'.sub('{' + 'reportSeriesStepArgKey' + '}', CGI.escape(report_series_step_arg_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ReportSeriesStepArgVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportSeriesStepArgsApi.get_report_series_step_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportSeriesStepArgsApi#get_report_series_step_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ReportSeriesStepArg
    # Lists all ReportSeriesStepArg
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :report_series_step_key Filter by ReportSeriesStep_Key
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ReportSeriesStepArgListVBAResponse]
    def list_report_series_step_arg(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_report_series_step_arg_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ReportSeriesStepArg
    # Lists all ReportSeriesStepArg
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :report_series_step_key Filter by ReportSeriesStep_Key
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ReportSeriesStepArgListVBAResponse, Integer, Hash)>] ReportSeriesStepArgListVBAResponse data, response status code and response headers
    def list_report_series_step_arg_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportSeriesStepArgsApi.list_report_series_step_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportSeriesStepArgsApi.list_report_series_step_arg"
      end
      # resource path
      local_var_path = '/report-series-step-args'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'reportSeriesStepKey'] = opts[:'report_series_step_key'] if !opts[:'report_series_step_key'].nil?
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
      return_type = opts[:debug_return_type] || 'ReportSeriesStepArgListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportSeriesStepArgsApi.list_report_series_step_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportSeriesStepArgsApi#list_report_series_step_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ReportSeriesStepArg
    # Create or Update multiple ReportSeriesStepArg at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg [Array<ReportSeriesStepArg>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_report_series_step_arg(vbasoftware_database, report_series_step_arg, opts = {})
      data, _status_code, _headers = update_batch_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg, opts)
      data
    end

    # Create or Update Batch ReportSeriesStepArg
    # Create or Update multiple ReportSeriesStepArg at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg [Array<ReportSeriesStepArg>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportSeriesStepArgsApi.update_batch_report_series_step_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportSeriesStepArgsApi.update_batch_report_series_step_arg"
      end
      # verify the required parameter 'report_series_step_arg' is set
      if @api_client.config.client_side_validation && report_series_step_arg.nil?
        fail ArgumentError, "Missing the required parameter 'report_series_step_arg' when calling ReportSeriesStepArgsApi.update_batch_report_series_step_arg"
      end
      # resource path
      local_var_path = '/report-series-step-args-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(report_series_step_arg)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportSeriesStepArgsApi.update_batch_report_series_step_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportSeriesStepArgsApi#update_batch_report_series_step_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ReportSeriesStepArg
    # Updates a specific ReportSeriesStepArg.
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg_key [Integer] ReportSeriesStepArg Key
    # @param report_series_step_arg [ReportSeriesStepArg] 
    # @param [Hash] opts the optional parameters
    # @return [ReportSeriesStepArgVBAResponse]
    def update_report_series_step_arg(vbasoftware_database, report_series_step_arg_key, report_series_step_arg, opts = {})
      data, _status_code, _headers = update_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key, report_series_step_arg, opts)
      data
    end

    # Update ReportSeriesStepArg
    # Updates a specific ReportSeriesStepArg.
    # @param vbasoftware_database [String] Target database
    # @param report_series_step_arg_key [Integer] ReportSeriesStepArg Key
    # @param report_series_step_arg [ReportSeriesStepArg] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportSeriesStepArgVBAResponse, Integer, Hash)>] ReportSeriesStepArgVBAResponse data, response status code and response headers
    def update_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key, report_series_step_arg, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportSeriesStepArgsApi.update_report_series_step_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportSeriesStepArgsApi.update_report_series_step_arg"
      end
      # verify the required parameter 'report_series_step_arg_key' is set
      if @api_client.config.client_side_validation && report_series_step_arg_key.nil?
        fail ArgumentError, "Missing the required parameter 'report_series_step_arg_key' when calling ReportSeriesStepArgsApi.update_report_series_step_arg"
      end
      # verify the required parameter 'report_series_step_arg' is set
      if @api_client.config.client_side_validation && report_series_step_arg.nil?
        fail ArgumentError, "Missing the required parameter 'report_series_step_arg' when calling ReportSeriesStepArgsApi.update_report_series_step_arg"
      end
      # resource path
      local_var_path = '/report-series-step-args/{reportSeriesStepArgKey}'.sub('{' + 'reportSeriesStepArgKey' + '}', CGI.escape(report_series_step_arg_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(report_series_step_arg)

      # return_type
      return_type = opts[:debug_return_type] || 'ReportSeriesStepArgVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportSeriesStepArgsApi.update_report_series_step_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportSeriesStepArgsApi#update_report_series_step_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
