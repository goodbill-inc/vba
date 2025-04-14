=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimAdjudicationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adjudicate Single Claim
    # Adjudicates a single claim and waits for the response.  If a value is provided for the optional parameter requestingUser, the value will be included in the logs as the user initiating the action.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [String] :requesting_user Requesting User
    # @return [ClaimBatchClaimBatchDetailVBAResponse]
    def adjudicate_claim(vbasoftware_database, batch_number, batch_claim, opts = {})
      data, _status_code, _headers = adjudicate_claim_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
      data
    end

    # Adjudicate Single Claim
    # Adjudicates a single claim and waits for the response.  If a value is provided for the optional parameter requestingUser, the value will be included in the logs as the user initiating the action.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [String] :requesting_user Requesting User
    # @return [Array<(ClaimBatchClaimBatchDetailVBAResponse, Integer, Hash)>] ClaimBatchClaimBatchDetailVBAResponse data, response status code and response headers
    def adjudicate_claim_with_http_info(vbasoftware_database, batch_number, batch_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAdjudicationApi.adjudicate_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAdjudicationApi.adjudicate_claim"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimAdjudicationApi.adjudicate_claim"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ClaimAdjudicationApi.adjudicate_claim"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/claims/{batchClaim}/adjudicate'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'requestingUser'] = opts[:'requesting_user'] if !opts[:'requesting_user'].nil?

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
      return_type = opts[:debug_return_type] || 'ClaimBatchClaimBatchDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAdjudicationApi.adjudicate_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAdjudicationApi#adjudicate_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adjudicate Single Claim without response
    # Adjudicates a single claim and does not include a response body of the resulting Claim details.  This makes for faster request.  If a value is provided for the optional parameter requestingUser, the value will be included in the logs as the user initiating the action.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [String] :requesting_user Requesting User
    # @return [nil]
    def adjudicate_claim_no_response(vbasoftware_database, batch_number, batch_claim, opts = {})
      adjudicate_claim_no_response_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
      nil
    end

    # Adjudicate Single Claim without response
    # Adjudicates a single claim and does not include a response body of the resulting Claim details.  This makes for faster request.  If a value is provided for the optional parameter requestingUser, the value will be included in the logs as the user initiating the action.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [String] :requesting_user Requesting User
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def adjudicate_claim_no_response_with_http_info(vbasoftware_database, batch_number, batch_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAdjudicationApi.adjudicate_claim_no_response ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAdjudicationApi.adjudicate_claim_no_response"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimAdjudicationApi.adjudicate_claim_no_response"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ClaimAdjudicationApi.adjudicate_claim_no_response"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/claims/{batchClaim}/adjudicate-no-response'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'requestingUser'] = opts[:'requesting_user'] if !opts[:'requesting_user'].nil?

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
        :operation => :"ClaimAdjudicationApi.adjudicate_claim_no_response",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAdjudicationApi#adjudicate_claim_no_response\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adjudicate Entire Queue
    # Adjudicates all Claims within a Claim Queue.  This is a Fire and Forget.  Results of the adjudication will start to be visible shortly after calling this endpoint.
    # @param vbasoftware_database [String] Target database
    # @param claim_queue_key [Integer] Claim Queue Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def adjudicate_claim_queue(vbasoftware_database, claim_queue_key, opts = {})
      adjudicate_claim_queue_with_http_info(vbasoftware_database, claim_queue_key, opts)
      nil
    end

    # Adjudicate Entire Queue
    # Adjudicates all Claims within a Claim Queue.  This is a Fire and Forget.  Results of the adjudication will start to be visible shortly after calling this endpoint.
    # @param vbasoftware_database [String] Target database
    # @param claim_queue_key [Integer] Claim Queue Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def adjudicate_claim_queue_with_http_info(vbasoftware_database, claim_queue_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAdjudicationApi.adjudicate_claim_queue ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAdjudicationApi.adjudicate_claim_queue"
      end
      # verify the required parameter 'claim_queue_key' is set
      if @api_client.config.client_side_validation && claim_queue_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_queue_key' when calling ClaimAdjudicationApi.adjudicate_claim_queue"
      end
      # resource path
      local_var_path = '/claim-queues/{claimQueueKey}/adjudicate'.sub('{' + 'claimQueueKey' + '}', CGI.escape(claim_queue_key.to_s))

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
        :operation => :"ClaimAdjudicationApi.adjudicate_claim_queue",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAdjudicationApi#adjudicate_claim_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Process Single Claim
    # Process a single claim and optionally returns the detailed records if processing fails (e.g., due to a pend code). Specify the 'includeDetails' query parameter to true to retrieve the object.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [String] :requesting_user Requesting User
    # @option opts [Boolean] :include_details Include details of the claim object if processing fails (default to false)
    # @return [nil]
    def process_claim(vbasoftware_database, batch_number, batch_claim, opts = {})
      process_claim_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
      nil
    end

    # Process Single Claim
    # Process a single claim and optionally returns the detailed records if processing fails (e.g., due to a pend code). Specify the &#39;includeDetails&#39; query parameter to true to retrieve the object.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [String] :requesting_user Requesting User
    # @option opts [Boolean] :include_details Include details of the claim object if processing fails (default to false)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def process_claim_with_http_info(vbasoftware_database, batch_number, batch_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAdjudicationApi.process_claim ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAdjudicationApi.process_claim"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimAdjudicationApi.process_claim"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ClaimAdjudicationApi.process_claim"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/claims/{batchClaim}/process'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'requestingUser'] = opts[:'requesting_user'] if !opts[:'requesting_user'].nil?
      query_params[:'includeDetails'] = opts[:'include_details'] if !opts[:'include_details'].nil?

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAdjudicationApi.process_claim",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAdjudicationApi#process_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Process Entire Queue
    # Process all Claims within a Claim Queue.  This is a Fire and Forget.  Results of the adjudication will start to be visible shortly after calling this endpoint.
    # @param vbasoftware_database [String] Target database
    # @param claim_queue_key [Integer] Claim Queue Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def process_claim_queue(vbasoftware_database, claim_queue_key, opts = {})
      process_claim_queue_with_http_info(vbasoftware_database, claim_queue_key, opts)
      nil
    end

    # Process Entire Queue
    # Process all Claims within a Claim Queue.  This is a Fire and Forget.  Results of the adjudication will start to be visible shortly after calling this endpoint.
    # @param vbasoftware_database [String] Target database
    # @param claim_queue_key [Integer] Claim Queue Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def process_claim_queue_with_http_info(vbasoftware_database, claim_queue_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAdjudicationApi.process_claim_queue ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAdjudicationApi.process_claim_queue"
      end
      # verify the required parameter 'claim_queue_key' is set
      if @api_client.config.client_side_validation && claim_queue_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_queue_key' when calling ClaimAdjudicationApi.process_claim_queue"
      end
      # resource path
      local_var_path = '/claim-queues/{claimQueueKey}/process'.sub('{' + 'claimQueueKey' + '}', CGI.escape(claim_queue_key.to_s))

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
        :operation => :"ClaimAdjudicationApi.process_claim_queue",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAdjudicationApi#process_claim_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
