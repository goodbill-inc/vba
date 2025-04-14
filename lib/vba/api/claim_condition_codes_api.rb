=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimConditionCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimConditionCode
    # Creates a new ClaimConditionCode
    # @param vbasoftware_database [String] Target database
    # @param claim_condition_code [ClaimConditionCode] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimConditionCodeVBAResponse]
    def create_claim_condition_code(vbasoftware_database, claim_condition_code, opts = {})
      data, _status_code, _headers = create_claim_condition_code_with_http_info(vbasoftware_database, claim_condition_code, opts)
      data
    end

    # Create ClaimConditionCode
    # Creates a new ClaimConditionCode
    # @param vbasoftware_database [String] Target database
    # @param claim_condition_code [ClaimConditionCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimConditionCodeVBAResponse, Integer, Hash)>] ClaimConditionCodeVBAResponse data, response status code and response headers
    def create_claim_condition_code_with_http_info(vbasoftware_database, claim_condition_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimConditionCodesApi.create_claim_condition_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimConditionCodesApi.create_claim_condition_code"
      end
      # verify the required parameter 'claim_condition_code' is set
      if @api_client.config.client_side_validation && claim_condition_code.nil?
        fail ArgumentError, "Missing the required parameter 'claim_condition_code' when calling ClaimConditionCodesApi.create_claim_condition_code"
      end
      # resource path
      local_var_path = '/claim-condition-codes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_condition_code)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimConditionCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimConditionCodesApi.create_claim_condition_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimConditionCodesApi#create_claim_condition_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimConditionCode
    # Deletes an ClaimConditionCode
    # @param vbasoftware_database [String] Target database
    # @param condition_code [String] Condition Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_condition_code(vbasoftware_database, condition_code, opts = {})
      delete_claim_condition_code_with_http_info(vbasoftware_database, condition_code, opts)
      nil
    end

    # Delete ClaimConditionCode
    # Deletes an ClaimConditionCode
    # @param vbasoftware_database [String] Target database
    # @param condition_code [String] Condition Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_condition_code_with_http_info(vbasoftware_database, condition_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimConditionCodesApi.delete_claim_condition_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimConditionCodesApi.delete_claim_condition_code"
      end
      # verify the required parameter 'condition_code' is set
      if @api_client.config.client_side_validation && condition_code.nil?
        fail ArgumentError, "Missing the required parameter 'condition_code' when calling ClaimConditionCodesApi.delete_claim_condition_code"
      end
      # resource path
      local_var_path = '/claim-condition-codes/{conditionCode}'.sub('{' + 'conditionCode' + '}', CGI.escape(condition_code.to_s))

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
        :operation => :"ClaimConditionCodesApi.delete_claim_condition_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimConditionCodesApi#delete_claim_condition_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimConditionCode
    # Gets ClaimConditionCode
    # @param vbasoftware_database [String] Target database
    # @param condition_code [String] Condition Code
    # @param [Hash] opts the optional parameters
    # @return [ClaimConditionCodeVBAResponse]
    def get_claim_condition_code(vbasoftware_database, condition_code, opts = {})
      data, _status_code, _headers = get_claim_condition_code_with_http_info(vbasoftware_database, condition_code, opts)
      data
    end

    # Get ClaimConditionCode
    # Gets ClaimConditionCode
    # @param vbasoftware_database [String] Target database
    # @param condition_code [String] Condition Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimConditionCodeVBAResponse, Integer, Hash)>] ClaimConditionCodeVBAResponse data, response status code and response headers
    def get_claim_condition_code_with_http_info(vbasoftware_database, condition_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimConditionCodesApi.get_claim_condition_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimConditionCodesApi.get_claim_condition_code"
      end
      # verify the required parameter 'condition_code' is set
      if @api_client.config.client_side_validation && condition_code.nil?
        fail ArgumentError, "Missing the required parameter 'condition_code' when calling ClaimConditionCodesApi.get_claim_condition_code"
      end
      # resource path
      local_var_path = '/claim-condition-codes/{conditionCode}'.sub('{' + 'conditionCode' + '}', CGI.escape(condition_code.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimConditionCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimConditionCodesApi.get_claim_condition_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimConditionCodesApi#get_claim_condition_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimConditionCode
    # Lists all ClaimConditionCode
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimConditionCodeListVBAResponse]
    def list_claim_condition_code(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_claim_condition_code_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ClaimConditionCode
    # Lists all ClaimConditionCode
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimConditionCodeListVBAResponse, Integer, Hash)>] ClaimConditionCodeListVBAResponse data, response status code and response headers
    def list_claim_condition_code_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimConditionCodesApi.list_claim_condition_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimConditionCodesApi.list_claim_condition_code"
      end
      # resource path
      local_var_path = '/claim-condition-codes'

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
      return_type = opts[:debug_return_type] || 'ClaimConditionCodeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimConditionCodesApi.list_claim_condition_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimConditionCodesApi#list_claim_condition_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimConditionCode
    # Create or Update multiple ClaimConditionCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_condition_code [Array<ClaimConditionCode>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_condition_code(vbasoftware_database, claim_condition_code, opts = {})
      data, _status_code, _headers = update_batch_claim_condition_code_with_http_info(vbasoftware_database, claim_condition_code, opts)
      data
    end

    # Create or Update Batch ClaimConditionCode
    # Create or Update multiple ClaimConditionCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_condition_code [Array<ClaimConditionCode>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_condition_code_with_http_info(vbasoftware_database, claim_condition_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimConditionCodesApi.update_batch_claim_condition_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimConditionCodesApi.update_batch_claim_condition_code"
      end
      # verify the required parameter 'claim_condition_code' is set
      if @api_client.config.client_side_validation && claim_condition_code.nil?
        fail ArgumentError, "Missing the required parameter 'claim_condition_code' when calling ClaimConditionCodesApi.update_batch_claim_condition_code"
      end
      # resource path
      local_var_path = '/claim-condition-codes-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_condition_code)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimConditionCodesApi.update_batch_claim_condition_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimConditionCodesApi#update_batch_claim_condition_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimConditionCode
    # Updates a specific ClaimConditionCode.
    # @param vbasoftware_database [String] Target database
    # @param condition_code [String] Condition Code
    # @param claim_condition_code [ClaimConditionCode] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimConditionCodeVBAResponse]
    def update_claim_condition_code(vbasoftware_database, condition_code, claim_condition_code, opts = {})
      data, _status_code, _headers = update_claim_condition_code_with_http_info(vbasoftware_database, condition_code, claim_condition_code, opts)
      data
    end

    # Update ClaimConditionCode
    # Updates a specific ClaimConditionCode.
    # @param vbasoftware_database [String] Target database
    # @param condition_code [String] Condition Code
    # @param claim_condition_code [ClaimConditionCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimConditionCodeVBAResponse, Integer, Hash)>] ClaimConditionCodeVBAResponse data, response status code and response headers
    def update_claim_condition_code_with_http_info(vbasoftware_database, condition_code, claim_condition_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimConditionCodesApi.update_claim_condition_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimConditionCodesApi.update_claim_condition_code"
      end
      # verify the required parameter 'condition_code' is set
      if @api_client.config.client_side_validation && condition_code.nil?
        fail ArgumentError, "Missing the required parameter 'condition_code' when calling ClaimConditionCodesApi.update_claim_condition_code"
      end
      # verify the required parameter 'claim_condition_code' is set
      if @api_client.config.client_side_validation && claim_condition_code.nil?
        fail ArgumentError, "Missing the required parameter 'claim_condition_code' when calling ClaimConditionCodesApi.update_claim_condition_code"
      end
      # resource path
      local_var_path = '/claim-condition-codes/{conditionCode}'.sub('{' + 'conditionCode' + '}', CGI.escape(condition_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_condition_code)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimConditionCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimConditionCodesApi.update_claim_condition_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimConditionCodesApi#update_claim_condition_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
