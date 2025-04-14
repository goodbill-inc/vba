=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PaymentSchedulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PaymentSchedule
    # Creates a new PaymentSchedule
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [PaymentSchedule] 
    # @param [Hash] opts the optional parameters
    # @return [PaymentScheduleVBAResponse]
    def create_payment_schedule(vbasoftware_database, payment_schedule, opts = {})
      data, _status_code, _headers = create_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, opts)
      data
    end

    # Create PaymentSchedule
    # Creates a new PaymentSchedule
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [PaymentSchedule] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentScheduleVBAResponse, Integer, Hash)>] PaymentScheduleVBAResponse data, response status code and response headers
    def create_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.create_payment_schedule ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PaymentSchedulesApi.create_payment_schedule"
      end
      # verify the required parameter 'payment_schedule' is set
      if @api_client.config.client_side_validation && payment_schedule.nil?
        fail ArgumentError, "Missing the required parameter 'payment_schedule' when calling PaymentSchedulesApi.create_payment_schedule"
      end
      # resource path
      local_var_path = '/payment-schedules'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_schedule)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentScheduleVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentSchedulesApi.create_payment_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#create_payment_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PaymentSchedule
    # Deletes an PaymentSchedule
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [String] Payment Schedule
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_schedule(vbasoftware_database, payment_schedule, opts = {})
      delete_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, opts)
      nil
    end

    # Delete PaymentSchedule
    # Deletes an PaymentSchedule
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [String] Payment Schedule
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.delete_payment_schedule ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PaymentSchedulesApi.delete_payment_schedule"
      end
      # verify the required parameter 'payment_schedule' is set
      if @api_client.config.client_side_validation && payment_schedule.nil?
        fail ArgumentError, "Missing the required parameter 'payment_schedule' when calling PaymentSchedulesApi.delete_payment_schedule"
      end
      # resource path
      local_var_path = '/payment-schedules/{paymentSchedule}'.sub('{' + 'paymentSchedule' + '}', CGI.escape(payment_schedule.to_s))

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
        :operation => :"PaymentSchedulesApi.delete_payment_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#delete_payment_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PaymentSchedule
    # Gets PaymentSchedule
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [String] Payment Schedule
    # @param [Hash] opts the optional parameters
    # @return [PaymentScheduleVBAResponse]
    def get_payment_schedule(vbasoftware_database, payment_schedule, opts = {})
      data, _status_code, _headers = get_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, opts)
      data
    end

    # Get PaymentSchedule
    # Gets PaymentSchedule
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [String] Payment Schedule
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentScheduleVBAResponse, Integer, Hash)>] PaymentScheduleVBAResponse data, response status code and response headers
    def get_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.get_payment_schedule ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PaymentSchedulesApi.get_payment_schedule"
      end
      # verify the required parameter 'payment_schedule' is set
      if @api_client.config.client_side_validation && payment_schedule.nil?
        fail ArgumentError, "Missing the required parameter 'payment_schedule' when calling PaymentSchedulesApi.get_payment_schedule"
      end
      # resource path
      local_var_path = '/payment-schedules/{paymentSchedule}'.sub('{' + 'paymentSchedule' + '}', CGI.escape(payment_schedule.to_s))

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
      return_type = opts[:debug_return_type] || 'PaymentScheduleVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentSchedulesApi.get_payment_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#get_payment_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PaymentSchedule
    # Lists all PaymentSchedule
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PaymentScheduleListVBAResponse]
    def list_payment_schedule(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_payment_schedule_with_http_info(vbasoftware_database, opts)
      data
    end

    # List PaymentSchedule
    # Lists all PaymentSchedule
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PaymentScheduleListVBAResponse, Integer, Hash)>] PaymentScheduleListVBAResponse data, response status code and response headers
    def list_payment_schedule_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.list_payment_schedule ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PaymentSchedulesApi.list_payment_schedule"
      end
      # resource path
      local_var_path = '/payment-schedules'

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
      return_type = opts[:debug_return_type] || 'PaymentScheduleListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentSchedulesApi.list_payment_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#list_payment_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PaymentSchedule
    # Create or Update multiple PaymentSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [Array<PaymentSchedule>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_payment_schedule(vbasoftware_database, payment_schedule, opts = {})
      data, _status_code, _headers = update_batch_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, opts)
      data
    end

    # Create or Update Batch PaymentSchedule
    # Create or Update multiple PaymentSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [Array<PaymentSchedule>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.update_batch_payment_schedule ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PaymentSchedulesApi.update_batch_payment_schedule"
      end
      # verify the required parameter 'payment_schedule' is set
      if @api_client.config.client_side_validation && payment_schedule.nil?
        fail ArgumentError, "Missing the required parameter 'payment_schedule' when calling PaymentSchedulesApi.update_batch_payment_schedule"
      end
      # resource path
      local_var_path = '/payment-schedules-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_schedule)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentSchedulesApi.update_batch_payment_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#update_batch_payment_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PaymentSchedule
    # Updates a specific PaymentSchedule.
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [String] Payment Schedule
    # @param payment_schedule2 [PaymentSchedule] 
    # @param [Hash] opts the optional parameters
    # @return [PaymentScheduleVBAResponse]
    def update_payment_schedule(vbasoftware_database, payment_schedule, payment_schedule2, opts = {})
      data, _status_code, _headers = update_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, payment_schedule2, opts)
      data
    end

    # Update PaymentSchedule
    # Updates a specific PaymentSchedule.
    # @param vbasoftware_database [String] Target database
    # @param payment_schedule [String] Payment Schedule
    # @param payment_schedule2 [PaymentSchedule] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentScheduleVBAResponse, Integer, Hash)>] PaymentScheduleVBAResponse data, response status code and response headers
    def update_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, payment_schedule2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.update_payment_schedule ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PaymentSchedulesApi.update_payment_schedule"
      end
      # verify the required parameter 'payment_schedule' is set
      if @api_client.config.client_side_validation && payment_schedule.nil?
        fail ArgumentError, "Missing the required parameter 'payment_schedule' when calling PaymentSchedulesApi.update_payment_schedule"
      end
      # verify the required parameter 'payment_schedule2' is set
      if @api_client.config.client_side_validation && payment_schedule2.nil?
        fail ArgumentError, "Missing the required parameter 'payment_schedule2' when calling PaymentSchedulesApi.update_payment_schedule"
      end
      # resource path
      local_var_path = '/payment-schedules/{paymentSchedule}'.sub('{' + 'paymentSchedule' + '}', CGI.escape(payment_schedule.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_schedule2)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentScheduleVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentSchedulesApi.update_payment_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#update_payment_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
