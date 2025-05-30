=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ReinsuranceContractTransactionClaimsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ReinsContractTransClaim
    # Creates a new ReinsContractTransClaim
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param reins_contract_trans_claim [ReinsContractTransClaim] 
    # @param [Hash] opts the optional parameters
    # @return [ReinsContractTransClaimVBAResponse]
    def create_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim, opts = {})
      data, _status_code, _headers = create_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim, opts)
      data
    end

    # Create ReinsContractTransClaim
    # Creates a new ReinsContractTransClaim
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param reins_contract_trans_claim [ReinsContractTransClaim] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReinsContractTransClaimVBAResponse, Integer, Hash)>] ReinsContractTransClaimVBAResponse data, response status code and response headers
    def create_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceContractTransactionClaimsApi.create_reins_contract_trans_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceContractTransactionClaimsApi.create_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_key' is set
      if @api_client.config.client_side_validation && reins_contract_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_key' when calling ReinsuranceContractTransactionClaimsApi.create_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_trans_key' is set
      if @api_client.config.client_side_validation && reins_contract_trans_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_trans_key' when calling ReinsuranceContractTransactionClaimsApi.create_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_trans_claim' is set
      if @api_client.config.client_side_validation && reins_contract_trans_claim.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_trans_claim' when calling ReinsuranceContractTransactionClaimsApi.create_reins_contract_trans_claim"
      end
      # resource path
      local_var_path = '/reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims'.sub('{' + 'reinsContractKey' + '}', CGI.escape(reins_contract_key.to_s)).sub('{' + 'reinsContractTransKey' + '}', CGI.escape(reins_contract_trans_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(reins_contract_trans_claim)

      # return_type
      return_type = opts[:debug_return_type] || 'ReinsContractTransClaimVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReinsuranceContractTransactionClaimsApi.create_reins_contract_trans_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceContractTransactionClaimsApi#create_reins_contract_trans_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ReinsContractTransClaim
    # Deletes an ReinsContractTransClaim
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param claim_number [Integer] Claim Number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts = {})
      delete_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts)
      nil
    end

    # Delete ReinsContractTransClaim
    # Deletes an ReinsContractTransClaim
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param claim_number [Integer] Claim Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceContractTransactionClaimsApi.delete_reins_contract_trans_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceContractTransactionClaimsApi.delete_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_key' is set
      if @api_client.config.client_side_validation && reins_contract_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_key' when calling ReinsuranceContractTransactionClaimsApi.delete_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_trans_key' is set
      if @api_client.config.client_side_validation && reins_contract_trans_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_trans_key' when calling ReinsuranceContractTransactionClaimsApi.delete_reins_contract_trans_claim"
      end
      # verify the required parameter 'claim_number' is set
      if @api_client.config.client_side_validation && claim_number.nil?
        fail ArgumentError, "Missing the required parameter 'claim_number' when calling ReinsuranceContractTransactionClaimsApi.delete_reins_contract_trans_claim"
      end
      # resource path
      local_var_path = '/reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber}'.sub('{' + 'reinsContractKey' + '}', CGI.escape(reins_contract_key.to_s)).sub('{' + 'reinsContractTransKey' + '}', CGI.escape(reins_contract_trans_key.to_s)).sub('{' + 'claimNumber' + '}', CGI.escape(claim_number.to_s))

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
        :operation => :"ReinsuranceContractTransactionClaimsApi.delete_reins_contract_trans_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceContractTransactionClaimsApi#delete_reins_contract_trans_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ReinsContractTransClaim
    # Gets ReinsContractTransClaim
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param claim_number [Integer] Claim Number
    # @param [Hash] opts the optional parameters
    # @return [ReinsContractTransClaimVBAResponse]
    def get_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts = {})
      data, _status_code, _headers = get_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts)
      data
    end

    # Get ReinsContractTransClaim
    # Gets ReinsContractTransClaim
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param claim_number [Integer] Claim Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReinsContractTransClaimVBAResponse, Integer, Hash)>] ReinsContractTransClaimVBAResponse data, response status code and response headers
    def get_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceContractTransactionClaimsApi.get_reins_contract_trans_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceContractTransactionClaimsApi.get_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_key' is set
      if @api_client.config.client_side_validation && reins_contract_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_key' when calling ReinsuranceContractTransactionClaimsApi.get_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_trans_key' is set
      if @api_client.config.client_side_validation && reins_contract_trans_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_trans_key' when calling ReinsuranceContractTransactionClaimsApi.get_reins_contract_trans_claim"
      end
      # verify the required parameter 'claim_number' is set
      if @api_client.config.client_side_validation && claim_number.nil?
        fail ArgumentError, "Missing the required parameter 'claim_number' when calling ReinsuranceContractTransactionClaimsApi.get_reins_contract_trans_claim"
      end
      # resource path
      local_var_path = '/reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber}'.sub('{' + 'reinsContractKey' + '}', CGI.escape(reins_contract_key.to_s)).sub('{' + 'reinsContractTransKey' + '}', CGI.escape(reins_contract_trans_key.to_s)).sub('{' + 'claimNumber' + '}', CGI.escape(claim_number.to_s))

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
      return_type = opts[:debug_return_type] || 'ReinsContractTransClaimVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReinsuranceContractTransactionClaimsApi.get_reins_contract_trans_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceContractTransactionClaimsApi#get_reins_contract_trans_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ReinsContractTransClaim
    # Lists all ReinsContractTransClaim for the given reinsContractTransKey
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ReinsContractTransClaimListVBAResponse]
    def list_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts = {})
      data, _status_code, _headers = list_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts)
      data
    end

    # List ReinsContractTransClaim
    # Lists all ReinsContractTransClaim for the given reinsContractTransKey
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ReinsContractTransClaimListVBAResponse, Integer, Hash)>] ReinsContractTransClaimListVBAResponse data, response status code and response headers
    def list_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceContractTransactionClaimsApi.list_reins_contract_trans_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceContractTransactionClaimsApi.list_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_key' is set
      if @api_client.config.client_side_validation && reins_contract_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_key' when calling ReinsuranceContractTransactionClaimsApi.list_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_trans_key' is set
      if @api_client.config.client_side_validation && reins_contract_trans_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_trans_key' when calling ReinsuranceContractTransactionClaimsApi.list_reins_contract_trans_claim"
      end
      # resource path
      local_var_path = '/reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims'.sub('{' + 'reinsContractKey' + '}', CGI.escape(reins_contract_key.to_s)).sub('{' + 'reinsContractTransKey' + '}', CGI.escape(reins_contract_trans_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ReinsContractTransClaimListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReinsuranceContractTransactionClaimsApi.list_reins_contract_trans_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceContractTransactionClaimsApi#list_reins_contract_trans_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ReinsContractTransClaim
    # Create or Update multiple ReinsContractTransClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param reins_contract_trans_claim [Array<ReinsContractTransClaim>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim, opts = {})
      data, _status_code, _headers = update_batch_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim, opts)
      data
    end

    # Create or Update Batch ReinsContractTransClaim
    # Create or Update multiple ReinsContractTransClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param reins_contract_trans_claim [Array<ReinsContractTransClaim>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceContractTransactionClaimsApi.update_batch_reins_contract_trans_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceContractTransactionClaimsApi.update_batch_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_key' is set
      if @api_client.config.client_side_validation && reins_contract_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_key' when calling ReinsuranceContractTransactionClaimsApi.update_batch_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_trans_key' is set
      if @api_client.config.client_side_validation && reins_contract_trans_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_trans_key' when calling ReinsuranceContractTransactionClaimsApi.update_batch_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_trans_claim' is set
      if @api_client.config.client_side_validation && reins_contract_trans_claim.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_trans_claim' when calling ReinsuranceContractTransactionClaimsApi.update_batch_reins_contract_trans_claim"
      end
      # resource path
      local_var_path = '/reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims-batch'.sub('{' + 'reinsContractKey' + '}', CGI.escape(reins_contract_key.to_s)).sub('{' + 'reinsContractTransKey' + '}', CGI.escape(reins_contract_trans_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(reins_contract_trans_claim)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReinsuranceContractTransactionClaimsApi.update_batch_reins_contract_trans_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceContractTransactionClaimsApi#update_batch_reins_contract_trans_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ReinsContractTransClaim
    # Updates a specific ReinsContractTransClaim.
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param claim_number [Integer] Claim Number
    # @param reins_contract_trans_claim [ReinsContractTransClaim] 
    # @param [Hash] opts the optional parameters
    # @return [ReinsContractTransClaimVBAResponse]
    def update_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim, opts = {})
      data, _status_code, _headers = update_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim, opts)
      data
    end

    # Update ReinsContractTransClaim
    # Updates a specific ReinsContractTransClaim.
    # @param vbasoftware_database [String] Target database
    # @param reins_contract_key [Integer] ReinsContract Key
    # @param reins_contract_trans_key [Integer] ReinsContractTrans Key
    # @param claim_number [Integer] Claim Number
    # @param reins_contract_trans_claim [ReinsContractTransClaim] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReinsContractTransClaimVBAResponse, Integer, Hash)>] ReinsContractTransClaimVBAResponse data, response status code and response headers
    def update_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReinsuranceContractTransactionClaimsApi.update_reins_contract_trans_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReinsuranceContractTransactionClaimsApi.update_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_key' is set
      if @api_client.config.client_side_validation && reins_contract_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_key' when calling ReinsuranceContractTransactionClaimsApi.update_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_trans_key' is set
      if @api_client.config.client_side_validation && reins_contract_trans_key.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_trans_key' when calling ReinsuranceContractTransactionClaimsApi.update_reins_contract_trans_claim"
      end
      # verify the required parameter 'claim_number' is set
      if @api_client.config.client_side_validation && claim_number.nil?
        fail ArgumentError, "Missing the required parameter 'claim_number' when calling ReinsuranceContractTransactionClaimsApi.update_reins_contract_trans_claim"
      end
      # verify the required parameter 'reins_contract_trans_claim' is set
      if @api_client.config.client_side_validation && reins_contract_trans_claim.nil?
        fail ArgumentError, "Missing the required parameter 'reins_contract_trans_claim' when calling ReinsuranceContractTransactionClaimsApi.update_reins_contract_trans_claim"
      end
      # resource path
      local_var_path = '/reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber}'.sub('{' + 'reinsContractKey' + '}', CGI.escape(reins_contract_key.to_s)).sub('{' + 'reinsContractTransKey' + '}', CGI.escape(reins_contract_trans_key.to_s)).sub('{' + 'claimNumber' + '}', CGI.escape(claim_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(reins_contract_trans_claim)

      # return_type
      return_type = opts[:debug_return_type] || 'ReinsContractTransClaimVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReinsuranceContractTransactionClaimsApi.update_reins_contract_trans_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReinsuranceContractTransactionClaimsApi#update_reins_contract_trans_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
