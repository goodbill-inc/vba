=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimExCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimExCode
    # Creates a new ClaimExCode
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_ex_code [ClaimExCode] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimExCodeVBAResponse]
    def create_claim_ex_code(vbasoftware_database, batch_number, batch_claim, claim_ex_code, opts = {})
      data, _status_code, _headers = create_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_ex_code, opts)
      data
    end

    # Create ClaimExCode
    # Creates a new ClaimExCode
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_ex_code [ClaimExCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimExCodeVBAResponse, Integer, Hash)>] ClaimExCodeVBAResponse data, response status code and response headers
    def create_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_ex_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimExCodesApi.create_claim_ex_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimExCodesApi.create_claim_ex_code"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimExCodesApi.create_claim_ex_code"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ClaimExCodesApi.create_claim_ex_code"
      end
      # verify the required parameter 'claim_ex_code' is set
      if @api_client.config.client_side_validation && claim_ex_code.nil?
        fail ArgumentError, "Missing the required parameter 'claim_ex_code' when calling ClaimExCodesApi.create_claim_ex_code"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_ex_code)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimExCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimExCodesApi.create_claim_ex_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimExCodesApi#create_claim_ex_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimExCode
    # Deletes an ClaimExCode
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param ex_code [String] Ex Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_ex_code(vbasoftware_database, batch_number, batch_claim, ex_code, opts = {})
      delete_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code, opts)
      nil
    end

    # Delete ClaimExCode
    # Deletes an ClaimExCode
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param ex_code [String] Ex Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimExCodesApi.delete_claim_ex_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimExCodesApi.delete_claim_ex_code"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimExCodesApi.delete_claim_ex_code"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ClaimExCodesApi.delete_claim_ex_code"
      end
      # verify the required parameter 'ex_code' is set
      if @api_client.config.client_side_validation && ex_code.nil?
        fail ArgumentError, "Missing the required parameter 'ex_code' when calling ClaimExCodesApi.delete_claim_ex_code"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes/{exCode}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s)).sub('{' + 'exCode' + '}', CGI.escape(ex_code.to_s))

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
        :operation => :"ClaimExCodesApi.delete_claim_ex_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimExCodesApi#delete_claim_ex_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimExCode
    # Gets ClaimExCode
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param ex_code [String] Ex Code
    # @param [Hash] opts the optional parameters
    # @return [ClaimExCodeVBAResponse]
    def get_claim_ex_code(vbasoftware_database, batch_number, batch_claim, ex_code, opts = {})
      data, _status_code, _headers = get_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code, opts)
      data
    end

    # Get ClaimExCode
    # Gets ClaimExCode
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param ex_code [String] Ex Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimExCodeVBAResponse, Integer, Hash)>] ClaimExCodeVBAResponse data, response status code and response headers
    def get_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimExCodesApi.get_claim_ex_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimExCodesApi.get_claim_ex_code"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimExCodesApi.get_claim_ex_code"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ClaimExCodesApi.get_claim_ex_code"
      end
      # verify the required parameter 'ex_code' is set
      if @api_client.config.client_side_validation && ex_code.nil?
        fail ArgumentError, "Missing the required parameter 'ex_code' when calling ClaimExCodesApi.get_claim_ex_code"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes/{exCode}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s)).sub('{' + 'exCode' + '}', CGI.escape(ex_code.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimExCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimExCodesApi.get_claim_ex_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimExCodesApi#get_claim_ex_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimExCode
    # Lists all ClaimExCode for the given batchNumber and batchClaim
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimExCodeListVBAResponse]
    def list_claim_ex_code(vbasoftware_database, batch_number, batch_claim, opts = {})
      data, _status_code, _headers = list_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
      data
    end

    # List ClaimExCode
    # Lists all ClaimExCode for the given batchNumber and batchClaim
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimExCodeListVBAResponse, Integer, Hash)>] ClaimExCodeListVBAResponse data, response status code and response headers
    def list_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimExCodesApi.list_claim_ex_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimExCodesApi.list_claim_ex_code"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimExCodesApi.list_claim_ex_code"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ClaimExCodesApi.list_claim_ex_code"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimExCodeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimExCodesApi.list_claim_ex_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimExCodesApi#list_claim_ex_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimExCode
    # Create or Update multiple ClaimExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_ex_code [Array<ClaimExCode>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_ex_code(vbasoftware_database, batch_number, batch_claim, claim_ex_code, opts = {})
      data, _status_code, _headers = update_batch_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_ex_code, opts)
      data
    end

    # Create or Update Batch ClaimExCode
    # Create or Update multiple ClaimExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param claim_ex_code [Array<ClaimExCode>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_ex_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimExCodesApi.update_batch_claim_ex_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimExCodesApi.update_batch_claim_ex_code"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimExCodesApi.update_batch_claim_ex_code"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ClaimExCodesApi.update_batch_claim_ex_code"
      end
      # verify the required parameter 'claim_ex_code' is set
      if @api_client.config.client_side_validation && claim_ex_code.nil?
        fail ArgumentError, "Missing the required parameter 'claim_ex_code' when calling ClaimExCodesApi.update_batch_claim_ex_code"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes-batch'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_ex_code)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimExCodesApi.update_batch_claim_ex_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimExCodesApi#update_batch_claim_ex_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimExCode
    # Updates a specific ClaimExCode.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param ex_code [String] Ex Code
    # @param claim_ex_code [ClaimExCode] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimExCodeVBAResponse]
    def update_claim_ex_code(vbasoftware_database, batch_number, batch_claim, ex_code, claim_ex_code, opts = {})
      data, _status_code, _headers = update_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code, claim_ex_code, opts)
      data
    end

    # Update ClaimExCode
    # Updates a specific ClaimExCode.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param batch_claim [Integer] Batch Claim
    # @param ex_code [String] Ex Code
    # @param claim_ex_code [ClaimExCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimExCodeVBAResponse, Integer, Hash)>] ClaimExCodeVBAResponse data, response status code and response headers
    def update_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code, claim_ex_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimExCodesApi.update_claim_ex_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimExCodesApi.update_claim_ex_code"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimExCodesApi.update_claim_ex_code"
      end
      # verify the required parameter 'batch_claim' is set
      if @api_client.config.client_side_validation && batch_claim.nil?
        fail ArgumentError, "Missing the required parameter 'batch_claim' when calling ClaimExCodesApi.update_claim_ex_code"
      end
      # verify the required parameter 'ex_code' is set
      if @api_client.config.client_side_validation && ex_code.nil?
        fail ArgumentError, "Missing the required parameter 'ex_code' when calling ClaimExCodesApi.update_claim_ex_code"
      end
      # verify the required parameter 'claim_ex_code' is set
      if @api_client.config.client_side_validation && claim_ex_code.nil?
        fail ArgumentError, "Missing the required parameter 'claim_ex_code' when calling ClaimExCodesApi.update_claim_ex_code"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes/{exCode}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'batchClaim' + '}', CGI.escape(batch_claim.to_s)).sub('{' + 'exCode' + '}', CGI.escape(ex_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_ex_code)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimExCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimExCodesApi.update_claim_ex_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimExCodesApi#update_claim_ex_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
