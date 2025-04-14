=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class EnrollmentWaitingPeriodSubscribersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create EnrollmentWaitingPeriodSubscriber
    # Creates a new EnrollmentWaitingPeriodSubscriber
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber [EnrollmentWaitingPeriodSubscriber] 
    # @param [Hash] opts the optional parameters
    # @return [EnrollmentWaitingPeriodSubscriberVBAResponse]
    def create_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber, opts = {})
      data, _status_code, _headers = create_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber, opts)
      data
    end

    # Create EnrollmentWaitingPeriodSubscriber
    # Creates a new EnrollmentWaitingPeriodSubscriber
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber [EnrollmentWaitingPeriodSubscriber] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EnrollmentWaitingPeriodSubscriberVBAResponse, Integer, Hash)>] EnrollmentWaitingPeriodSubscriberVBAResponse data, response status code and response headers
    def create_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnrollmentWaitingPeriodSubscribersApi.create_enrollment_waiting_period_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EnrollmentWaitingPeriodSubscribersApi.create_enrollment_waiting_period_subscriber"
      end
      # verify the required parameter 'enrollment_waiting_period_subscriber' is set
      if @api_client.config.client_side_validation && enrollment_waiting_period_subscriber.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_waiting_period_subscriber' when calling EnrollmentWaitingPeriodSubscribersApi.create_enrollment_waiting_period_subscriber"
      end
      # resource path
      local_var_path = '/enrollment-waiting-period-subscribers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(enrollment_waiting_period_subscriber)

      # return_type
      return_type = opts[:debug_return_type] || 'EnrollmentWaitingPeriodSubscriberVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EnrollmentWaitingPeriodSubscribersApi.create_enrollment_waiting_period_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnrollmentWaitingPeriodSubscribersApi#create_enrollment_waiting_period_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete EnrollmentWaitingPeriodSubscriber
    # Deletes an EnrollmentWaitingPeriodSubscriber
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber_key [Integer] EnrollmentWaitingPeriodSubscriber Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber_key, opts = {})
      delete_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key, opts)
      nil
    end

    # Delete EnrollmentWaitingPeriodSubscriber
    # Deletes an EnrollmentWaitingPeriodSubscriber
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber_key [Integer] EnrollmentWaitingPeriodSubscriber Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnrollmentWaitingPeriodSubscribersApi.delete_enrollment_waiting_period_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EnrollmentWaitingPeriodSubscribersApi.delete_enrollment_waiting_period_subscriber"
      end
      # verify the required parameter 'enrollment_waiting_period_subscriber_key' is set
      if @api_client.config.client_side_validation && enrollment_waiting_period_subscriber_key.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_waiting_period_subscriber_key' when calling EnrollmentWaitingPeriodSubscribersApi.delete_enrollment_waiting_period_subscriber"
      end
      # resource path
      local_var_path = '/enrollment-waiting-period-subscribers/{enrollmentWaitingPeriodSubscriberKey}'.sub('{' + 'enrollmentWaitingPeriodSubscriberKey' + '}', CGI.escape(enrollment_waiting_period_subscriber_key.to_s))

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
        :operation => :"EnrollmentWaitingPeriodSubscribersApi.delete_enrollment_waiting_period_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnrollmentWaitingPeriodSubscribersApi#delete_enrollment_waiting_period_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get EnrollmentWaitingPeriodSubscriber
    # Gets EnrollmentWaitingPeriodSubscriber
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber_key [Integer] EnrollmentWaitingPeriodSubscriber Key
    # @param [Hash] opts the optional parameters
    # @return [EnrollmentWaitingPeriodSubscriberVBAResponse]
    def get_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber_key, opts = {})
      data, _status_code, _headers = get_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key, opts)
      data
    end

    # Get EnrollmentWaitingPeriodSubscriber
    # Gets EnrollmentWaitingPeriodSubscriber
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber_key [Integer] EnrollmentWaitingPeriodSubscriber Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(EnrollmentWaitingPeriodSubscriberVBAResponse, Integer, Hash)>] EnrollmentWaitingPeriodSubscriberVBAResponse data, response status code and response headers
    def get_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnrollmentWaitingPeriodSubscribersApi.get_enrollment_waiting_period_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EnrollmentWaitingPeriodSubscribersApi.get_enrollment_waiting_period_subscriber"
      end
      # verify the required parameter 'enrollment_waiting_period_subscriber_key' is set
      if @api_client.config.client_side_validation && enrollment_waiting_period_subscriber_key.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_waiting_period_subscriber_key' when calling EnrollmentWaitingPeriodSubscribersApi.get_enrollment_waiting_period_subscriber"
      end
      # resource path
      local_var_path = '/enrollment-waiting-period-subscribers/{enrollmentWaitingPeriodSubscriberKey}'.sub('{' + 'enrollmentWaitingPeriodSubscriberKey' + '}', CGI.escape(enrollment_waiting_period_subscriber_key.to_s))

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
      return_type = opts[:debug_return_type] || 'EnrollmentWaitingPeriodSubscriberVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EnrollmentWaitingPeriodSubscribersApi.get_enrollment_waiting_period_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnrollmentWaitingPeriodSubscribersApi#get_enrollment_waiting_period_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List EnrollmentWaitingPeriodSubscriber
    # Lists all EnrollmentWaitingPeriodSubscriber
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Subscriber_ID
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [EnrollmentWaitingPeriodSubscriberListVBAResponse]
    def list_enrollment_waiting_period_subscriber(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, opts)
      data
    end

    # List EnrollmentWaitingPeriodSubscriber
    # Lists all EnrollmentWaitingPeriodSubscriber
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Subscriber_ID
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(EnrollmentWaitingPeriodSubscriberListVBAResponse, Integer, Hash)>] EnrollmentWaitingPeriodSubscriberListVBAResponse data, response status code and response headers
    def list_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnrollmentWaitingPeriodSubscribersApi.list_enrollment_waiting_period_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EnrollmentWaitingPeriodSubscribersApi.list_enrollment_waiting_period_subscriber"
      end
      # resource path
      local_var_path = '/enrollment-waiting-period-subscribers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subscriberID'] = opts[:'subscriber_id'] if !opts[:'subscriber_id'].nil?
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
      return_type = opts[:debug_return_type] || 'EnrollmentWaitingPeriodSubscriberListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EnrollmentWaitingPeriodSubscribersApi.list_enrollment_waiting_period_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnrollmentWaitingPeriodSubscribersApi#list_enrollment_waiting_period_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch EnrollmentWaitingPeriodSubscriber
    # Create or Update multiple EnrollmentWaitingPeriodSubscriber at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber [Array<EnrollmentWaitingPeriodSubscriber>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber, opts = {})
      data, _status_code, _headers = update_batch_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber, opts)
      data
    end

    # Create or Update Batch EnrollmentWaitingPeriodSubscriber
    # Create or Update multiple EnrollmentWaitingPeriodSubscriber at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber [Array<EnrollmentWaitingPeriodSubscriber>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnrollmentWaitingPeriodSubscribersApi.update_batch_enrollment_waiting_period_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EnrollmentWaitingPeriodSubscribersApi.update_batch_enrollment_waiting_period_subscriber"
      end
      # verify the required parameter 'enrollment_waiting_period_subscriber' is set
      if @api_client.config.client_side_validation && enrollment_waiting_period_subscriber.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_waiting_period_subscriber' when calling EnrollmentWaitingPeriodSubscribersApi.update_batch_enrollment_waiting_period_subscriber"
      end
      # resource path
      local_var_path = '/enrollment-waiting-period-subscribers-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(enrollment_waiting_period_subscriber)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EnrollmentWaitingPeriodSubscribersApi.update_batch_enrollment_waiting_period_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnrollmentWaitingPeriodSubscribersApi#update_batch_enrollment_waiting_period_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update EnrollmentWaitingPeriodSubscriber
    # Updates a specific EnrollmentWaitingPeriodSubscriber.
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber_key [Integer] EnrollmentWaitingPeriodSubscriber Key
    # @param enrollment_waiting_period_subscriber [EnrollmentWaitingPeriodSubscriber] 
    # @param [Hash] opts the optional parameters
    # @return [EnrollmentWaitingPeriodSubscriberVBAResponse]
    def update_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber_key, enrollment_waiting_period_subscriber, opts = {})
      data, _status_code, _headers = update_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key, enrollment_waiting_period_subscriber, opts)
      data
    end

    # Update EnrollmentWaitingPeriodSubscriber
    # Updates a specific EnrollmentWaitingPeriodSubscriber.
    # @param vbasoftware_database [String] Target database
    # @param enrollment_waiting_period_subscriber_key [Integer] EnrollmentWaitingPeriodSubscriber Key
    # @param enrollment_waiting_period_subscriber [EnrollmentWaitingPeriodSubscriber] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EnrollmentWaitingPeriodSubscriberVBAResponse, Integer, Hash)>] EnrollmentWaitingPeriodSubscriberVBAResponse data, response status code and response headers
    def update_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key, enrollment_waiting_period_subscriber, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnrollmentWaitingPeriodSubscribersApi.update_enrollment_waiting_period_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EnrollmentWaitingPeriodSubscribersApi.update_enrollment_waiting_period_subscriber"
      end
      # verify the required parameter 'enrollment_waiting_period_subscriber_key' is set
      if @api_client.config.client_side_validation && enrollment_waiting_period_subscriber_key.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_waiting_period_subscriber_key' when calling EnrollmentWaitingPeriodSubscribersApi.update_enrollment_waiting_period_subscriber"
      end
      # verify the required parameter 'enrollment_waiting_period_subscriber' is set
      if @api_client.config.client_side_validation && enrollment_waiting_period_subscriber.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_waiting_period_subscriber' when calling EnrollmentWaitingPeriodSubscribersApi.update_enrollment_waiting_period_subscriber"
      end
      # resource path
      local_var_path = '/enrollment-waiting-period-subscribers/{enrollmentWaitingPeriodSubscriberKey}'.sub('{' + 'enrollmentWaitingPeriodSubscriberKey' + '}', CGI.escape(enrollment_waiting_period_subscriber_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(enrollment_waiting_period_subscriber)

      # return_type
      return_type = opts[:debug_return_type] || 'EnrollmentWaitingPeriodSubscriberVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"EnrollmentWaitingPeriodSubscribersApi.update_enrollment_waiting_period_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnrollmentWaitingPeriodSubscribersApi#update_enrollment_waiting_period_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
