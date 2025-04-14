=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimDetailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimDetail
    # Creates a new ClaimDetail
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_detail [ClaimDetail] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimDetailVBAResponse]
    def create_claim_detail(vbasoftware_database, claim_number, claim_detail, opts = {})
      data, _status_code, _headers = create_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_detail, opts)
      data
    end

    # Create ClaimDetail
    # Creates a new ClaimDetail
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_detail [ClaimDetail] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimDetailVBAResponse, Integer, Hash)>] ClaimDetailVBAResponse data, response status code and response headers
    def create_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimDetailsApi.create_claim_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimDetailsApi.create_claim_detail"
      end
      # verify the required parameter 'claim_number' is set
      if @api_client.config.client_side_validation && claim_number.nil?
        fail ArgumentError, "Missing the required parameter 'claim_number' when calling ClaimDetailsApi.create_claim_detail"
      end
      # verify the required parameter 'claim_detail' is set
      if @api_client.config.client_side_validation && claim_detail.nil?
        fail ArgumentError, "Missing the required parameter 'claim_detail' when calling ClaimDetailsApi.create_claim_detail"
      end
      # resource path
      local_var_path = '/claims/{claimNumber}/details'.sub('{' + 'claimNumber' + '}', CGI.escape(claim_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimDetailsApi.create_claim_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimDetailsApi#create_claim_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimDetail
    # Deletes an ClaimDetail
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_detail(vbasoftware_database, claim_number, claim_seq, adjustment_seq, opts = {})
      delete_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq, opts)
      nil
    end

    # Delete ClaimDetail
    # Deletes an ClaimDetail
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimDetailsApi.delete_claim_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimDetailsApi.delete_claim_detail"
      end
      # verify the required parameter 'claim_number' is set
      if @api_client.config.client_side_validation && claim_number.nil?
        fail ArgumentError, "Missing the required parameter 'claim_number' when calling ClaimDetailsApi.delete_claim_detail"
      end
      # verify the required parameter 'claim_seq' is set
      if @api_client.config.client_side_validation && claim_seq.nil?
        fail ArgumentError, "Missing the required parameter 'claim_seq' when calling ClaimDetailsApi.delete_claim_detail"
      end
      # verify the required parameter 'adjustment_seq' is set
      if @api_client.config.client_side_validation && adjustment_seq.nil?
        fail ArgumentError, "Missing the required parameter 'adjustment_seq' when calling ClaimDetailsApi.delete_claim_detail"
      end
      # resource path
      local_var_path = '/claims/{claimNumber}/details/{claimSeq}/{adjustmentSeq}'.sub('{' + 'claimNumber' + '}', CGI.escape(claim_number.to_s)).sub('{' + 'claimSeq' + '}', CGI.escape(claim_seq.to_s)).sub('{' + 'adjustmentSeq' + '}', CGI.escape(adjustment_seq.to_s))

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
        :operation => :"ClaimDetailsApi.delete_claim_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimDetailsApi#delete_claim_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimDetail
    # Gets ClaimDetail
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param [Hash] opts the optional parameters
    # @return [ClaimDetailVBAResponse]
    def get_claim_detail(vbasoftware_database, claim_number, claim_seq, adjustment_seq, opts = {})
      data, _status_code, _headers = get_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq, opts)
      data
    end

    # Get ClaimDetail
    # Gets ClaimDetail
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimDetailVBAResponse, Integer, Hash)>] ClaimDetailVBAResponse data, response status code and response headers
    def get_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimDetailsApi.get_claim_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimDetailsApi.get_claim_detail"
      end
      # verify the required parameter 'claim_number' is set
      if @api_client.config.client_side_validation && claim_number.nil?
        fail ArgumentError, "Missing the required parameter 'claim_number' when calling ClaimDetailsApi.get_claim_detail"
      end
      # verify the required parameter 'claim_seq' is set
      if @api_client.config.client_side_validation && claim_seq.nil?
        fail ArgumentError, "Missing the required parameter 'claim_seq' when calling ClaimDetailsApi.get_claim_detail"
      end
      # verify the required parameter 'adjustment_seq' is set
      if @api_client.config.client_side_validation && adjustment_seq.nil?
        fail ArgumentError, "Missing the required parameter 'adjustment_seq' when calling ClaimDetailsApi.get_claim_detail"
      end
      # resource path
      local_var_path = '/claims/{claimNumber}/details/{claimSeq}/{adjustmentSeq}'.sub('{' + 'claimNumber' + '}', CGI.escape(claim_number.to_s)).sub('{' + 'claimSeq' + '}', CGI.escape(claim_seq.to_s)).sub('{' + 'adjustmentSeq' + '}', CGI.escape(adjustment_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimDetailsApi.get_claim_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimDetailsApi#get_claim_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimDetail
    # Lists all ClaimDetail for the given claimNumber
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimDetailListVBAResponse]
    def list_claim_detail(vbasoftware_database, claim_number, opts = {})
      data, _status_code, _headers = list_claim_detail_with_http_info(vbasoftware_database, claim_number, opts)
      data
    end

    # List ClaimDetail
    # Lists all ClaimDetail for the given claimNumber
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimDetailListVBAResponse, Integer, Hash)>] ClaimDetailListVBAResponse data, response status code and response headers
    def list_claim_detail_with_http_info(vbasoftware_database, claim_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimDetailsApi.list_claim_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimDetailsApi.list_claim_detail"
      end
      # verify the required parameter 'claim_number' is set
      if @api_client.config.client_side_validation && claim_number.nil?
        fail ArgumentError, "Missing the required parameter 'claim_number' when calling ClaimDetailsApi.list_claim_detail"
      end
      # resource path
      local_var_path = '/claims/{claimNumber}/details'.sub('{' + 'claimNumber' + '}', CGI.escape(claim_number.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimDetailListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimDetailsApi.list_claim_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimDetailsApi#list_claim_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimDetail
    # Create or Update multiple ClaimDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_detail [Array<ClaimDetail>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_detail(vbasoftware_database, claim_number, claim_detail, opts = {})
      data, _status_code, _headers = update_batch_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_detail, opts)
      data
    end

    # Create or Update Batch ClaimDetail
    # Create or Update multiple ClaimDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_detail [Array<ClaimDetail>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimDetailsApi.update_batch_claim_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimDetailsApi.update_batch_claim_detail"
      end
      # verify the required parameter 'claim_number' is set
      if @api_client.config.client_side_validation && claim_number.nil?
        fail ArgumentError, "Missing the required parameter 'claim_number' when calling ClaimDetailsApi.update_batch_claim_detail"
      end
      # verify the required parameter 'claim_detail' is set
      if @api_client.config.client_side_validation && claim_detail.nil?
        fail ArgumentError, "Missing the required parameter 'claim_detail' when calling ClaimDetailsApi.update_batch_claim_detail"
      end
      # resource path
      local_var_path = '/claims/{claimNumber}/details-batch'.sub('{' + 'claimNumber' + '}', CGI.escape(claim_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimDetailsApi.update_batch_claim_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimDetailsApi#update_batch_claim_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimDetail
    # Updates a specific ClaimDetail.
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param claim_detail [ClaimDetail] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimDetailVBAResponse]
    def update_claim_detail(vbasoftware_database, claim_number, claim_seq, adjustment_seq, claim_detail, opts = {})
      data, _status_code, _headers = update_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq, claim_detail, opts)
      data
    end

    # Update ClaimDetail
    # Updates a specific ClaimDetail.
    # @param vbasoftware_database [String] Target database
    # @param claim_number [Integer] Claim Number
    # @param claim_seq [String] Claim Seq
    # @param adjustment_seq [String] Adjustment Seq
    # @param claim_detail [ClaimDetail] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimDetailVBAResponse, Integer, Hash)>] ClaimDetailVBAResponse data, response status code and response headers
    def update_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq, claim_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimDetailsApi.update_claim_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimDetailsApi.update_claim_detail"
      end
      # verify the required parameter 'claim_number' is set
      if @api_client.config.client_side_validation && claim_number.nil?
        fail ArgumentError, "Missing the required parameter 'claim_number' when calling ClaimDetailsApi.update_claim_detail"
      end
      # verify the required parameter 'claim_seq' is set
      if @api_client.config.client_side_validation && claim_seq.nil?
        fail ArgumentError, "Missing the required parameter 'claim_seq' when calling ClaimDetailsApi.update_claim_detail"
      end
      # verify the required parameter 'adjustment_seq' is set
      if @api_client.config.client_side_validation && adjustment_seq.nil?
        fail ArgumentError, "Missing the required parameter 'adjustment_seq' when calling ClaimDetailsApi.update_claim_detail"
      end
      # verify the required parameter 'claim_detail' is set
      if @api_client.config.client_side_validation && claim_detail.nil?
        fail ArgumentError, "Missing the required parameter 'claim_detail' when calling ClaimDetailsApi.update_claim_detail"
      end
      # resource path
      local_var_path = '/claims/{claimNumber}/details/{claimSeq}/{adjustmentSeq}'.sub('{' + 'claimNumber' + '}', CGI.escape(claim_number.to_s)).sub('{' + 'claimSeq' + '}', CGI.escape(claim_seq.to_s)).sub('{' + 'adjustmentSeq' + '}', CGI.escape(adjustment_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimDetailsApi.update_claim_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimDetailsApi#update_claim_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
