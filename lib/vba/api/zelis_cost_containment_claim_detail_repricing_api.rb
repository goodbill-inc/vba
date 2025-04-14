=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ZelisCostContainmentClaimDetailRepricingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CostContainZelisClaimDetailReprice
    # Creates a new CostContainZelisClaimDetailReprice
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param cost_contain_zelis_claim_detail_reprice [CostContainZelisClaimDetailReprice] 
    # @param [Hash] opts the optional parameters
    # @return [CostContainZelisClaimDetailRepriceVBAResponse]
    def create_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice, opts = {})
      data, _status_code, _headers = create_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice, opts)
      data
    end

    # Create CostContainZelisClaimDetailReprice
    # Creates a new CostContainZelisClaimDetailReprice
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param cost_contain_zelis_claim_detail_reprice [CostContainZelisClaimDetailReprice] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostContainZelisClaimDetailRepriceVBAResponse, Integer, Hash)>] CostContainZelisClaimDetailRepriceVBAResponse data, response status code and response headers
    def create_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentClaimDetailRepricingApi.create_cost_contain_zelis_claim_detail_reprice ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentClaimDetailRepricingApi.create_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ZelisCostContainmentClaimDetailRepricingApi.create_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ZelisCostContainmentClaimDetailRepricingApi.create_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'cost_contain_zelis_claim_detail_reprice' is set
      if @api_client.config.client_side_validation && cost_contain_zelis_claim_detail_reprice.nil?
        fail ArgumentError, "Missing the required parameter 'cost_contain_zelis_claim_detail_reprice' when calling ZelisCostContainmentClaimDetailRepricingApi.create_cost_contain_zelis_claim_detail_reprice"
      end
      # resource path
      local_var_path = '/zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cost_contain_zelis_claim_detail_reprice)

      # return_type
      return_type = opts[:debug_return_type] || 'CostContainZelisClaimDetailRepriceVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentClaimDetailRepricingApi.create_cost_contain_zelis_claim_detail_reprice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentClaimDetailRepricingApi#create_cost_contain_zelis_claim_detail_reprice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CostContainZelisClaimDetailReprice
    # Deletes an CostContainZelisClaimDetailReprice
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts = {})
      delete_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)
      nil
    end

    # Delete CostContainZelisClaimDetailReprice
    # Deletes an CostContainZelisClaimDetailReprice
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentClaimDetailRepricingApi.delete_cost_contain_zelis_claim_detail_reprice ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentClaimDetailRepricingApi.delete_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ZelisCostContainmentClaimDetailRepricingApi.delete_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ZelisCostContainmentClaimDetailRepricingApi.delete_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'claim_seq' is set
      if @api_client.config.client_side_validation && claim_seq.nil?
        fail ArgumentError, "Missing the required parameter 'claim_seq' when calling ZelisCostContainmentClaimDetailRepricingApi.delete_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'adjustment_seq' is set
      if @api_client.config.client_side_validation && adjustment_seq.nil?
        fail ArgumentError, "Missing the required parameter 'adjustment_seq' when calling ZelisCostContainmentClaimDetailRepricingApi.delete_cost_contain_zelis_claim_detail_reprice"
      end
      # resource path
      local_var_path = '/zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s)).sub('{' + 'claimSeq' + '}', CGI.escape(claim_seq.to_s)).sub('{' + 'adjustmentSeq' + '}', CGI.escape(adjustment_seq.to_s))

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
        :operation => :"ZelisCostContainmentClaimDetailRepricingApi.delete_cost_contain_zelis_claim_detail_reprice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentClaimDetailRepricingApi#delete_cost_contain_zelis_claim_detail_reprice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CostContainZelisClaimDetailReprice
    # Gets CostContainZelisClaimDetailReprice
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param [Hash] opts the optional parameters
    # @return [CostContainZelisClaimDetailRepriceVBAResponse]
    def get_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts = {})
      data, _status_code, _headers = get_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)
      data
    end

    # Get CostContainZelisClaimDetailReprice
    # Gets CostContainZelisClaimDetailReprice
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostContainZelisClaimDetailRepriceVBAResponse, Integer, Hash)>] CostContainZelisClaimDetailRepriceVBAResponse data, response status code and response headers
    def get_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentClaimDetailRepricingApi.get_cost_contain_zelis_claim_detail_reprice ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentClaimDetailRepricingApi.get_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ZelisCostContainmentClaimDetailRepricingApi.get_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ZelisCostContainmentClaimDetailRepricingApi.get_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'claim_seq' is set
      if @api_client.config.client_side_validation && claim_seq.nil?
        fail ArgumentError, "Missing the required parameter 'claim_seq' when calling ZelisCostContainmentClaimDetailRepricingApi.get_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'adjustment_seq' is set
      if @api_client.config.client_side_validation && adjustment_seq.nil?
        fail ArgumentError, "Missing the required parameter 'adjustment_seq' when calling ZelisCostContainmentClaimDetailRepricingApi.get_cost_contain_zelis_claim_detail_reprice"
      end
      # resource path
      local_var_path = '/zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s)).sub('{' + 'claimSeq' + '}', CGI.escape(claim_seq.to_s)).sub('{' + 'adjustmentSeq' + '}', CGI.escape(adjustment_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'CostContainZelisClaimDetailRepriceVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentClaimDetailRepricingApi.get_cost_contain_zelis_claim_detail_reprice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentClaimDetailRepricingApi#get_cost_contain_zelis_claim_detail_reprice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CostContainZelisClaimDetailReprice
    # Lists all CostContainZelisClaimDetailReprice for the given batchNumber and batchClaim
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CostContainZelisClaimDetailRepriceListVBAResponse]
    def list_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, opts = {})
      data, _status_code, _headers = list_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
      data
    end

    # List CostContainZelisClaimDetailReprice
    # Lists all CostContainZelisClaimDetailReprice for the given batchNumber and batchClaim
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CostContainZelisClaimDetailRepriceListVBAResponse, Integer, Hash)>] CostContainZelisClaimDetailRepriceListVBAResponse data, response status code and response headers
    def list_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentClaimDetailRepricingApi.list_cost_contain_zelis_claim_detail_reprice ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentClaimDetailRepricingApi.list_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ZelisCostContainmentClaimDetailRepricingApi.list_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ZelisCostContainmentClaimDetailRepricingApi.list_cost_contain_zelis_claim_detail_reprice"
      end
      # resource path
      local_var_path = '/zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

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
      return_type = opts[:debug_return_type] || 'CostContainZelisClaimDetailRepriceListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentClaimDetailRepricingApi.list_cost_contain_zelis_claim_detail_reprice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentClaimDetailRepricingApi#list_cost_contain_zelis_claim_detail_reprice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CostContainZelisClaimDetailReprice
    # Create or Update multiple CostContainZelisClaimDetailReprice at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param cost_contain_zelis_claim_detail_reprice [Array<CostContainZelisClaimDetailReprice>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice, opts = {})
      data, _status_code, _headers = update_batch_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice, opts)
      data
    end

    # Create or Update Batch CostContainZelisClaimDetailReprice
    # Create or Update multiple CostContainZelisClaimDetailReprice at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param cost_contain_zelis_claim_detail_reprice [Array<CostContainZelisClaimDetailReprice>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentClaimDetailRepricingApi.update_batch_cost_contain_zelis_claim_detail_reprice ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentClaimDetailRepricingApi.update_batch_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ZelisCostContainmentClaimDetailRepricingApi.update_batch_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ZelisCostContainmentClaimDetailRepricingApi.update_batch_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'cost_contain_zelis_claim_detail_reprice' is set
      if @api_client.config.client_side_validation && cost_contain_zelis_claim_detail_reprice.nil?
        fail ArgumentError, "Missing the required parameter 'cost_contain_zelis_claim_detail_reprice' when calling ZelisCostContainmentClaimDetailRepricingApi.update_batch_cost_contain_zelis_claim_detail_reprice"
      end
      # resource path
      local_var_path = '/zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details-batch'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cost_contain_zelis_claim_detail_reprice)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentClaimDetailRepricingApi.update_batch_cost_contain_zelis_claim_detail_reprice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentClaimDetailRepricingApi#update_batch_cost_contain_zelis_claim_detail_reprice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CostContainZelisClaimDetailReprice
    # Updates a specific CostContainZelisClaimDetailReprice.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param cost_contain_zelis_claim_detail_reprice [CostContainZelisClaimDetailReprice] 
    # @param [Hash] opts the optional parameters
    # @return [CostContainZelisClaimDetailRepriceVBAResponse]
    def update_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, cost_contain_zelis_claim_detail_reprice, opts = {})
      data, _status_code, _headers = update_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, cost_contain_zelis_claim_detail_reprice, opts)
      data
    end

    # Update CostContainZelisClaimDetailReprice
    # Updates a specific CostContainZelisClaimDetailReprice.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param cost_contain_zelis_claim_detail_reprice [CostContainZelisClaimDetailReprice] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostContainZelisClaimDetailRepriceVBAResponse, Integer, Hash)>] CostContainZelisClaimDetailRepriceVBAResponse data, response status code and response headers
    def update_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, cost_contain_zelis_claim_detail_reprice, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ZelisCostContainmentClaimDetailRepricingApi.update_cost_contain_zelis_claim_detail_reprice ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ZelisCostContainmentClaimDetailRepricingApi.update_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ZelisCostContainmentClaimDetailRepricingApi.update_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ZelisCostContainmentClaimDetailRepricingApi.update_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'claim_seq' is set
      if @api_client.config.client_side_validation && claim_seq.nil?
        fail ArgumentError, "Missing the required parameter 'claim_seq' when calling ZelisCostContainmentClaimDetailRepricingApi.update_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'adjustment_seq' is set
      if @api_client.config.client_side_validation && adjustment_seq.nil?
        fail ArgumentError, "Missing the required parameter 'adjustment_seq' when calling ZelisCostContainmentClaimDetailRepricingApi.update_cost_contain_zelis_claim_detail_reprice"
      end
      # verify the required parameter 'cost_contain_zelis_claim_detail_reprice' is set
      if @api_client.config.client_side_validation && cost_contain_zelis_claim_detail_reprice.nil?
        fail ArgumentError, "Missing the required parameter 'cost_contain_zelis_claim_detail_reprice' when calling ZelisCostContainmentClaimDetailRepricingApi.update_cost_contain_zelis_claim_detail_reprice"
      end
      # resource path
      local_var_path = '/zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s)).sub('{' + 'claimSeq' + '}', CGI.escape(claim_seq.to_s)).sub('{' + 'adjustmentSeq' + '}', CGI.escape(adjustment_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cost_contain_zelis_claim_detail_reprice)

      # return_type
      return_type = opts[:debug_return_type] || 'CostContainZelisClaimDetailRepriceVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ZelisCostContainmentClaimDetailRepricingApi.update_cost_contain_zelis_claim_detail_reprice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZelisCostContainmentClaimDetailRepricingApi#update_cost_contain_zelis_claim_detail_reprice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
