=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimInvoicePaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimInvoicePayment
    # Creates a new ClaimInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_invoice_payment [ClaimInvoicePayment] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimInvoicePaymentVBAResponse]
    def create_claim_invoice_payment(vbasoftware_database, invoice_key, claim_invoice_payment, opts = {})
      data, _status_code, _headers = create_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_payment, opts)
      data
    end

    # Create ClaimInvoicePayment
    # Creates a new ClaimInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_invoice_payment [ClaimInvoicePayment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimInvoicePaymentVBAResponse, Integer, Hash)>] ClaimInvoicePaymentVBAResponse data, response status code and response headers
    def create_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimInvoicePaymentsApi.create_claim_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimInvoicePaymentsApi.create_claim_invoice_payment"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling ClaimInvoicePaymentsApi.create_claim_invoice_payment"
      end
      # verify the required parameter 'claim_invoice_payment' is set
      if @api_client.config.client_side_validation && claim_invoice_payment.nil?
        fail ArgumentError, "Missing the required parameter 'claim_invoice_payment' when calling ClaimInvoicePaymentsApi.create_claim_invoice_payment"
      end
      # resource path
      local_var_path = '/claim-invoice/{invoiceKey}/payments'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_invoice_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimInvoicePaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimInvoicePaymentsApi.create_claim_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimInvoicePaymentsApi#create_claim_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimInvoicePayment
    # Deletes an ClaimInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_payment_key [Integer] ClaimPayment Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_invoice_payment(vbasoftware_database, invoice_key, claim_payment_key, opts = {})
      delete_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key, opts)
      nil
    end

    # Delete ClaimInvoicePayment
    # Deletes an ClaimInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_payment_key [Integer] ClaimPayment Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimInvoicePaymentsApi.delete_claim_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimInvoicePaymentsApi.delete_claim_invoice_payment"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling ClaimInvoicePaymentsApi.delete_claim_invoice_payment"
      end
      # verify the required parameter 'claim_payment_key' is set
      if @api_client.config.client_side_validation && claim_payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_payment_key' when calling ClaimInvoicePaymentsApi.delete_claim_invoice_payment"
      end
      # resource path
      local_var_path = '/claim-invoice/{invoiceKey}/payments/{claimPaymentKey}'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s)).sub('{' + 'claimPaymentKey' + '}', CGI.escape(claim_payment_key.to_s))

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
        :operation => :"ClaimInvoicePaymentsApi.delete_claim_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimInvoicePaymentsApi#delete_claim_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimInvoicePayment
    # Gets ClaimInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_payment_key [Integer] ClaimPayment Key
    # @param [Hash] opts the optional parameters
    # @return [ClaimInvoicePaymentVBAResponse]
    def get_claim_invoice_payment(vbasoftware_database, invoice_key, claim_payment_key, opts = {})
      data, _status_code, _headers = get_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key, opts)
      data
    end

    # Get ClaimInvoicePayment
    # Gets ClaimInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_payment_key [Integer] ClaimPayment Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimInvoicePaymentVBAResponse, Integer, Hash)>] ClaimInvoicePaymentVBAResponse data, response status code and response headers
    def get_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimInvoicePaymentsApi.get_claim_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimInvoicePaymentsApi.get_claim_invoice_payment"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling ClaimInvoicePaymentsApi.get_claim_invoice_payment"
      end
      # verify the required parameter 'claim_payment_key' is set
      if @api_client.config.client_side_validation && claim_payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_payment_key' when calling ClaimInvoicePaymentsApi.get_claim_invoice_payment"
      end
      # resource path
      local_var_path = '/claim-invoice/{invoiceKey}/payments/{claimPaymentKey}'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s)).sub('{' + 'claimPaymentKey' + '}', CGI.escape(claim_payment_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimInvoicePaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimInvoicePaymentsApi.get_claim_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimInvoicePaymentsApi#get_claim_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimInvoicePayment
    # Lists all ClaimInvoicePayment for the given invoiceKey
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [ClaimInvoicePaymentListVBAResponse]
    def list_claim_invoice_payment(vbasoftware_database, invoice_key, opts = {})
      data, _status_code, _headers = list_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, opts)
      data
    end

    # List ClaimInvoicePayment
    # Lists all ClaimInvoicePayment for the given invoiceKey
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [Array<(ClaimInvoicePaymentListVBAResponse, Integer, Hash)>] ClaimInvoicePaymentListVBAResponse data, response status code and response headers
    def list_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimInvoicePaymentsApi.list_claim_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimInvoicePaymentsApi.list_claim_invoice_payment"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling ClaimInvoicePaymentsApi.list_claim_invoice_payment"
      end
      # resource path
      local_var_path = '/claim-invoice/{invoiceKey}/payments'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

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
      return_type = opts[:debug_return_type] || 'ClaimInvoicePaymentListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimInvoicePaymentsApi.list_claim_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimInvoicePaymentsApi#list_claim_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimInvoicePayment
    # Create or Update multiple ClaimInvoicePayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_invoice_payment [Array<ClaimInvoicePayment>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_invoice_payment(vbasoftware_database, invoice_key, claim_invoice_payment, opts = {})
      data, _status_code, _headers = update_batch_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_payment, opts)
      data
    end

    # Create or Update Batch ClaimInvoicePayment
    # Create or Update multiple ClaimInvoicePayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_invoice_payment [Array<ClaimInvoicePayment>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimInvoicePaymentsApi.update_batch_claim_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimInvoicePaymentsApi.update_batch_claim_invoice_payment"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling ClaimInvoicePaymentsApi.update_batch_claim_invoice_payment"
      end
      # verify the required parameter 'claim_invoice_payment' is set
      if @api_client.config.client_side_validation && claim_invoice_payment.nil?
        fail ArgumentError, "Missing the required parameter 'claim_invoice_payment' when calling ClaimInvoicePaymentsApi.update_batch_claim_invoice_payment"
      end
      # resource path
      local_var_path = '/claim-invoice/{invoiceKey}/payments-batch'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_invoice_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimInvoicePaymentsApi.update_batch_claim_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimInvoicePaymentsApi#update_batch_claim_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimInvoicePayment
    # Updates a specific ClaimInvoicePayment.
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_payment_key [Integer] ClaimPayment Key
    # @param claim_invoice_payment [ClaimInvoicePayment] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimInvoicePaymentVBAResponse]
    def update_claim_invoice_payment(vbasoftware_database, invoice_key, claim_payment_key, claim_invoice_payment, opts = {})
      data, _status_code, _headers = update_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key, claim_invoice_payment, opts)
      data
    end

    # Update ClaimInvoicePayment
    # Updates a specific ClaimInvoicePayment.
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param claim_payment_key [Integer] ClaimPayment Key
    # @param claim_invoice_payment [ClaimInvoicePayment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimInvoicePaymentVBAResponse, Integer, Hash)>] ClaimInvoicePaymentVBAResponse data, response status code and response headers
    def update_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key, claim_invoice_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimInvoicePaymentsApi.update_claim_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimInvoicePaymentsApi.update_claim_invoice_payment"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling ClaimInvoicePaymentsApi.update_claim_invoice_payment"
      end
      # verify the required parameter 'claim_payment_key' is set
      if @api_client.config.client_side_validation && claim_payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_payment_key' when calling ClaimInvoicePaymentsApi.update_claim_invoice_payment"
      end
      # verify the required parameter 'claim_invoice_payment' is set
      if @api_client.config.client_side_validation && claim_invoice_payment.nil?
        fail ArgumentError, "Missing the required parameter 'claim_invoice_payment' when calling ClaimInvoicePaymentsApi.update_claim_invoice_payment"
      end
      # resource path
      local_var_path = '/claim-invoice/{invoiceKey}/payments/{claimPaymentKey}'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s)).sub('{' + 'claimPaymentKey' + '}', CGI.escape(claim_payment_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_invoice_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimInvoicePaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimInvoicePaymentsApi.update_claim_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimInvoicePaymentsApi#update_claim_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
