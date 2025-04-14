=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ZelisCostContainmentEOBCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CostContainZelisEOBCode
    # Creates a new CostContainZelisEOBCode
    # @param vbasoftware_database [String] Target database
    # @param cost_contain_zelis_eob_code [CostContainZelisEOBCode] 
    # @param [Hash] opts the optional parameters
    # @return [CostContainZelisEOBCodeVBAResponse]
    def create_cost_contain_zelis_eob_code(vbasoftware_database, cost_contain_zelis_eob_code, opts = {})
      data, _status_code, _headers = create_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, cost_contain_zelis_eob_code, opts)
      data
    end

    # Create CostContainZelisEOBCode
    # Creates a new CostContainZelisEOBCode
    # @param vbasoftware_database [String] Target database
    # @param cost_contain_zelis_eob_code [CostContainZelisEOBCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostContainZelisEOBCodeVBAResponse, Integer, Hash)>] CostContainZelisEOBCodeVBAResponse data, response status code and response headers
    def create_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, cost_contain_zelis_eob_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentEOBCodesApi.create_cost_contain_zelis_eob_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentEOBCodesApi.create_cost_contain_zelis_eob_code"
      end
      # verify the required parameter 'cost_contain_zelis_eob_code' is set
      if @api_client.config.client_side_validation && cost_contain_zelis_eob_code.nil?
        fail ArgumentError, "Missing the required parameter 'cost_contain_zelis_eob_code' when calling ZelisCostContainmentEOBCodesApi.create_cost_contain_zelis_eob_code"
      end
      # resource path
      local_var_path = '/zelis-eob-codes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cost_contain_zelis_eob_code)

      # return_type
      return_type = opts[:debug_return_type] || 'CostContainZelisEOBCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentEOBCodesApi.create_cost_contain_zelis_eob_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentEOBCodesApi#create_cost_contain_zelis_eob_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CostContainZelisEOBCode
    # Deletes an CostContainZelisEOBCode
    # @param vbasoftware_database [String] Target database
    # @param eob_code [String] EOBCode
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_cost_contain_zelis_eob_code(vbasoftware_database, eob_code, opts = {})
      delete_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code, opts)
      nil
    end

    # Delete CostContainZelisEOBCode
    # Deletes an CostContainZelisEOBCode
    # @param vbasoftware_database [String] Target database
    # @param eob_code [String] EOBCode
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentEOBCodesApi.delete_cost_contain_zelis_eob_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentEOBCodesApi.delete_cost_contain_zelis_eob_code"
      end
      # verify the required parameter 'eob_code' is set
      if @api_client.config.client_side_validation && eob_code.nil?
        fail ArgumentError, "Missing the required parameter 'eob_code' when calling ZelisCostContainmentEOBCodesApi.delete_cost_contain_zelis_eob_code"
      end
      # resource path
      local_var_path = '/zelis-eob-codes/{eobCode}'.sub('{' + 'eobCode' + '}', CGI.escape(eob_code.to_s))

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
        :operation => :"ZelisCostContainmentEOBCodesApi.delete_cost_contain_zelis_eob_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentEOBCodesApi#delete_cost_contain_zelis_eob_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CostContainZelisEOBCode
    # Gets CostContainZelisEOBCode
    # @param vbasoftware_database [String] Target database
    # @param eob_code [String] EOBCode
    # @param [Hash] opts the optional parameters
    # @return [CostContainZelisEOBCodeVBAResponse]
    def get_cost_contain_zelis_eob_code(vbasoftware_database, eob_code, opts = {})
      data, _status_code, _headers = get_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code, opts)
      data
    end

    # Get CostContainZelisEOBCode
    # Gets CostContainZelisEOBCode
    # @param vbasoftware_database [String] Target database
    # @param eob_code [String] EOBCode
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostContainZelisEOBCodeVBAResponse, Integer, Hash)>] CostContainZelisEOBCodeVBAResponse data, response status code and response headers
    def get_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentEOBCodesApi.get_cost_contain_zelis_eob_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentEOBCodesApi.get_cost_contain_zelis_eob_code"
      end
      # verify the required parameter 'eob_code' is set
      if @api_client.config.client_side_validation && eob_code.nil?
        fail ArgumentError, "Missing the required parameter 'eob_code' when calling ZelisCostContainmentEOBCodesApi.get_cost_contain_zelis_eob_code"
      end
      # resource path
      local_var_path = '/zelis-eob-codes/{eobCode}'.sub('{' + 'eobCode' + '}', CGI.escape(eob_code.to_s))

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
      return_type = opts[:debug_return_type] || 'CostContainZelisEOBCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentEOBCodesApi.get_cost_contain_zelis_eob_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentEOBCodesApi#get_cost_contain_zelis_eob_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CostContainZelisEOBCode
    # Lists all CostContainZelisEOBCode
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CostContainZelisEOBCodeListVBAResponse]
    def list_cost_contain_zelis_eob_code(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CostContainZelisEOBCode
    # Lists all CostContainZelisEOBCode
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CostContainZelisEOBCodeListVBAResponse, Integer, Hash)>] CostContainZelisEOBCodeListVBAResponse data, response status code and response headers
    def list_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentEOBCodesApi.list_cost_contain_zelis_eob_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentEOBCodesApi.list_cost_contain_zelis_eob_code"
      end
      # resource path
      local_var_path = '/zelis-eob-codes'

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
      return_type = opts[:debug_return_type] || 'CostContainZelisEOBCodeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentEOBCodesApi.list_cost_contain_zelis_eob_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentEOBCodesApi#list_cost_contain_zelis_eob_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CostContainZelisEOBCode
    # Create or Update multiple CostContainZelisEOBCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param cost_contain_zelis_eob_code [Array<CostContainZelisEOBCode>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_cost_contain_zelis_eob_code(vbasoftware_database, cost_contain_zelis_eob_code, opts = {})
      data, _status_code, _headers = update_batch_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, cost_contain_zelis_eob_code, opts)
      data
    end

    # Create or Update Batch CostContainZelisEOBCode
    # Create or Update multiple CostContainZelisEOBCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param cost_contain_zelis_eob_code [Array<CostContainZelisEOBCode>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, cost_contain_zelis_eob_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentEOBCodesApi.update_batch_cost_contain_zelis_eob_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentEOBCodesApi.update_batch_cost_contain_zelis_eob_code"
      end
      # verify the required parameter 'cost_contain_zelis_eob_code' is set
      if @api_client.config.client_side_validation && cost_contain_zelis_eob_code.nil?
        fail ArgumentError, "Missing the required parameter 'cost_contain_zelis_eob_code' when calling ZelisCostContainmentEOBCodesApi.update_batch_cost_contain_zelis_eob_code"
      end
      # resource path
      local_var_path = '/zelis-eob-codes-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cost_contain_zelis_eob_code)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentEOBCodesApi.update_batch_cost_contain_zelis_eob_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentEOBCodesApi#update_batch_cost_contain_zelis_eob_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CostContainZelisEOBCode
    # Updates a specific CostContainZelisEOBCode.
    # @param vbasoftware_database [String] Target database
    # @param eob_code [String] EOBCode
    # @param cost_contain_zelis_eob_code [CostContainZelisEOBCode] 
    # @param [Hash] opts the optional parameters
    # @return [CostContainZelisEOBCodeVBAResponse]
    def update_cost_contain_zelis_eob_code(vbasoftware_database, eob_code, cost_contain_zelis_eob_code, opts = {})
      data, _status_code, _headers = update_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code, cost_contain_zelis_eob_code, opts)
      data
    end

    # Update CostContainZelisEOBCode
    # Updates a specific CostContainZelisEOBCode.
    # @param vbasoftware_database [String] Target database
    # @param eob_code [String] EOBCode
    # @param cost_contain_zelis_eob_code [CostContainZelisEOBCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostContainZelisEOBCodeVBAResponse, Integer, Hash)>] CostContainZelisEOBCodeVBAResponse data, response status code and response headers
    def update_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code, cost_contain_zelis_eob_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentEOBCodesApi.update_cost_contain_zelis_eob_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentEOBCodesApi.update_cost_contain_zelis_eob_code"
      end
      # verify the required parameter 'eob_code' is set
      if @api_client.config.client_side_validation && eob_code.nil?
        fail ArgumentError, "Missing the required parameter 'eob_code' when calling ZelisCostContainmentEOBCodesApi.update_cost_contain_zelis_eob_code"
      end
      # verify the required parameter 'cost_contain_zelis_eob_code' is set
      if @api_client.config.client_side_validation && cost_contain_zelis_eob_code.nil?
        fail ArgumentError, "Missing the required parameter 'cost_contain_zelis_eob_code' when calling ZelisCostContainmentEOBCodesApi.update_cost_contain_zelis_eob_code"
      end
      # resource path
      local_var_path = '/zelis-eob-codes/{eobCode}'.sub('{' + 'eobCode' + '}', CGI.escape(eob_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cost_contain_zelis_eob_code)

      # return_type
      return_type = opts[:debug_return_type] || 'CostContainZelisEOBCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentEOBCodesApi.update_cost_contain_zelis_eob_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentEOBCodesApi#update_cost_contain_zelis_eob_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
