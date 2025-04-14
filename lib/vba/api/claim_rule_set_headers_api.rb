=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimRuleSetHeadersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimRuleSetHeader
    # Creates a new ClaimRuleSetHeader
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header [ClaimRuleSetHeader] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimRuleSetHeaderVBAResponse]
    def create_claim_rule_set_header(vbasoftware_database, claim_rule_set_header, opts = {})
      data, _status_code, _headers = create_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header, opts)
      data
    end

    # Create ClaimRuleSetHeader
    # Creates a new ClaimRuleSetHeader
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header [ClaimRuleSetHeader] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimRuleSetHeaderVBAResponse, Integer, Hash)>] ClaimRuleSetHeaderVBAResponse data, response status code and response headers
    def create_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleSetHeadersApi.create_claim_rule_set_header ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleSetHeadersApi.create_claim_rule_set_header"
      end
      # verify the required parameter 'claim_rule_set_header' is set
      if @api_client.config.client_side_validation && claim_rule_set_header.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_set_header' when calling ClaimRuleSetHeadersApi.create_claim_rule_set_header"
      end
      # resource path
      local_var_path = '/claim-rule-set-headers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_rule_set_header)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimRuleSetHeaderVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleSetHeadersApi.create_claim_rule_set_header",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleSetHeadersApi#create_claim_rule_set_header\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimRuleSetHeader
    # Deletes an ClaimRuleSetHeader
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header_key [Integer] ClaimRuleSetHeader Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_rule_set_header(vbasoftware_database, claim_rule_set_header_key, opts = {})
      delete_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key, opts)
      nil
    end

    # Delete ClaimRuleSetHeader
    # Deletes an ClaimRuleSetHeader
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header_key [Integer] ClaimRuleSetHeader Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleSetHeadersApi.delete_claim_rule_set_header ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleSetHeadersApi.delete_claim_rule_set_header"
      end
      # verify the required parameter 'claim_rule_set_header_key' is set
      if @api_client.config.client_side_validation && claim_rule_set_header_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_set_header_key' when calling ClaimRuleSetHeadersApi.delete_claim_rule_set_header"
      end
      # resource path
      local_var_path = '/claim-rule-set-headers/{claimRuleSetHeaderKey}'.sub('{' + 'claimRuleSetHeaderKey' + '}', CGI.escape(claim_rule_set_header_key.to_s))

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
        :operation => :"ClaimRuleSetHeadersApi.delete_claim_rule_set_header",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleSetHeadersApi#delete_claim_rule_set_header\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimRuleSetHeader
    # Gets ClaimRuleSetHeader
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header_key [Integer] ClaimRuleSetHeader Key
    # @param [Hash] opts the optional parameters
    # @return [ClaimRuleSetHeaderVBAResponse]
    def get_claim_rule_set_header(vbasoftware_database, claim_rule_set_header_key, opts = {})
      data, _status_code, _headers = get_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key, opts)
      data
    end

    # Get ClaimRuleSetHeader
    # Gets ClaimRuleSetHeader
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header_key [Integer] ClaimRuleSetHeader Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimRuleSetHeaderVBAResponse, Integer, Hash)>] ClaimRuleSetHeaderVBAResponse data, response status code and response headers
    def get_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleSetHeadersApi.get_claim_rule_set_header ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleSetHeadersApi.get_claim_rule_set_header"
      end
      # verify the required parameter 'claim_rule_set_header_key' is set
      if @api_client.config.client_side_validation && claim_rule_set_header_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_set_header_key' when calling ClaimRuleSetHeadersApi.get_claim_rule_set_header"
      end
      # resource path
      local_var_path = '/claim-rule-set-headers/{claimRuleSetHeaderKey}'.sub('{' + 'claimRuleSetHeaderKey' + '}', CGI.escape(claim_rule_set_header_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimRuleSetHeaderVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleSetHeadersApi.get_claim_rule_set_header",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleSetHeadersApi#get_claim_rule_set_header\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimRuleSetHeader
    # Lists all ClaimRuleSetHeader
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimRuleSetHeaderListVBAResponse]
    def list_claim_rule_set_header(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_claim_rule_set_header_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ClaimRuleSetHeader
    # Lists all ClaimRuleSetHeader
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimRuleSetHeaderListVBAResponse, Integer, Hash)>] ClaimRuleSetHeaderListVBAResponse data, response status code and response headers
    def list_claim_rule_set_header_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleSetHeadersApi.list_claim_rule_set_header ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleSetHeadersApi.list_claim_rule_set_header"
      end
      # resource path
      local_var_path = '/claim-rule-set-headers'

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
      return_type = opts[:debug_return_type] || 'ClaimRuleSetHeaderListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleSetHeadersApi.list_claim_rule_set_header",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleSetHeadersApi#list_claim_rule_set_header\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimRuleSetHeader
    # Create or Update multiple ClaimRuleSetHeader at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header [Array<ClaimRuleSetHeader>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_rule_set_header(vbasoftware_database, claim_rule_set_header, opts = {})
      data, _status_code, _headers = update_batch_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header, opts)
      data
    end

    # Create or Update Batch ClaimRuleSetHeader
    # Create or Update multiple ClaimRuleSetHeader at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header [Array<ClaimRuleSetHeader>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleSetHeadersApi.update_batch_claim_rule_set_header ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleSetHeadersApi.update_batch_claim_rule_set_header"
      end
      # verify the required parameter 'claim_rule_set_header' is set
      if @api_client.config.client_side_validation && claim_rule_set_header.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_set_header' when calling ClaimRuleSetHeadersApi.update_batch_claim_rule_set_header"
      end
      # resource path
      local_var_path = '/claim-rule-set-headers-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_rule_set_header)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleSetHeadersApi.update_batch_claim_rule_set_header",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleSetHeadersApi#update_batch_claim_rule_set_header\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimRuleSetHeader
    # Updates a specific ClaimRuleSetHeader.
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header_key [Integer] ClaimRuleSetHeader Key
    # @param claim_rule_set_header [ClaimRuleSetHeader] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimRuleSetHeaderVBAResponse]
    def update_claim_rule_set_header(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_header, opts = {})
      data, _status_code, _headers = update_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_header, opts)
      data
    end

    # Update ClaimRuleSetHeader
    # Updates a specific ClaimRuleSetHeader.
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_set_header_key [Integer] ClaimRuleSetHeader Key
    # @param claim_rule_set_header [ClaimRuleSetHeader] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimRuleSetHeaderVBAResponse, Integer, Hash)>] ClaimRuleSetHeaderVBAResponse data, response status code and response headers
    def update_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_header, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleSetHeadersApi.update_claim_rule_set_header ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleSetHeadersApi.update_claim_rule_set_header"
      end
      # verify the required parameter 'claim_rule_set_header_key' is set
      if @api_client.config.client_side_validation && claim_rule_set_header_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_set_header_key' when calling ClaimRuleSetHeadersApi.update_claim_rule_set_header"
      end
      # verify the required parameter 'claim_rule_set_header' is set
      if @api_client.config.client_side_validation && claim_rule_set_header.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_set_header' when calling ClaimRuleSetHeadersApi.update_claim_rule_set_header"
      end
      # resource path
      local_var_path = '/claim-rule-set-headers/{claimRuleSetHeaderKey}'.sub('{' + 'claimRuleSetHeaderKey' + '}', CGI.escape(claim_rule_set_header_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_rule_set_header)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimRuleSetHeaderVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleSetHeadersApi.update_claim_rule_set_header",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleSetHeadersApi#update_claim_rule_set_header\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
