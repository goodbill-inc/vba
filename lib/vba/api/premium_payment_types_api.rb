=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PremiumPaymentTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PremPaymentType
    # Creates a new PremPaymentType
    # @param vbasoftware_database [String] Target database
    # @param prem_payment_type [PremPaymentType] 
    # @param [Hash] opts the optional parameters
    # @return [PremPaymentTypeVBAResponse]
    def create_prem_payment_type(vbasoftware_database, prem_payment_type, opts = {})
      data, _status_code, _headers = create_prem_payment_type_with_http_info(vbasoftware_database, prem_payment_type, opts)
      data
    end

    # Create PremPaymentType
    # Creates a new PremPaymentType
    # @param vbasoftware_database [String] Target database
    # @param prem_payment_type [PremPaymentType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremPaymentTypeVBAResponse, Integer, Hash)>] PremPaymentTypeVBAResponse data, response status code and response headers
    def create_prem_payment_type_with_http_info(vbasoftware_database, prem_payment_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumPaymentTypesApi.create_prem_payment_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumPaymentTypesApi.create_prem_payment_type"
      end
      # verify the required parameter 'prem_payment_type' is set
      if @api_client.config.client_side_validation && prem_payment_type.nil?
        fail ArgumentError, "Missing the required parameter 'prem_payment_type' when calling PremiumPaymentTypesApi.create_prem_payment_type"
      end
      # resource path
      local_var_path = '/premium-payment-types'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_payment_type)

      # return_type
      return_type = opts[:debug_return_type] || 'PremPaymentTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumPaymentTypesApi.create_prem_payment_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumPaymentTypesApi#create_prem_payment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PremPaymentType
    # Deletes an PremPaymentType
    # @param vbasoftware_database [String] Target database
    # @param payment_type [String] Payment Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_prem_payment_type(vbasoftware_database, payment_type, opts = {})
      delete_prem_payment_type_with_http_info(vbasoftware_database, payment_type, opts)
      nil
    end

    # Delete PremPaymentType
    # Deletes an PremPaymentType
    # @param vbasoftware_database [String] Target database
    # @param payment_type [String] Payment Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_prem_payment_type_with_http_info(vbasoftware_database, payment_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumPaymentTypesApi.delete_prem_payment_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumPaymentTypesApi.delete_prem_payment_type"
      end
      # verify the required parameter 'payment_type' is set
      if @api_client.config.client_side_validation && payment_type.nil?
        fail ArgumentError, "Missing the required parameter 'payment_type' when calling PremiumPaymentTypesApi.delete_prem_payment_type"
      end
      # resource path
      local_var_path = '/premium-payment-types/{paymentType}'.sub('{' + 'paymentType' + '}', CGI.escape(payment_type.to_s))

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
        :operation => :"PremiumPaymentTypesApi.delete_prem_payment_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumPaymentTypesApi#delete_prem_payment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PremPaymentType
    # Gets PremPaymentType
    # @param vbasoftware_database [String] Target database
    # @param payment_type [String] Payment Type
    # @param [Hash] opts the optional parameters
    # @return [PremPaymentTypeVBAResponse]
    def get_prem_payment_type(vbasoftware_database, payment_type, opts = {})
      data, _status_code, _headers = get_prem_payment_type_with_http_info(vbasoftware_database, payment_type, opts)
      data
    end

    # Get PremPaymentType
    # Gets PremPaymentType
    # @param vbasoftware_database [String] Target database
    # @param payment_type [String] Payment Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremPaymentTypeVBAResponse, Integer, Hash)>] PremPaymentTypeVBAResponse data, response status code and response headers
    def get_prem_payment_type_with_http_info(vbasoftware_database, payment_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumPaymentTypesApi.get_prem_payment_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumPaymentTypesApi.get_prem_payment_type"
      end
      # verify the required parameter 'payment_type' is set
      if @api_client.config.client_side_validation && payment_type.nil?
        fail ArgumentError, "Missing the required parameter 'payment_type' when calling PremiumPaymentTypesApi.get_prem_payment_type"
      end
      # resource path
      local_var_path = '/premium-payment-types/{paymentType}'.sub('{' + 'paymentType' + '}', CGI.escape(payment_type.to_s))

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
      return_type = opts[:debug_return_type] || 'PremPaymentTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumPaymentTypesApi.get_prem_payment_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumPaymentTypesApi#get_prem_payment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PremPaymentType
    # Lists all PremPaymentType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PremPaymentTypeListVBAResponse]
    def list_prem_payment_type(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_prem_payment_type_with_http_info(vbasoftware_database, opts)
      data
    end

    # List PremPaymentType
    # Lists all PremPaymentType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PremPaymentTypeListVBAResponse, Integer, Hash)>] PremPaymentTypeListVBAResponse data, response status code and response headers
    def list_prem_payment_type_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumPaymentTypesApi.list_prem_payment_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumPaymentTypesApi.list_prem_payment_type"
      end
      # resource path
      local_var_path = '/premium-payment-types'

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
      return_type = opts[:debug_return_type] || 'PremPaymentTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumPaymentTypesApi.list_prem_payment_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumPaymentTypesApi#list_prem_payment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PremPaymentType
    # Create or Update multiple PremPaymentType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_payment_type [Array<PremPaymentType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_prem_payment_type(vbasoftware_database, prem_payment_type, opts = {})
      data, _status_code, _headers = update_batch_prem_payment_type_with_http_info(vbasoftware_database, prem_payment_type, opts)
      data
    end

    # Create or Update Batch PremPaymentType
    # Create or Update multiple PremPaymentType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_payment_type [Array<PremPaymentType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_prem_payment_type_with_http_info(vbasoftware_database, prem_payment_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumPaymentTypesApi.update_batch_prem_payment_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumPaymentTypesApi.update_batch_prem_payment_type"
      end
      # verify the required parameter 'prem_payment_type' is set
      if @api_client.config.client_side_validation && prem_payment_type.nil?
        fail ArgumentError, "Missing the required parameter 'prem_payment_type' when calling PremiumPaymentTypesApi.update_batch_prem_payment_type"
      end
      # resource path
      local_var_path = '/premium-payment-types-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_payment_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumPaymentTypesApi.update_batch_prem_payment_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumPaymentTypesApi#update_batch_prem_payment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PremPaymentType
    # Updates a specific PremPaymentType.
    # @param vbasoftware_database [String] Target database
    # @param payment_type [String] Payment Type
    # @param prem_payment_type [PremPaymentType] 
    # @param [Hash] opts the optional parameters
    # @return [PremPaymentTypeVBAResponse]
    def update_prem_payment_type(vbasoftware_database, payment_type, prem_payment_type, opts = {})
      data, _status_code, _headers = update_prem_payment_type_with_http_info(vbasoftware_database, payment_type, prem_payment_type, opts)
      data
    end

    # Update PremPaymentType
    # Updates a specific PremPaymentType.
    # @param vbasoftware_database [String] Target database
    # @param payment_type [String] Payment Type
    # @param prem_payment_type [PremPaymentType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremPaymentTypeVBAResponse, Integer, Hash)>] PremPaymentTypeVBAResponse data, response status code and response headers
    def update_prem_payment_type_with_http_info(vbasoftware_database, payment_type, prem_payment_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumPaymentTypesApi.update_prem_payment_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumPaymentTypesApi.update_prem_payment_type"
      end
      # verify the required parameter 'payment_type' is set
      if @api_client.config.client_side_validation && payment_type.nil?
        fail ArgumentError, "Missing the required parameter 'payment_type' when calling PremiumPaymentTypesApi.update_prem_payment_type"
      end
      # verify the required parameter 'prem_payment_type' is set
      if @api_client.config.client_side_validation && prem_payment_type.nil?
        fail ArgumentError, "Missing the required parameter 'prem_payment_type' when calling PremiumPaymentTypesApi.update_prem_payment_type"
      end
      # resource path
      local_var_path = '/premium-payment-types/{paymentType}'.sub('{' + 'paymentType' + '}', CGI.escape(payment_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_payment_type)

      # return_type
      return_type = opts[:debug_return_type] || 'PremPaymentTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumPaymentTypesApi.update_prem_payment_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumPaymentTypesApi#update_prem_payment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
