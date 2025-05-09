=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class FeeScheduleEffectiveDatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create FeeSchedEffDate
    # Creates a new FeeSchedEffDate
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param fee_sched_eff_date [FeeSchedEffDate] 
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedEffDateVBAResponse]
    def create_fee_sched_eff_date(vbasoftware_database, fee_sched, fee_sched_eff_date, opts = {})
      data, _status_code, _headers = create_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, fee_sched_eff_date, opts)
      data
    end

    # Create FeeSchedEffDate
    # Creates a new FeeSchedEffDate
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param fee_sched_eff_date [FeeSchedEffDate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedEffDateVBAResponse, Integer, Hash)>] FeeSchedEffDateVBAResponse data, response status code and response headers
    def create_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, fee_sched_eff_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleEffectiveDatesApi.create_fee_sched_eff_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleEffectiveDatesApi.create_fee_sched_eff_date"
      end
      # verify the required parameter 'fee_sched' is set
      if @api_client.config.client_side_validation && fee_sched.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched' when calling FeeScheduleEffectiveDatesApi.create_fee_sched_eff_date"
      end
      # verify the required parameter 'fee_sched_eff_date' is set
      if @api_client.config.client_side_validation && fee_sched_eff_date.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_eff_date' when calling FeeScheduleEffectiveDatesApi.create_fee_sched_eff_date"
      end
      # resource path
      local_var_path = '/fee-schedules/{feeSched}/effective-dates'.sub('{' + 'feeSched' + '}', CGI.escape(fee_sched.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_eff_date)

      # return_type
      return_type = opts[:debug_return_type] || 'FeeSchedEffDateVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleEffectiveDatesApi.create_fee_sched_eff_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleEffectiveDatesApi#create_fee_sched_eff_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FeeSchedEffDate
    # Deletes an FeeSchedEffDate
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_fee_sched_eff_date(vbasoftware_database, fee_sched, effective_date, opts = {})
      delete_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, effective_date, opts)
      nil
    end

    # Delete FeeSchedEffDate
    # Deletes an FeeSchedEffDate
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleEffectiveDatesApi.delete_fee_sched_eff_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleEffectiveDatesApi.delete_fee_sched_eff_date"
      end
      # verify the required parameter 'fee_sched' is set
      if @api_client.config.client_side_validation && fee_sched.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched' when calling FeeScheduleEffectiveDatesApi.delete_fee_sched_eff_date"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling FeeScheduleEffectiveDatesApi.delete_fee_sched_eff_date"
      end
      # resource path
      local_var_path = '/fee-schedules/{feeSched}/effective-dates/{effectiveDate}'.sub('{' + 'feeSched' + '}', CGI.escape(fee_sched.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
        :operation => :"FeeScheduleEffectiveDatesApi.delete_fee_sched_eff_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleEffectiveDatesApi#delete_fee_sched_eff_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FeeSchedEffDate
    # Gets FeeSchedEffDate
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedEffDateVBAResponse]
    def get_fee_sched_eff_date(vbasoftware_database, fee_sched, effective_date, opts = {})
      data, _status_code, _headers = get_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, effective_date, opts)
      data
    end

    # Get FeeSchedEffDate
    # Gets FeeSchedEffDate
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedEffDateVBAResponse, Integer, Hash)>] FeeSchedEffDateVBAResponse data, response status code and response headers
    def get_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleEffectiveDatesApi.get_fee_sched_eff_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleEffectiveDatesApi.get_fee_sched_eff_date"
      end
      # verify the required parameter 'fee_sched' is set
      if @api_client.config.client_side_validation && fee_sched.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched' when calling FeeScheduleEffectiveDatesApi.get_fee_sched_eff_date"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling FeeScheduleEffectiveDatesApi.get_fee_sched_eff_date"
      end
      # resource path
      local_var_path = '/fee-schedules/{feeSched}/effective-dates/{effectiveDate}'.sub('{' + 'feeSched' + '}', CGI.escape(fee_sched.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      return_type = opts[:debug_return_type] || 'FeeSchedEffDateVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleEffectiveDatesApi.get_fee_sched_eff_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleEffectiveDatesApi#get_fee_sched_eff_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FeeSchedEffDate
    # Lists all FeeSchedEffDate for the given feeSched
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [FeeSchedEffDateListVBAResponse]
    def list_fee_sched_eff_date(vbasoftware_database, fee_sched, opts = {})
      data, _status_code, _headers = list_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, opts)
      data
    end

    # List FeeSchedEffDate
    # Lists all FeeSchedEffDate for the given feeSched
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(FeeSchedEffDateListVBAResponse, Integer, Hash)>] FeeSchedEffDateListVBAResponse data, response status code and response headers
    def list_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleEffectiveDatesApi.list_fee_sched_eff_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleEffectiveDatesApi.list_fee_sched_eff_date"
      end
      # verify the required parameter 'fee_sched' is set
      if @api_client.config.client_side_validation && fee_sched.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched' when calling FeeScheduleEffectiveDatesApi.list_fee_sched_eff_date"
      end
      # resource path
      local_var_path = '/fee-schedules/{feeSched}/effective-dates'.sub('{' + 'feeSched' + '}', CGI.escape(fee_sched.to_s))

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
      return_type = opts[:debug_return_type] || 'FeeSchedEffDateListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleEffectiveDatesApi.list_fee_sched_eff_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleEffectiveDatesApi#list_fee_sched_eff_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Batch FeeSchedEffDate
    # Create multiple FeeSchedEffDate at once.  If the entity does not exist, it will be created. If the entity exists, an error message will be returned for that id.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param fee_sched_eff_date [Array<FeeSchedEffDate>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_fee_sched_eff_date(vbasoftware_database, fee_sched, fee_sched_eff_date, opts = {})
      data, _status_code, _headers = update_batch_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, fee_sched_eff_date, opts)
      data
    end

    # Create Batch FeeSchedEffDate
    # Create multiple FeeSchedEffDate at once.  If the entity does not exist, it will be created. If the entity exists, an error message will be returned for that id.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched [String] Fee Sched
    # @param fee_sched_eff_date [Array<FeeSchedEffDate>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, fee_sched_eff_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleEffectiveDatesApi.update_batch_fee_sched_eff_date ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleEffectiveDatesApi.update_batch_fee_sched_eff_date"
      end
      # verify the required parameter 'fee_sched' is set
      if @api_client.config.client_side_validation && fee_sched.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched' when calling FeeScheduleEffectiveDatesApi.update_batch_fee_sched_eff_date"
      end
      # verify the required parameter 'fee_sched_eff_date' is set
      if @api_client.config.client_side_validation && fee_sched_eff_date.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_eff_date' when calling FeeScheduleEffectiveDatesApi.update_batch_fee_sched_eff_date"
      end
      # resource path
      local_var_path = '/fee-schedules/{feeSched}/effective-dates-batch'.sub('{' + 'feeSched' + '}', CGI.escape(fee_sched.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_eff_date)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleEffectiveDatesApi.update_batch_fee_sched_eff_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleEffectiveDatesApi#update_batch_fee_sched_eff_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
