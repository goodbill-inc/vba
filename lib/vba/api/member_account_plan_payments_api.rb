=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class MemberAccountPlanPaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create MemberAccountPlanPayment
    # Creates a new MemberAccountPlanPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param member_account_plan_payment [MemberAccountPlanPayment] 
    # @param [Hash] opts the optional parameters
    # @return [MemberAccountPlanPaymentVBAResponse]
    def create_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment, opts = {})
      data, _status_code, _headers = create_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment, opts)
      data
    end

    # Create MemberAccountPlanPayment
    # Creates a new MemberAccountPlanPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param member_account_plan_payment [MemberAccountPlanPayment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAccountPlanPaymentVBAResponse, Integer, Hash)>] MemberAccountPlanPaymentVBAResponse data, response status code and response headers
    def create_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAccountPlanPaymentsApi.create_member_account_plan_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAccountPlanPaymentsApi.create_member_account_plan_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAccountPlanPaymentsApi.create_member_account_plan_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAccountPlanPaymentsApi.create_member_account_plan_payment"
      end
      # verify the required parameter 'member_account_key' is set
      if @api_client.config.client_side_validation && member_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_account_key' when calling MemberAccountPlanPaymentsApi.create_member_account_plan_payment"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling MemberAccountPlanPaymentsApi.create_member_account_plan_payment"
      end
      # verify the required parameter 'member_account_plan_payment' is set
      if @api_client.config.client_side_validation && member_account_plan_payment.nil?
        fail ArgumentError, "Missing the required parameter 'member_account_plan_payment' when calling MemberAccountPlanPaymentsApi.create_member_account_plan_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberAccountKey' + '}', CGI.escape(member_account_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_account_plan_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberAccountPlanPaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberAccountPlanPaymentsApi.create_member_account_plan_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccountPlanPaymentsApi#create_member_account_plan_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MemberAccountPlanPayment
    # Deletes an MemberAccountPlanPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param payment_key [Integer] Payment Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, opts = {})
      delete_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, opts)
      nil
    end

    # Delete MemberAccountPlanPayment
    # Deletes an MemberAccountPlanPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param payment_key [Integer] Payment Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAccountPlanPaymentsApi.delete_member_account_plan_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAccountPlanPaymentsApi.delete_member_account_plan_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAccountPlanPaymentsApi.delete_member_account_plan_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAccountPlanPaymentsApi.delete_member_account_plan_payment"
      end
      # verify the required parameter 'member_account_key' is set
      if @api_client.config.client_side_validation && member_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_account_key' when calling MemberAccountPlanPaymentsApi.delete_member_account_plan_payment"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling MemberAccountPlanPaymentsApi.delete_member_account_plan_payment"
      end
      # verify the required parameter 'payment_key' is set
      if @api_client.config.client_side_validation && payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'payment_key' when calling MemberAccountPlanPaymentsApi.delete_member_account_plan_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments/{paymentKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberAccountKey' + '}', CGI.escape(member_account_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'paymentKey' + '}', CGI.escape(payment_key.to_s))

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
        :operation => :"MemberAccountPlanPaymentsApi.delete_member_account_plan_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccountPlanPaymentsApi#delete_member_account_plan_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MemberAccountPlanPayment
    # Gets MemberAccountPlanPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param payment_key [Integer] Payment Key
    # @param [Hash] opts the optional parameters
    # @return [MemberAccountPlanPaymentVBAResponse]
    def get_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, opts = {})
      data, _status_code, _headers = get_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, opts)
      data
    end

    # Get MemberAccountPlanPayment
    # Gets MemberAccountPlanPayment
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param payment_key [Integer] Payment Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAccountPlanPaymentVBAResponse, Integer, Hash)>] MemberAccountPlanPaymentVBAResponse data, response status code and response headers
    def get_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAccountPlanPaymentsApi.get_member_account_plan_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAccountPlanPaymentsApi.get_member_account_plan_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAccountPlanPaymentsApi.get_member_account_plan_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAccountPlanPaymentsApi.get_member_account_plan_payment"
      end
      # verify the required parameter 'member_account_key' is set
      if @api_client.config.client_side_validation && member_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_account_key' when calling MemberAccountPlanPaymentsApi.get_member_account_plan_payment"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling MemberAccountPlanPaymentsApi.get_member_account_plan_payment"
      end
      # verify the required parameter 'payment_key' is set
      if @api_client.config.client_side_validation && payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'payment_key' when calling MemberAccountPlanPaymentsApi.get_member_account_plan_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments/{paymentKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberAccountKey' + '}', CGI.escape(member_account_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'paymentKey' + '}', CGI.escape(payment_key.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberAccountPlanPaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberAccountPlanPaymentsApi.get_member_account_plan_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccountPlanPaymentsApi#get_member_account_plan_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List MemberAccountPlanPayment
    # Lists all MemberAccountPlanPayment for the given memberAccountKey and planID
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [MemberAccountPlanPaymentListVBAResponse]
    def list_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, opts = {})
      data, _status_code, _headers = list_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, opts)
      data
    end

    # List MemberAccountPlanPayment
    # Lists all MemberAccountPlanPayment for the given memberAccountKey and planID
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(MemberAccountPlanPaymentListVBAResponse, Integer, Hash)>] MemberAccountPlanPaymentListVBAResponse data, response status code and response headers
    def list_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAccountPlanPaymentsApi.list_member_account_plan_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAccountPlanPaymentsApi.list_member_account_plan_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAccountPlanPaymentsApi.list_member_account_plan_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAccountPlanPaymentsApi.list_member_account_plan_payment"
      end
      # verify the required parameter 'member_account_key' is set
      if @api_client.config.client_side_validation && member_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_account_key' when calling MemberAccountPlanPaymentsApi.list_member_account_plan_payment"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling MemberAccountPlanPaymentsApi.list_member_account_plan_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberAccountKey' + '}', CGI.escape(member_account_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberAccountPlanPaymentListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberAccountPlanPaymentsApi.list_member_account_plan_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccountPlanPaymentsApi#list_member_account_plan_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch MemberAccountPlanPayment
    # Create or Update multiple MemberAccountPlanPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param member_account_plan_payment [Array<MemberAccountPlanPayment>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment, opts = {})
      data, _status_code, _headers = update_batch_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment, opts)
      data
    end

    # Create or Update Batch MemberAccountPlanPayment
    # Create or Update multiple MemberAccountPlanPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param member_account_plan_payment [Array<MemberAccountPlanPayment>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAccountPlanPaymentsApi.update_batch_member_account_plan_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAccountPlanPaymentsApi.update_batch_member_account_plan_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAccountPlanPaymentsApi.update_batch_member_account_plan_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAccountPlanPaymentsApi.update_batch_member_account_plan_payment"
      end
      # verify the required parameter 'member_account_key' is set
      if @api_client.config.client_side_validation && member_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_account_key' when calling MemberAccountPlanPaymentsApi.update_batch_member_account_plan_payment"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling MemberAccountPlanPaymentsApi.update_batch_member_account_plan_payment"
      end
      # verify the required parameter 'member_account_plan_payment' is set
      if @api_client.config.client_side_validation && member_account_plan_payment.nil?
        fail ArgumentError, "Missing the required parameter 'member_account_plan_payment' when calling MemberAccountPlanPaymentsApi.update_batch_member_account_plan_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments-batch'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberAccountKey' + '}', CGI.escape(member_account_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_account_plan_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberAccountPlanPaymentsApi.update_batch_member_account_plan_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccountPlanPaymentsApi#update_batch_member_account_plan_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update MemberAccountPlanPayment
    # Updates a specific MemberAccountPlanPayment.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param payment_key [Integer] Payment Key
    # @param member_account_plan_payment [MemberAccountPlanPayment] 
    # @param [Hash] opts the optional parameters
    # @return [MemberAccountPlanPaymentVBAResponse]
    def update_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, member_account_plan_payment, opts = {})
      data, _status_code, _headers = update_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, member_account_plan_payment, opts)
      data
    end

    # Update MemberAccountPlanPayment
    # Updates a specific MemberAccountPlanPayment.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_account_key [Integer] MemberAccount Key
    # @param plan_id [String] Plan ID
    # @param payment_key [Integer] Payment Key
    # @param member_account_plan_payment [MemberAccountPlanPayment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAccountPlanPaymentVBAResponse, Integer, Hash)>] MemberAccountPlanPaymentVBAResponse data, response status code and response headers
    def update_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, member_account_plan_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAccountPlanPaymentsApi.update_member_account_plan_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAccountPlanPaymentsApi.update_member_account_plan_payment"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAccountPlanPaymentsApi.update_member_account_plan_payment"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAccountPlanPaymentsApi.update_member_account_plan_payment"
      end
      # verify the required parameter 'member_account_key' is set
      if @api_client.config.client_side_validation && member_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_account_key' when calling MemberAccountPlanPaymentsApi.update_member_account_plan_payment"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling MemberAccountPlanPaymentsApi.update_member_account_plan_payment"
      end
      # verify the required parameter 'payment_key' is set
      if @api_client.config.client_side_validation && payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'payment_key' when calling MemberAccountPlanPaymentsApi.update_member_account_plan_payment"
      end
      # verify the required parameter 'member_account_plan_payment' is set
      if @api_client.config.client_side_validation && member_account_plan_payment.nil?
        fail ArgumentError, "Missing the required parameter 'member_account_plan_payment' when calling MemberAccountPlanPaymentsApi.update_member_account_plan_payment"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments/{paymentKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberAccountKey' + '}', CGI.escape(member_account_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'paymentKey' + '}', CGI.escape(payment_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_account_plan_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberAccountPlanPaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberAccountPlanPaymentsApi.update_member_account_plan_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccountPlanPaymentsApi#update_member_account_plan_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
