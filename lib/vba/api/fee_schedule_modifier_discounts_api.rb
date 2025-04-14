=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class FeeScheduleModifierDiscountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create FeeSchedModifierDiscount
    # Creates a new FeeSchedModifierDiscount
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount [FeeSchedModifierDiscount] 
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedModifierDiscountVBAResponse]
    def create_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount, opts = {})
      data, _status_code, _headers = create_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount, opts)
      data
    end

    # Create FeeSchedModifierDiscount
    # Creates a new FeeSchedModifierDiscount
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount [FeeSchedModifierDiscount] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedModifierDiscountVBAResponse, Integer, Hash)>] FeeSchedModifierDiscountVBAResponse data, response status code and response headers
    def create_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleModifierDiscountsApi.create_fee_sched_modifier_discount ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleModifierDiscountsApi.create_fee_sched_modifier_discount"
      end
      # verify the required parameter 'fee_sched_modifier_discount' is set
      if @api_client.config.client_side_validation && fee_sched_modifier_discount.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_modifier_discount' when calling FeeScheduleModifierDiscountsApi.create_fee_sched_modifier_discount"
      end
      # resource path
      local_var_path = '/fee-schedule-modifier-discounts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_modifier_discount)

      # return_type
      return_type = opts[:debug_return_type] || 'FeeSchedModifierDiscountVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleModifierDiscountsApi.create_fee_sched_modifier_discount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleModifierDiscountsApi#create_fee_sched_modifier_discount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FeeSchedModifierDiscount
    # Deletes an FeeSchedModifierDiscount
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount_key [Integer] FeeSchedModifierDiscount Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount_key, opts = {})
      delete_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key, opts)
      nil
    end

    # Delete FeeSchedModifierDiscount
    # Deletes an FeeSchedModifierDiscount
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount_key [Integer] FeeSchedModifierDiscount Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleModifierDiscountsApi.delete_fee_sched_modifier_discount ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleModifierDiscountsApi.delete_fee_sched_modifier_discount"
      end
      # verify the required parameter 'fee_sched_modifier_discount_key' is set
      if @api_client.config.client_side_validation && fee_sched_modifier_discount_key.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_modifier_discount_key' when calling FeeScheduleModifierDiscountsApi.delete_fee_sched_modifier_discount"
      end
      # resource path
      local_var_path = '/fee-schedule-modifier-discounts/{feeSchedModifierDiscountKey}'.sub('{' + 'feeSchedModifierDiscountKey' + '}', CGI.escape(fee_sched_modifier_discount_key.to_s))

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
        :operation => :"FeeScheduleModifierDiscountsApi.delete_fee_sched_modifier_discount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleModifierDiscountsApi#delete_fee_sched_modifier_discount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FeeSchedModifierDiscount
    # Gets FeeSchedModifierDiscount
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount_key [Integer] FeeSchedModifierDiscount Key
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedModifierDiscountVBAResponse]
    def get_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount_key, opts = {})
      data, _status_code, _headers = get_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key, opts)
      data
    end

    # Get FeeSchedModifierDiscount
    # Gets FeeSchedModifierDiscount
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount_key [Integer] FeeSchedModifierDiscount Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedModifierDiscountVBAResponse, Integer, Hash)>] FeeSchedModifierDiscountVBAResponse data, response status code and response headers
    def get_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleModifierDiscountsApi.get_fee_sched_modifier_discount ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleModifierDiscountsApi.get_fee_sched_modifier_discount"
      end
      # verify the required parameter 'fee_sched_modifier_discount_key' is set
      if @api_client.config.client_side_validation && fee_sched_modifier_discount_key.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_modifier_discount_key' when calling FeeScheduleModifierDiscountsApi.get_fee_sched_modifier_discount"
      end
      # resource path
      local_var_path = '/fee-schedule-modifier-discounts/{feeSchedModifierDiscountKey}'.sub('{' + 'feeSchedModifierDiscountKey' + '}', CGI.escape(fee_sched_modifier_discount_key.to_s))

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
      return_type = opts[:debug_return_type] || 'FeeSchedModifierDiscountVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleModifierDiscountsApi.get_fee_sched_modifier_discount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleModifierDiscountsApi#get_fee_sched_modifier_discount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FeeSchedModifierDiscount
    # Lists all FeeSchedModifierDiscount
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [FeeSchedModifierDiscountListVBAResponse]
    def list_fee_sched_modifier_discount(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_fee_sched_modifier_discount_with_http_info(vbasoftware_database, opts)
      data
    end

    # List FeeSchedModifierDiscount
    # Lists all FeeSchedModifierDiscount
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(FeeSchedModifierDiscountListVBAResponse, Integer, Hash)>] FeeSchedModifierDiscountListVBAResponse data, response status code and response headers
    def list_fee_sched_modifier_discount_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleModifierDiscountsApi.list_fee_sched_modifier_discount ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleModifierDiscountsApi.list_fee_sched_modifier_discount"
      end
      # resource path
      local_var_path = '/fee-schedule-modifier-discounts'

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
      return_type = opts[:debug_return_type] || 'FeeSchedModifierDiscountListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleModifierDiscountsApi.list_fee_sched_modifier_discount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleModifierDiscountsApi#list_fee_sched_modifier_discount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch FeeSchedModifierDiscount
    # Create or Update multiple FeeSchedModifierDiscount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount [Array<FeeSchedModifierDiscount>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount, opts = {})
      data, _status_code, _headers = update_batch_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount, opts)
      data
    end

    # Create or Update Batch FeeSchedModifierDiscount
    # Create or Update multiple FeeSchedModifierDiscount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount [Array<FeeSchedModifierDiscount>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleModifierDiscountsApi.update_batch_fee_sched_modifier_discount ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleModifierDiscountsApi.update_batch_fee_sched_modifier_discount"
      end
      # verify the required parameter 'fee_sched_modifier_discount' is set
      if @api_client.config.client_side_validation && fee_sched_modifier_discount.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_modifier_discount' when calling FeeScheduleModifierDiscountsApi.update_batch_fee_sched_modifier_discount"
      end
      # resource path
      local_var_path = '/fee-schedule-modifier-discounts-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_modifier_discount)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleModifierDiscountsApi.update_batch_fee_sched_modifier_discount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleModifierDiscountsApi#update_batch_fee_sched_modifier_discount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update FeeSchedModifierDiscount
    # Updates a specific FeeSchedModifierDiscount.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount_key [Integer] FeeSchedModifierDiscount Key
    # @param fee_sched_modifier_discount [FeeSchedModifierDiscount] 
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedModifierDiscountVBAResponse]
    def update_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount_key, fee_sched_modifier_discount, opts = {})
      data, _status_code, _headers = update_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key, fee_sched_modifier_discount, opts)
      data
    end

    # Update FeeSchedModifierDiscount
    # Updates a specific FeeSchedModifierDiscount.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_modifier_discount_key [Integer] FeeSchedModifierDiscount Key
    # @param fee_sched_modifier_discount [FeeSchedModifierDiscount] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedModifierDiscountVBAResponse, Integer, Hash)>] FeeSchedModifierDiscountVBAResponse data, response status code and response headers
    def update_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key, fee_sched_modifier_discount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleModifierDiscountsApi.update_fee_sched_modifier_discount ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleModifierDiscountsApi.update_fee_sched_modifier_discount"
      end
      # verify the required parameter 'fee_sched_modifier_discount_key' is set
      if @api_client.config.client_side_validation && fee_sched_modifier_discount_key.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_modifier_discount_key' when calling FeeScheduleModifierDiscountsApi.update_fee_sched_modifier_discount"
      end
      # verify the required parameter 'fee_sched_modifier_discount' is set
      if @api_client.config.client_side_validation && fee_sched_modifier_discount.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_modifier_discount' when calling FeeScheduleModifierDiscountsApi.update_fee_sched_modifier_discount"
      end
      # resource path
      local_var_path = '/fee-schedule-modifier-discounts/{feeSchedModifierDiscountKey}'.sub('{' + 'feeSchedModifierDiscountKey' + '}', CGI.escape(fee_sched_modifier_discount_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_modifier_discount)

      # return_type
      return_type = opts[:debug_return_type] || 'FeeSchedModifierDiscountVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleModifierDiscountsApi.update_fee_sched_modifier_discount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleModifierDiscountsApi#update_fee_sched_modifier_discount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
