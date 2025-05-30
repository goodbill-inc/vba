=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class MemberPaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create MemberPayment
    # Creates a new MemberPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment [MemberPayment] 
    # @param [Hash] opts the optional parameters
    # @return [MemberPaymentVBAResponse]
    def create_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment, opts = {})
      data, _status_code, _headers = create_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment, opts)
      data
    end

    # Create MemberPayment
    # Creates a new MemberPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment [MemberPayment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberPaymentVBAResponse, Integer, Hash)>] MemberPaymentVBAResponse data, response status code and response headers
    def create_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPaymentsApi.create_member_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPaymentsApi.create_member_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPaymentsApi.create_member_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPaymentsApi.create_member_payment"
      end
      # verify the required parameter 'member_payment' is set
      if @api_client.config.client_side_validation && member_payment.nil?
        fail ArgumentError, "Missing the required parameter 'member_payment' when calling MemberPaymentsApi.create_member_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/payments'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberPaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPaymentsApi.create_member_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPaymentsApi#create_member_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MemberPayment
    # Deletes an MemberPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment_key [Integer] MemberPayment Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment_key, opts = {})
      delete_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key, opts)
      nil
    end

    # Delete MemberPayment
    # Deletes an MemberPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment_key [Integer] MemberPayment Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPaymentsApi.delete_member_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPaymentsApi.delete_member_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPaymentsApi.delete_member_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPaymentsApi.delete_member_payment"
      end
      # verify the required parameter 'member_payment_key' is set
      if @api_client.config.client_side_validation && member_payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_payment_key' when calling MemberPaymentsApi.delete_member_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/payments/{memberPaymentKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberPaymentKey' + '}', CGI.escape(member_payment_key.to_s))

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
        :operation => :"MemberPaymentsApi.delete_member_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPaymentsApi#delete_member_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MemberPayment
    # Gets MemberPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment_key [Integer] MemberPayment Key
    # @param [Hash] opts the optional parameters
    # @return [MemberPaymentVBAResponse]
    def get_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment_key, opts = {})
      data, _status_code, _headers = get_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key, opts)
      data
    end

    # Get MemberPayment
    # Gets MemberPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment_key [Integer] MemberPayment Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberPaymentVBAResponse, Integer, Hash)>] MemberPaymentVBAResponse data, response status code and response headers
    def get_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPaymentsApi.get_member_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPaymentsApi.get_member_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPaymentsApi.get_member_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPaymentsApi.get_member_payment"
      end
      # verify the required parameter 'member_payment_key' is set
      if @api_client.config.client_side_validation && member_payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_payment_key' when calling MemberPaymentsApi.get_member_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/payments/{memberPaymentKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberPaymentKey' + '}', CGI.escape(member_payment_key.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberPaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPaymentsApi.get_member_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPaymentsApi#get_member_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List MemberPayment
    # Lists all MemberPayment for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [MemberPaymentListVBAResponse]
    def list_member_payment(vbasoftware_database, subscriber_id, member_seq, opts = {})
      data, _status_code, _headers = list_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
      data
    end

    # List MemberPayment
    # Lists all MemberPayment for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(MemberPaymentListVBAResponse, Integer, Hash)>] MemberPaymentListVBAResponse data, response status code and response headers
    def list_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPaymentsApi.list_member_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPaymentsApi.list_member_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPaymentsApi.list_member_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPaymentsApi.list_member_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/payments'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberPaymentListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPaymentsApi.list_member_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPaymentsApi#list_member_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List MemberPayments Filtered
    # Lists all MemberPayment for the given Subscriber ID, Member Seq, Group ID, Division ID, Group Coverage Start and Start Date
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param group_coverage_start [Time] Group Coverage Start
    # @param start_date [Time] Start Date
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [MemberPaymentListVBAResponse]
    def list_member_payment_filtered(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, start_date, opts = {})
      data, _status_code, _headers = list_member_payment_filtered_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, start_date, opts)
      data
    end

    # List MemberPayments Filtered
    # Lists all MemberPayment for the given Subscriber ID, Member Seq, Group ID, Division ID, Group Coverage Start and Start Date
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param group_coverage_start [Time] Group Coverage Start
    # @param start_date [Time] Start Date
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(MemberPaymentListVBAResponse, Integer, Hash)>] MemberPaymentListVBAResponse data, response status code and response headers
    def list_member_payment_filtered_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, start_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPaymentsApi.list_member_payment_filtered ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPaymentsApi.list_member_payment_filtered"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPaymentsApi.list_member_payment_filtered"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPaymentsApi.list_member_payment_filtered"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling MemberPaymentsApi.list_member_payment_filtered"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling MemberPaymentsApi.list_member_payment_filtered"
      end
      # verify the required parameter 'group_coverage_start' is set
      if @api_client.config.client_side_validation && group_coverage_start.nil?
        fail ArgumentError, "Missing the required parameter 'group_coverage_start' when calling MemberPaymentsApi.list_member_payment_filtered"
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling MemberPaymentsApi.list_member_payment_filtered"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/payments-filtered'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'groupID'] = group_id
      query_params[:'divisionID'] = division_id
      query_params[:'groupCoverageStart'] = group_coverage_start
      query_params[:'startDate'] = start_date
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
      return_type = opts[:debug_return_type] || 'MemberPaymentListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPaymentsApi.list_member_payment_filtered",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPaymentsApi#list_member_payment_filtered\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch MemberPayment
    # Create or Update multiple MemberPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment [Array<MemberPayment>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment, opts = {})
      data, _status_code, _headers = update_batch_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment, opts)
      data
    end

    # Create or Update Batch MemberPayment
    # Create or Update multiple MemberPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment [Array<MemberPayment>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPaymentsApi.update_batch_member_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPaymentsApi.update_batch_member_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPaymentsApi.update_batch_member_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPaymentsApi.update_batch_member_payment"
      end
      # verify the required parameter 'member_payment' is set
      if @api_client.config.client_side_validation && member_payment.nil?
        fail ArgumentError, "Missing the required parameter 'member_payment' when calling MemberPaymentsApi.update_batch_member_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/payments-batch'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPaymentsApi.update_batch_member_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPaymentsApi#update_batch_member_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update MemberPayment
    # Updates a specific MemberPayment.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment_key [Integer] MemberPayment Key
    # @param member_payment [MemberPayment] 
    # @param [Hash] opts the optional parameters
    # @return [MemberPaymentVBAResponse]
    def update_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment_key, member_payment, opts = {})
      data, _status_code, _headers = update_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key, member_payment, opts)
      data
    end

    # Update MemberPayment
    # Updates a specific MemberPayment.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_payment_key [Integer] MemberPayment Key
    # @param member_payment [MemberPayment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberPaymentVBAResponse, Integer, Hash)>] MemberPaymentVBAResponse data, response status code and response headers
    def update_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key, member_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPaymentsApi.update_member_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPaymentsApi.update_member_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPaymentsApi.update_member_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPaymentsApi.update_member_payment"
      end
      # verify the required parameter 'member_payment_key' is set
      if @api_client.config.client_side_validation && member_payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_payment_key' when calling MemberPaymentsApi.update_member_payment"
      end
      # verify the required parameter 'member_payment' is set
      if @api_client.config.client_side_validation && member_payment.nil?
        fail ArgumentError, "Missing the required parameter 'member_payment' when calling MemberPaymentsApi.update_member_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/payments/{memberPaymentKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberPaymentKey' + '}', CGI.escape(member_payment_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberPaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPaymentsApi.update_member_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPaymentsApi#update_member_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
