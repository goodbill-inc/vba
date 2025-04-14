=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ToothChartsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ToothChart
    # Creates a new ToothChart
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_number [Integer] Tooth Number
    # @param tooth_chart [ToothChart] 
    # @param [Hash] opts the optional parameters
    # @return [ToothChartVBAResponse]
    def create_tooth_chart(vbasoftware_database, chart_type, tooth_number, tooth_chart, opts = {})
      data, _status_code, _headers = create_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, tooth_chart, opts)
      data
    end

    # Create ToothChart
    # Creates a new ToothChart
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_number [Integer] Tooth Number
    # @param tooth_chart [ToothChart] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ToothChartVBAResponse, Integer, Hash)>] ToothChartVBAResponse data, response status code and response headers
    def create_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, tooth_chart, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothChartsApi.create_tooth_chart ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothChartsApi.create_tooth_chart"
      end
      # verify the required parameter 'chart_type' is set
      if @api_client.config.client_side_validation && chart_type.nil?
        fail ArgumentError, "Missing the required parameter 'chart_type' when calling ToothChartsApi.create_tooth_chart"
      end
      # verify the required parameter 'tooth_number' is set
      if @api_client.config.client_side_validation && tooth_number.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_number' when calling ToothChartsApi.create_tooth_chart"
      end
      # verify the required parameter 'tooth_chart' is set
      if @api_client.config.client_side_validation && tooth_chart.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_chart' when calling ToothChartsApi.create_tooth_chart"
      end
      # resource path
      local_var_path = '/tooth-charts/{chartType}/teeth/{toothNumber}'.sub('{' + 'chartType' + '}', CGI.escape(chart_type.to_s)).sub('{' + 'toothNumber' + '}', CGI.escape(tooth_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tooth_chart)

      # return_type
      return_type = opts[:debug_return_type] || 'ToothChartVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothChartsApi.create_tooth_chart",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothChartsApi#create_tooth_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ToothChart
    # Deletes an ToothChart
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_number [Integer] Tooth Number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tooth_chart(vbasoftware_database, chart_type, tooth_number, opts = {})
      delete_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, opts)
      nil
    end

    # Delete ToothChart
    # Deletes an ToothChart
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_number [Integer] Tooth Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothChartsApi.delete_tooth_chart ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothChartsApi.delete_tooth_chart"
      end
      # verify the required parameter 'chart_type' is set
      if @api_client.config.client_side_validation && chart_type.nil?
        fail ArgumentError, "Missing the required parameter 'chart_type' when calling ToothChartsApi.delete_tooth_chart"
      end
      # verify the required parameter 'tooth_number' is set
      if @api_client.config.client_side_validation && tooth_number.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_number' when calling ToothChartsApi.delete_tooth_chart"
      end
      # resource path
      local_var_path = '/tooth-charts/{chartType}/teeth/{toothNumber}'.sub('{' + 'chartType' + '}', CGI.escape(chart_type.to_s)).sub('{' + 'toothNumber' + '}', CGI.escape(tooth_number.to_s))

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
        :operation => :"ToothChartsApi.delete_tooth_chart",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothChartsApi#delete_tooth_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ToothChart
    # Gets ToothChart
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_number [Integer] Tooth Number
    # @param [Hash] opts the optional parameters
    # @return [ToothChartVBAResponse]
    def get_tooth_chart(vbasoftware_database, chart_type, tooth_number, opts = {})
      data, _status_code, _headers = get_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, opts)
      data
    end

    # Get ToothChart
    # Gets ToothChart
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_number [Integer] Tooth Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(ToothChartVBAResponse, Integer, Hash)>] ToothChartVBAResponse data, response status code and response headers
    def get_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothChartsApi.get_tooth_chart ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothChartsApi.get_tooth_chart"
      end
      # verify the required parameter 'chart_type' is set
      if @api_client.config.client_side_validation && chart_type.nil?
        fail ArgumentError, "Missing the required parameter 'chart_type' when calling ToothChartsApi.get_tooth_chart"
      end
      # verify the required parameter 'tooth_number' is set
      if @api_client.config.client_side_validation && tooth_number.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_number' when calling ToothChartsApi.get_tooth_chart"
      end
      # resource path
      local_var_path = '/tooth-charts/{chartType}/teeth/{toothNumber}'.sub('{' + 'chartType' + '}', CGI.escape(chart_type.to_s)).sub('{' + 'toothNumber' + '}', CGI.escape(tooth_number.to_s))

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
      return_type = opts[:debug_return_type] || 'ToothChartVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothChartsApi.get_tooth_chart",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothChartsApi#get_tooth_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ToothChart
    # Lists all ToothChart for the given chartType
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ToothChartListVBAResponse]
    def list_tooth_chart(vbasoftware_database, chart_type, opts = {})
      data, _status_code, _headers = list_tooth_chart_with_http_info(vbasoftware_database, chart_type, opts)
      data
    end

    # List ToothChart
    # Lists all ToothChart for the given chartType
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ToothChartListVBAResponse, Integer, Hash)>] ToothChartListVBAResponse data, response status code and response headers
    def list_tooth_chart_with_http_info(vbasoftware_database, chart_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothChartsApi.list_tooth_chart ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothChartsApi.list_tooth_chart"
      end
      # verify the required parameter 'chart_type' is set
      if @api_client.config.client_side_validation && chart_type.nil?
        fail ArgumentError, "Missing the required parameter 'chart_type' when calling ToothChartsApi.list_tooth_chart"
      end
      # resource path
      local_var_path = '/tooth-charts/{chartType}/teeth'.sub('{' + 'chartType' + '}', CGI.escape(chart_type.to_s))

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
      return_type = opts[:debug_return_type] || 'ToothChartListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothChartsApi.list_tooth_chart",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothChartsApi#list_tooth_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ToothChart
    # Create or Update multiple ToothChart at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_chart [Array<ToothChart>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_tooth_chart(vbasoftware_database, chart_type, tooth_chart, opts = {})
      data, _status_code, _headers = update_batch_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_chart, opts)
      data
    end

    # Create or Update Batch ToothChart
    # Create or Update multiple ToothChart at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_chart [Array<ToothChart>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_chart, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothChartsApi.update_batch_tooth_chart ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothChartsApi.update_batch_tooth_chart"
      end
      # verify the required parameter 'chart_type' is set
      if @api_client.config.client_side_validation && chart_type.nil?
        fail ArgumentError, "Missing the required parameter 'chart_type' when calling ToothChartsApi.update_batch_tooth_chart"
      end
      # verify the required parameter 'tooth_chart' is set
      if @api_client.config.client_side_validation && tooth_chart.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_chart' when calling ToothChartsApi.update_batch_tooth_chart"
      end
      # resource path
      local_var_path = '/tooth-charts/{chartType}/teeth-batch'.sub('{' + 'chartType' + '}', CGI.escape(chart_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tooth_chart)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothChartsApi.update_batch_tooth_chart",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothChartsApi#update_batch_tooth_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ToothChart
    # Updates a specific ToothChart.
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_number [Integer] Tooth Number
    # @param tooth_chart [ToothChart] 
    # @param [Hash] opts the optional parameters
    # @return [ToothChartVBAResponse]
    def update_tooth_chart(vbasoftware_database, chart_type, tooth_number, tooth_chart, opts = {})
      data, _status_code, _headers = update_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, tooth_chart, opts)
      data
    end

    # Update ToothChart
    # Updates a specific ToothChart.
    # @param vbasoftware_database [String] Target database
    # @param chart_type [String] Chart Type
    # @param tooth_number [Integer] Tooth Number
    # @param tooth_chart [ToothChart] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ToothChartVBAResponse, Integer, Hash)>] ToothChartVBAResponse data, response status code and response headers
    def update_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, tooth_chart, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToothChartsApi.update_tooth_chart ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ToothChartsApi.update_tooth_chart"
      end
      # verify the required parameter 'chart_type' is set
      if @api_client.config.client_side_validation && chart_type.nil?
        fail ArgumentError, "Missing the required parameter 'chart_type' when calling ToothChartsApi.update_tooth_chart"
      end
      # verify the required parameter 'tooth_number' is set
      if @api_client.config.client_side_validation && tooth_number.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_number' when calling ToothChartsApi.update_tooth_chart"
      end
      # verify the required parameter 'tooth_chart' is set
      if @api_client.config.client_side_validation && tooth_chart.nil?
        fail ArgumentError, "Missing the required parameter 'tooth_chart' when calling ToothChartsApi.update_tooth_chart"
      end
      # resource path
      local_var_path = '/tooth-charts/{chartType}/teeth/{toothNumber}'.sub('{' + 'chartType' + '}', CGI.escape(chart_type.to_s)).sub('{' + 'toothNumber' + '}', CGI.escape(tooth_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tooth_chart)

      # return_type
      return_type = opts[:debug_return_type] || 'ToothChartVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ToothChartsApi.update_tooth_chart",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ToothChartsApi#update_tooth_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
