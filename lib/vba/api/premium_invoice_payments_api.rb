=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PremiumInvoicePaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PremInvoicePayment
    # Creates a new PremInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param prem_invoice_payment [PremInvoicePayment] 
    # @param [Hash] opts the optional parameters
    # @return [PremInvoicePaymentVBAResponse]
    def create_prem_invoice_payment(vbasoftware_database, prem_invoice_payment, opts = {})
      data, _status_code, _headers = create_prem_invoice_payment_with_http_info(vbasoftware_database, prem_invoice_payment, opts)
      data
    end

    # Create PremInvoicePayment
    # Creates a new PremInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param prem_invoice_payment [PremInvoicePayment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremInvoicePaymentVBAResponse, Integer, Hash)>] PremInvoicePaymentVBAResponse data, response status code and response headers
    def create_prem_invoice_payment_with_http_info(vbasoftware_database, prem_invoice_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumInvoicePaymentsApi.create_prem_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumInvoicePaymentsApi.create_prem_invoice_payment"
      end
      # verify the required parameter 'prem_invoice_payment' is set
      if @api_client.config.client_side_validation && prem_invoice_payment.nil?
        fail ArgumentError, "Missing the required parameter 'prem_invoice_payment' when calling PremiumInvoicePaymentsApi.create_prem_invoice_payment"
      end
      # resource path
      local_var_path = '/premium-invoice-payments'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_invoice_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'PremInvoicePaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumInvoicePaymentsApi.create_prem_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumInvoicePaymentsApi#create_prem_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PremInvoicePayment
    # Deletes an PremInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param prem_payment_key [Integer] PremPayment Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_prem_invoice_payment(vbasoftware_database, invoice_key, prem_payment_key, opts = {})
      delete_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key, opts)
      nil
    end

    # Delete PremInvoicePayment
    # Deletes an PremInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param prem_payment_key [Integer] PremPayment Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumInvoicePaymentsApi.delete_prem_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumInvoicePaymentsApi.delete_prem_invoice_payment"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling PremiumInvoicePaymentsApi.delete_prem_invoice_payment"
      end
      # verify the required parameter 'prem_payment_key' is set
      if @api_client.config.client_side_validation && prem_payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_payment_key' when calling PremiumInvoicePaymentsApi.delete_prem_invoice_payment"
      end
      # resource path
      local_var_path = '/premium-invoice-payments/{invoiceKey}/{premPaymentKey}'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s)).sub('{' + 'premPaymentKey' + '}', CGI.escape(prem_payment_key.to_s))

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
        :operation => :"PremiumInvoicePaymentsApi.delete_prem_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumInvoicePaymentsApi#delete_prem_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PremInvoicePayment
    # Gets PremInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param prem_payment_key [Integer] PremPayment Key
    # @param [Hash] opts the optional parameters
    # @return [PremInvoicePaymentVBAResponse]
    def get_prem_invoice_payment(vbasoftware_database, invoice_key, prem_payment_key, opts = {})
      data, _status_code, _headers = get_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key, opts)
      data
    end

    # Get PremInvoicePayment
    # Gets PremInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param prem_payment_key [Integer] PremPayment Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremInvoicePaymentVBAResponse, Integer, Hash)>] PremInvoicePaymentVBAResponse data, response status code and response headers
    def get_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumInvoicePaymentsApi.get_prem_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumInvoicePaymentsApi.get_prem_invoice_payment"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling PremiumInvoicePaymentsApi.get_prem_invoice_payment"
      end
      # verify the required parameter 'prem_payment_key' is set
      if @api_client.config.client_side_validation && prem_payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_payment_key' when calling PremiumInvoicePaymentsApi.get_prem_invoice_payment"
      end
      # resource path
      local_var_path = '/premium-invoice-payments/{invoiceKey}/{premPaymentKey}'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s)).sub('{' + 'premPaymentKey' + '}', CGI.escape(prem_payment_key.to_s))

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
      return_type = opts[:debug_return_type] || 'PremInvoicePaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumInvoicePaymentsApi.get_prem_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumInvoicePaymentsApi#get_prem_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PremInvoicePayment
    # Lists all PremInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PremInvoicePaymentListVBAResponse]
    def list_prem_invoice_payment(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_prem_invoice_payment_with_http_info(vbasoftware_database, opts)
      data
    end

    # List PremInvoicePayment
    # Lists all PremInvoicePayment
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PremInvoicePaymentListVBAResponse, Integer, Hash)>] PremInvoicePaymentListVBAResponse data, response status code and response headers
    def list_prem_invoice_payment_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumInvoicePaymentsApi.list_prem_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumInvoicePaymentsApi.list_prem_invoice_payment"
      end
      # resource path
      local_var_path = '/premium-invoice-payments'

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
      return_type = opts[:debug_return_type] || 'PremInvoicePaymentListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumInvoicePaymentsApi.list_prem_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumInvoicePaymentsApi#list_prem_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PremInvoicePayment Extended
    # Lists PremInvoicePayment Extended objects which include invoice posted payments and payment applied fields.
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :invoice_year Invoice Year
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PremInvoicePaymentExtListVBAResponse]
    def list_prem_invoice_payment_ext(vbasoftware_database, invoice_key, opts = {})
      data, _status_code, _headers = list_prem_invoice_payment_ext_with_http_info(vbasoftware_database, invoice_key, opts)
      data
    end

    # List PremInvoicePayment Extended
    # Lists PremInvoicePayment Extended objects which include invoice posted payments and payment applied fields.
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :invoice_year Invoice Year
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PremInvoicePaymentExtListVBAResponse, Integer, Hash)>] PremInvoicePaymentExtListVBAResponse data, response status code and response headers
    def list_prem_invoice_payment_ext_with_http_info(vbasoftware_database, invoice_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumInvoicePaymentsApi.list_prem_invoice_payment_ext ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumInvoicePaymentsApi.list_prem_invoice_payment_ext"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling PremiumInvoicePaymentsApi.list_prem_invoice_payment_ext"
      end
      # resource path
      local_var_path = '/premium-invoice-payments-ext/{invoiceKey}'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'invoiceYear'] = opts[:'invoice_year'] if !opts[:'invoice_year'].nil?
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
      return_type = opts[:debug_return_type] || 'PremInvoicePaymentExtListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumInvoicePaymentsApi.list_prem_invoice_payment_ext",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumInvoicePaymentsApi#list_prem_invoice_payment_ext\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PremInvoicePayment
    # Create or Update multiple PremInvoicePayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_invoice_payment [Array<PremInvoicePayment>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_prem_invoice_payment(vbasoftware_database, prem_invoice_payment, opts = {})
      data, _status_code, _headers = update_batch_prem_invoice_payment_with_http_info(vbasoftware_database, prem_invoice_payment, opts)
      data
    end

    # Create or Update Batch PremInvoicePayment
    # Create or Update multiple PremInvoicePayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_invoice_payment [Array<PremInvoicePayment>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_prem_invoice_payment_with_http_info(vbasoftware_database, prem_invoice_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumInvoicePaymentsApi.update_batch_prem_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumInvoicePaymentsApi.update_batch_prem_invoice_payment"
      end
      # verify the required parameter 'prem_invoice_payment' is set
      if @api_client.config.client_side_validation && prem_invoice_payment.nil?
        fail ArgumentError, "Missing the required parameter 'prem_invoice_payment' when calling PremiumInvoicePaymentsApi.update_batch_prem_invoice_payment"
      end
      # resource path
      local_var_path = '/premium-invoice-payments-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_invoice_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumInvoicePaymentsApi.update_batch_prem_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumInvoicePaymentsApi#update_batch_prem_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PremInvoicePayment
    # Updates a specific PremInvoicePayment.
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param prem_payment_key [Integer] PremPayment Key
    # @param prem_invoice_payment [PremInvoicePayment] 
    # @param [Hash] opts the optional parameters
    # @return [PremInvoicePaymentVBAResponse]
    def update_prem_invoice_payment(vbasoftware_database, invoice_key, prem_payment_key, prem_invoice_payment, opts = {})
      data, _status_code, _headers = update_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key, prem_invoice_payment, opts)
      data
    end

    # Update PremInvoicePayment
    # Updates a specific PremInvoicePayment.
    # @param vbasoftware_database [String] Target database
    # @param invoice_key [Integer] Invoice Key
    # @param prem_payment_key [Integer] PremPayment Key
    # @param prem_invoice_payment [PremInvoicePayment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremInvoicePaymentVBAResponse, Integer, Hash)>] PremInvoicePaymentVBAResponse data, response status code and response headers
    def update_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key, prem_invoice_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumInvoicePaymentsApi.update_prem_invoice_payment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumInvoicePaymentsApi.update_prem_invoice_payment"
      end
      # verify the required parameter 'invoice_key' is set
      if @api_client.config.client_side_validation && invoice_key.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_key' when calling PremiumInvoicePaymentsApi.update_prem_invoice_payment"
      end
      # verify the required parameter 'prem_payment_key' is set
      if @api_client.config.client_side_validation && prem_payment_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_payment_key' when calling PremiumInvoicePaymentsApi.update_prem_invoice_payment"
      end
      # verify the required parameter 'prem_invoice_payment' is set
      if @api_client.config.client_side_validation && prem_invoice_payment.nil?
        fail ArgumentError, "Missing the required parameter 'prem_invoice_payment' when calling PremiumInvoicePaymentsApi.update_prem_invoice_payment"
      end
      # resource path
      local_var_path = '/premium-invoice-payments/{invoiceKey}/{premPaymentKey}'.sub('{' + 'invoiceKey' + '}', CGI.escape(invoice_key.to_s)).sub('{' + 'premPaymentKey' + '}', CGI.escape(prem_payment_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_invoice_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'PremInvoicePaymentVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumInvoicePaymentsApi.update_prem_invoice_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumInvoicePaymentsApi#update_prem_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
