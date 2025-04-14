=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PremiumRatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add Rate from Template
    # Create a new Premium Rate based on the selected Template Rate.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param billing_add_rate_from_template_config [BillingAddRateFromTemplateConfig] 
    # @param [Hash] opts the optional parameters
    # @return [PremRateVBAResponse]
    def add_prem_rate_from_template(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config, opts = {})
      data, _status_code, _headers = add_prem_rate_from_template_with_http_info(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config, opts)
      data
    end

    # Add Rate from Template
    # Create a new Premium Rate based on the selected Template Rate.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param billing_add_rate_from_template_config [BillingAddRateFromTemplateConfig] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateVBAResponse, Integer, Hash)>] PremRateVBAResponse data, response status code and response headers
    def add_prem_rate_from_template_with_http_info(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.add_prem_rate_from_template ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.add_prem_rate_from_template"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRatesApi.add_prem_rate_from_template"
      end
      # verify the required parameter 'billing_add_rate_from_template_config' is set
      if @api_client.config.client_side_validation && billing_add_rate_from_template_config.nil?
        fail ArgumentError, "Missing the required parameter 'billing_add_rate_from_template_config' when calling PremiumRatesApi.add_prem_rate_from_template"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}/add-from-template'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(billing_add_rate_from_template_config)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRateVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.add_prem_rate_from_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#add_prem_rate_from_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change Premium Rates
    # Take a list of Rates and a set of configuration options and change those rates.
    # @param vbasoftware_database [String] Target database
    # @param billing_rate_modify_config [BillingRateModifyConfig] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def billing_rate_change(vbasoftware_database, billing_rate_modify_config, opts = {})
      billing_rate_change_with_http_info(vbasoftware_database, billing_rate_modify_config, opts)
      nil
    end

    # Change Premium Rates
    # Take a list of Rates and a set of configuration options and change those rates.
    # @param vbasoftware_database [String] Target database
    # @param billing_rate_modify_config [BillingRateModifyConfig] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def billing_rate_change_with_http_info(vbasoftware_database, billing_rate_modify_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.billing_rate_change ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.billing_rate_change"
      end
      # verify the required parameter 'billing_rate_modify_config' is set
      if @api_client.config.client_side_validation && billing_rate_modify_config.nil?
        fail ArgumentError, "Missing the required parameter 'billing_rate_modify_config' when calling PremiumRatesApi.billing_rate_change"
      end
      # resource path
      local_var_path = '/billing-rate-change'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(billing_rate_modify_config)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.billing_rate_change",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#billing_rate_change\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Copy Premium Rates
    # Take a list of Rates and a set of configuration options and copy those rates.
    # @param vbasoftware_database [String] Target database
    # @param billing_rate_modify_config [BillingRateModifyConfig] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def billing_rate_copy(vbasoftware_database, billing_rate_modify_config, opts = {})
      billing_rate_copy_with_http_info(vbasoftware_database, billing_rate_modify_config, opts)
      nil
    end

    # Copy Premium Rates
    # Take a list of Rates and a set of configuration options and copy those rates.
    # @param vbasoftware_database [String] Target database
    # @param billing_rate_modify_config [BillingRateModifyConfig] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def billing_rate_copy_with_http_info(vbasoftware_database, billing_rate_modify_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.billing_rate_copy ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.billing_rate_copy"
      end
      # verify the required parameter 'billing_rate_modify_config' is set
      if @api_client.config.client_side_validation && billing_rate_modify_config.nil?
        fail ArgumentError, "Missing the required parameter 'billing_rate_modify_config' when calling PremiumRatesApi.billing_rate_copy"
      end
      # resource path
      local_var_path = '/billing-rate-copy'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(billing_rate_modify_config)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.billing_rate_copy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#billing_rate_copy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create PremRate
    # Creates a new PremRate
    # @param vbasoftware_database [String] Target database
    # @param prem_rate [PremRate] 
    # @param [Hash] opts the optional parameters
    # @return [PremRateVBAResponse]
    def create_prem_rate(vbasoftware_database, prem_rate, opts = {})
      data, _status_code, _headers = create_prem_rate_with_http_info(vbasoftware_database, prem_rate, opts)
      data
    end

    # Create PremRate
    # Creates a new PremRate
    # @param vbasoftware_database [String] Target database
    # @param prem_rate [PremRate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateVBAResponse, Integer, Hash)>] PremRateVBAResponse data, response status code and response headers
    def create_prem_rate_with_http_info(vbasoftware_database, prem_rate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.create_prem_rate ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.create_prem_rate"
      end
      # verify the required parameter 'prem_rate' is set
      if @api_client.config.client_side_validation && prem_rate.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate' when calling PremiumRatesApi.create_prem_rate"
      end
      # resource path
      local_var_path = '/premium-rates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRateVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.create_prem_rate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#create_prem_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PremRate
    # Deletes an PremRate
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_prem_rate(vbasoftware_database, prem_rate_key, opts = {})
      delete_prem_rate_with_http_info(vbasoftware_database, prem_rate_key, opts)
      nil
    end

    # Delete PremRate
    # Deletes an PremRate
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_prem_rate_with_http_info(vbasoftware_database, prem_rate_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.delete_prem_rate ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.delete_prem_rate"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRatesApi.delete_prem_rate"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s))

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
        :operation => :"PremiumRatesApi.delete_prem_rate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#delete_prem_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PremRate
    # Gets PremRate
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param [Hash] opts the optional parameters
    # @return [PremRateVBAResponse]
    def get_prem_rate(vbasoftware_database, prem_rate_key, opts = {})
      data, _status_code, _headers = get_prem_rate_with_http_info(vbasoftware_database, prem_rate_key, opts)
      data
    end

    # Get PremRate
    # Gets PremRate
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateVBAResponse, Integer, Hash)>] PremRateVBAResponse data, response status code and response headers
    def get_prem_rate_with_http_info(vbasoftware_database, prem_rate_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.get_prem_rate ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.get_prem_rate"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRatesApi.get_prem_rate"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s))

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
      return_type = opts[:debug_return_type] || 'PremRateVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.get_prem_rate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#get_prem_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Included PremRate
    # Lists all PremRate included in the specified Group ID and Division ID.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :division_id Division ID
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PremRateListVBAResponse]
    def list_included_prem_rates(vbasoftware_database, group_id, opts = {})
      data, _status_code, _headers = list_included_prem_rates_with_http_info(vbasoftware_database, group_id, opts)
      data
    end

    # List Included PremRate
    # Lists all PremRate included in the specified Group ID and Division ID.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :division_id Division ID
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PremRateListVBAResponse, Integer, Hash)>] PremRateListVBAResponse data, response status code and response headers
    def list_included_prem_rates_with_http_info(vbasoftware_database, group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.list_included_prem_rates ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.list_included_prem_rates"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling PremiumRatesApi.list_included_prem_rates"
      end
      # resource path
      local_var_path = '/included-premium-rates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'groupId'] = group_id
      query_params[:'divisionId'] = opts[:'division_id'] if !opts[:'division_id'].nil?
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
      return_type = opts[:debug_return_type] || 'PremRateListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.list_included_prem_rates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#list_included_prem_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PremRate
    # Lists all PremRate
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prem_rate_type PremRate_Type
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PremRateListVBAResponse]
    def list_prem_rate(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_prem_rate_with_http_info(vbasoftware_database, opts)
      data
    end

    # List PremRate
    # Lists all PremRate
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prem_rate_type PremRate_Type
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PremRateListVBAResponse, Integer, Hash)>] PremRateListVBAResponse data, response status code and response headers
    def list_prem_rate_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.list_prem_rate ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.list_prem_rate"
      end
      # resource path
      local_var_path = '/premium-rates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'premRateType'] = opts[:'prem_rate_type'] if !opts[:'prem_rate_type'].nil?
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
      return_type = opts[:debug_return_type] || 'PremRateListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.list_prem_rate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#list_prem_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Premium Rates nested by Division/Plan/Category/Basis
    # Lists all Premium Rates for the given groupID and have it nested by Division, then by Plan, then by Rate Category, then by Rate Basis.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prem_rate_type PremRate_Type
    # @option opts [String] :group_id Group ID
    # @return [PremRateNestedListVBAResponse]
    def list_prem_rate_nested(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_prem_rate_nested_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Premium Rates nested by Division/Plan/Category/Basis
    # Lists all Premium Rates for the given groupID and have it nested by Division, then by Plan, then by Rate Category, then by Rate Basis.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prem_rate_type PremRate_Type
    # @option opts [String] :group_id Group ID
    # @return [Array<(PremRateNestedListVBAResponse, Integer, Hash)>] PremRateNestedListVBAResponse data, response status code and response headers
    def list_prem_rate_nested_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.list_prem_rate_nested ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.list_prem_rate_nested"
      end
      # resource path
      local_var_path = '/premium-rates-nested'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'premRateType'] = opts[:'prem_rate_type'] if !opts[:'prem_rate_type'].nil?
      query_params[:'groupID'] = opts[:'group_id'] if !opts[:'group_id'].nil?

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
      return_type = opts[:debug_return_type] || 'PremRateNestedListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.list_prem_rate_nested",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#list_prem_rate_nested\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PremRate
    # Create or Update multiple PremRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate [Array<PremRate>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_prem_rate(vbasoftware_database, prem_rate, opts = {})
      data, _status_code, _headers = update_batch_prem_rate_with_http_info(vbasoftware_database, prem_rate, opts)
      data
    end

    # Create or Update Batch PremRate
    # Create or Update multiple PremRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate [Array<PremRate>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_prem_rate_with_http_info(vbasoftware_database, prem_rate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.update_batch_prem_rate ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.update_batch_prem_rate"
      end
      # verify the required parameter 'prem_rate' is set
      if @api_client.config.client_side_validation && prem_rate.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate' when calling PremiumRatesApi.update_batch_prem_rate"
      end
      # resource path
      local_var_path = '/premium-rates-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.update_batch_prem_rate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#update_batch_prem_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PremRate
    # Updates a specific PremRate.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate [PremRate] 
    # @param [Hash] opts the optional parameters
    # @return [PremRateVBAResponse]
    def update_prem_rate(vbasoftware_database, prem_rate_key, prem_rate, opts = {})
      data, _status_code, _headers = update_prem_rate_with_http_info(vbasoftware_database, prem_rate_key, prem_rate, opts)
      data
    end

    # Update PremRate
    # Updates a specific PremRate.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate [PremRate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateVBAResponse, Integer, Hash)>] PremRateVBAResponse data, response status code and response headers
    def update_prem_rate_with_http_info(vbasoftware_database, prem_rate_key, prem_rate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatesApi.update_prem_rate ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatesApi.update_prem_rate"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRatesApi.update_prem_rate"
      end
      # verify the required parameter 'prem_rate' is set
      if @api_client.config.client_side_validation && prem_rate.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate' when calling PremiumRatesApi.update_prem_rate"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRateVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatesApi.update_prem_rate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatesApi#update_prem_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
