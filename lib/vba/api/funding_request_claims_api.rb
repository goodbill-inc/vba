=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class FundingRequestClaimsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create FundingRequestClaim
    # Creates a new FundingRequestClaim
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param funding_request_claim [FundingRequestClaim] 
    # @param [Hash] opts the optional parameters
    # @return [FundingRequestClaimVBAResponse]
    def create_funding_request_claim(vbasoftware_database, request_key, funding_request_claim, opts = {})
      data, _status_code, _headers = create_funding_request_claim_with_http_info(vbasoftware_database, request_key, funding_request_claim, opts)
      data
    end

    # Create FundingRequestClaim
    # Creates a new FundingRequestClaim
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param funding_request_claim [FundingRequestClaim] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingRequestClaimVBAResponse, Integer, Hash)>] FundingRequestClaimVBAResponse data, response status code and response headers
    def create_funding_request_claim_with_http_info(vbasoftware_database, request_key, funding_request_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestClaimsApi.create_funding_request_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestClaimsApi.create_funding_request_claim"
      end
      # verify the required parameter 'request_key' is set
      if @api_client.config.client_side_validation && request_key.nil?
        fail ArgumentError, "Missing the required parameter 'request_key' when calling FundingRequestClaimsApi.create_funding_request_claim"
      end
      # verify the required parameter 'funding_request_claim' is set
      if @api_client.config.client_side_validation && funding_request_claim.nil?
        fail ArgumentError, "Missing the required parameter 'funding_request_claim' when calling FundingRequestClaimsApi.create_funding_request_claim"
      end
      # resource path
      local_var_path = '/funding-requests/{requestKey}/claims'.sub('{' + 'requestKey' + '}', CGI.escape(request_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_request_claim)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingRequestClaimVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestClaimsApi.create_funding_request_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestClaimsApi#create_funding_request_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FundingRequestClaim
    # Deletes an FundingRequestClaim
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_funding_request_claim(vbasoftware_database, request_key, batch_number, batch_claim, opts = {})
      delete_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim, opts)
      nil
    end

    # Delete FundingRequestClaim
    # Deletes an FundingRequestClaim
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestClaimsApi.delete_funding_request_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestClaimsApi.delete_funding_request_claim"
      end
      # verify the required parameter 'request_key' is set
      if @api_client.config.client_side_validation && request_key.nil?
        fail ArgumentError, "Missing the required parameter 'request_key' when calling FundingRequestClaimsApi.delete_funding_request_claim"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling FundingRequestClaimsApi.delete_funding_request_claim"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling FundingRequestClaimsApi.delete_funding_request_claim"
      end
      # resource path
      local_var_path = '/funding-requests/{requestKey}/claims/{batchNumber}/{batchClaim}'.sub('{' + 'requestKey' + '}', CGI.escape(request_key.to_s)).sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

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
        :operation => :"FundingRequestClaimsApi.delete_funding_request_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestClaimsApi#delete_funding_request_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FundingRequestClaim
    # Gets FundingRequestClaim
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @return [FundingRequestClaimVBAResponse]
    def get_funding_request_claim(vbasoftware_database, request_key, batch_number, batch_claim, opts = {})
      data, _status_code, _headers = get_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim, opts)
      data
    end

    # Get FundingRequestClaim
    # Gets FundingRequestClaim
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingRequestClaimVBAResponse, Integer, Hash)>] FundingRequestClaimVBAResponse data, response status code and response headers
    def get_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestClaimsApi.get_funding_request_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestClaimsApi.get_funding_request_claim"
      end
      # verify the required parameter 'request_key' is set
      if @api_client.config.client_side_validation && request_key.nil?
        fail ArgumentError, "Missing the required parameter 'request_key' when calling FundingRequestClaimsApi.get_funding_request_claim"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling FundingRequestClaimsApi.get_funding_request_claim"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling FundingRequestClaimsApi.get_funding_request_claim"
      end
      # resource path
      local_var_path = '/funding-requests/{requestKey}/claims/{batchNumber}/{batchClaim}'.sub('{' + 'requestKey' + '}', CGI.escape(request_key.to_s)).sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

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
      return_type = opts[:debug_return_type] || 'FundingRequestClaimVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestClaimsApi.get_funding_request_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestClaimsApi#get_funding_request_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FundingRequestClaim
    # Lists all FundingRequestClaim for the given requestKey
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [FundingRequestClaimListVBAResponse]
    def list_funding_request_claim(vbasoftware_database, request_key, opts = {})
      data, _status_code, _headers = list_funding_request_claim_with_http_info(vbasoftware_database, request_key, opts)
      data
    end

    # List FundingRequestClaim
    # Lists all FundingRequestClaim for the given requestKey
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(FundingRequestClaimListVBAResponse, Integer, Hash)>] FundingRequestClaimListVBAResponse data, response status code and response headers
    def list_funding_request_claim_with_http_info(vbasoftware_database, request_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestClaimsApi.list_funding_request_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestClaimsApi.list_funding_request_claim"
      end
      # verify the required parameter 'request_key' is set
      if @api_client.config.client_side_validation && request_key.nil?
        fail ArgumentError, "Missing the required parameter 'request_key' when calling FundingRequestClaimsApi.list_funding_request_claim"
      end
      # resource path
      local_var_path = '/funding-requests/{requestKey}/claims'.sub('{' + 'requestKey' + '}', CGI.escape(request_key.to_s))

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
      return_type = opts[:debug_return_type] || 'FundingRequestClaimListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestClaimsApi.list_funding_request_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestClaimsApi#list_funding_request_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FundingRequestClaim Summary
    # Lists all FundingRequestClaim Summary for the given requestKey.  The Summary view has additional computed fields that are ot present on the FundingRequestClaim object.
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param [Hash] opts the optional parameters
    # @return [VBAFundingRequestClaimSummaryListVBAResponse]
    def list_funding_request_claim_summary(vbasoftware_database, request_key, opts = {})
      data, _status_code, _headers = list_funding_request_claim_summary_with_http_info(vbasoftware_database, request_key, opts)
      data
    end

    # List FundingRequestClaim Summary
    # Lists all FundingRequestClaim Summary for the given requestKey.  The Summary view has additional computed fields that are ot present on the FundingRequestClaim object.
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAFundingRequestClaimSummaryListVBAResponse, Integer, Hash)>] VBAFundingRequestClaimSummaryListVBAResponse data, response status code and response headers
    def list_funding_request_claim_summary_with_http_info(vbasoftware_database, request_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestClaimsApi.list_funding_request_claim_summary ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestClaimsApi.list_funding_request_claim_summary"
      end
      # verify the required parameter 'request_key' is set
      if @api_client.config.client_side_validation && request_key.nil?
        fail ArgumentError, "Missing the required parameter 'request_key' when calling FundingRequestClaimsApi.list_funding_request_claim_summary"
      end
      # resource path
      local_var_path = '/funding-requests/{requestKey}/claims-summary'.sub('{' + 'requestKey' + '}', CGI.escape(request_key.to_s))

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
      return_type = opts[:debug_return_type] || 'VBAFundingRequestClaimSummaryListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestClaimsApi.list_funding_request_claim_summary",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestClaimsApi#list_funding_request_claim_summary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch FundingRequestClaim
    # Create or Update multiple FundingRequestClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param funding_request_claim [Array<FundingRequestClaim>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_funding_request_claim(vbasoftware_database, request_key, funding_request_claim, opts = {})
      data, _status_code, _headers = update_batch_funding_request_claim_with_http_info(vbasoftware_database, request_key, funding_request_claim, opts)
      data
    end

    # Create or Update Batch FundingRequestClaim
    # Create or Update multiple FundingRequestClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param funding_request_claim [Array<FundingRequestClaim>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_funding_request_claim_with_http_info(vbasoftware_database, request_key, funding_request_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestClaimsApi.update_batch_funding_request_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestClaimsApi.update_batch_funding_request_claim"
      end
      # verify the required parameter 'request_key' is set
      if @api_client.config.client_side_validation && request_key.nil?
        fail ArgumentError, "Missing the required parameter 'request_key' when calling FundingRequestClaimsApi.update_batch_funding_request_claim"
      end
      # verify the required parameter 'funding_request_claim' is set
      if @api_client.config.client_side_validation && funding_request_claim.nil?
        fail ArgumentError, "Missing the required parameter 'funding_request_claim' when calling FundingRequestClaimsApi.update_batch_funding_request_claim"
      end
      # resource path
      local_var_path = '/funding-requests/{requestKey}/claims-batch'.sub('{' + 'requestKey' + '}', CGI.escape(request_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_request_claim)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestClaimsApi.update_batch_funding_request_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestClaimsApi#update_batch_funding_request_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update FundingRequestClaim
    # Updates a specific FundingRequestClaim.
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param funding_request_claim [FundingRequestClaim] 
    # @param [Hash] opts the optional parameters
    # @return [FundingRequestClaimVBAResponse]
    def update_funding_request_claim(vbasoftware_database, request_key, batch_number, batch_claim, funding_request_claim, opts = {})
      data, _status_code, _headers = update_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim, funding_request_claim, opts)
      data
    end

    # Update FundingRequestClaim
    # Updates a specific FundingRequestClaim.
    # @param vbasoftware_database [String] Target database
    # @param request_key [Integer] Request Key
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param funding_request_claim [FundingRequestClaim] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingRequestClaimVBAResponse, Integer, Hash)>] FundingRequestClaimVBAResponse data, response status code and response headers
    def update_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim, funding_request_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestClaimsApi.update_funding_request_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestClaimsApi.update_funding_request_claim"
      end
      # verify the required parameter 'request_key' is set
      if @api_client.config.client_side_validation && request_key.nil?
        fail ArgumentError, "Missing the required parameter 'request_key' when calling FundingRequestClaimsApi.update_funding_request_claim"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling FundingRequestClaimsApi.update_funding_request_claim"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling FundingRequestClaimsApi.update_funding_request_claim"
      end
      # verify the required parameter 'funding_request_claim' is set
      if @api_client.config.client_side_validation && funding_request_claim.nil?
        fail ArgumentError, "Missing the required parameter 'funding_request_claim' when calling FundingRequestClaimsApi.update_funding_request_claim"
      end
      # resource path
      local_var_path = '/funding-requests/{requestKey}/claims/{batchNumber}/{batchClaim}'.sub('{' + 'requestKey' + '}', CGI.escape(request_key.to_s)).sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_request_claim)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingRequestClaimVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestClaimsApi.update_funding_request_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestClaimsApi#update_funding_request_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
