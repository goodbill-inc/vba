=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimAuditDetailResultsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimAuditDetailResult
    # Creates a new ClaimAuditDetailResult
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param claim_audit_detail_result [ClaimAuditDetailResult] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimAuditDetailResultVBAResponse]
    def create_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result, opts = {})
      data, _status_code, _headers = create_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result, opts)
      data
    end

    # Create ClaimAuditDetailResult
    # Creates a new ClaimAuditDetailResult
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param claim_audit_detail_result [ClaimAuditDetailResult] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimAuditDetailResultVBAResponse, Integer, Hash)>] ClaimAuditDetailResultVBAResponse data, response status code and response headers
    def create_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAuditDetailResultsApi.create_claim_audit_detail_result ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAuditDetailResultsApi.create_claim_audit_detail_result"
      end
      # verify the required parameter 'claim_audit_detail_key' is set
      if @api_client.config.client_side_validation && claim_audit_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_audit_detail_key' when calling ClaimAuditDetailResultsApi.create_claim_audit_detail_result"
      end
      # verify the required parameter 'claim_audit_detail_result' is set
      if @api_client.config.client_side_validation && claim_audit_detail_result.nil?
        fail ArgumentError, "Missing the required parameter 'claim_audit_detail_result' when calling ClaimAuditDetailResultsApi.create_claim_audit_detail_result"
      end
      # resource path
      local_var_path = '/claim-audit-details/{claimAuditDetailKey}/results'.sub('{' + 'claimAuditDetailKey' + '}', CGI.escape(claim_audit_detail_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_audit_detail_result)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimAuditDetailResultVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAuditDetailResultsApi.create_claim_audit_detail_result",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAuditDetailResultsApi#create_claim_audit_detail_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimAuditDetailResult
    # Deletes an ClaimAuditDetailResult
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param claim_audit_detail_result_key [Integer] ClaimAuditDetailResult Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key, opts = {})
      delete_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key, opts)
      nil
    end

    # Delete ClaimAuditDetailResult
    # Deletes an ClaimAuditDetailResult
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param claim_audit_detail_result_key [Integer] ClaimAuditDetailResult Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAuditDetailResultsApi.delete_claim_audit_detail_result ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAuditDetailResultsApi.delete_claim_audit_detail_result"
      end
      # verify the required parameter 'claim_audit_detail_key' is set
      if @api_client.config.client_side_validation && claim_audit_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_audit_detail_key' when calling ClaimAuditDetailResultsApi.delete_claim_audit_detail_result"
      end
      # verify the required parameter 'claim_audit_detail_result_key' is set
      if @api_client.config.client_side_validation && claim_audit_detail_result_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_audit_detail_result_key' when calling ClaimAuditDetailResultsApi.delete_claim_audit_detail_result"
      end
      # resource path
      local_var_path = '/claim-audit-details/{claimAuditDetailKey}/results/{claimAuditDetailResultKey}'.sub('{' + 'claimAuditDetailKey' + '}', CGI.escape(claim_audit_detail_key.to_s)).sub('{' + 'claimAuditDetailResultKey' + '}', CGI.escape(claim_audit_detail_result_key.to_s))

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
        :operation => :"ClaimAuditDetailResultsApi.delete_claim_audit_detail_result",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAuditDetailResultsApi#delete_claim_audit_detail_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimAuditDetailResult
    # Gets ClaimAuditDetailResult
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param claim_audit_detail_result_key [Integer] ClaimAuditDetailResult Key
    # @param [Hash] opts the optional parameters
    # @return [ClaimAuditDetailResultVBAResponse]
    def get_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key, opts = {})
      data, _status_code, _headers = get_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key, opts)
      data
    end

    # Get ClaimAuditDetailResult
    # Gets ClaimAuditDetailResult
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param claim_audit_detail_result_key [Integer] ClaimAuditDetailResult Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimAuditDetailResultVBAResponse, Integer, Hash)>] ClaimAuditDetailResultVBAResponse data, response status code and response headers
    def get_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAuditDetailResultsApi.get_claim_audit_detail_result ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAuditDetailResultsApi.get_claim_audit_detail_result"
      end
      # verify the required parameter 'claim_audit_detail_key' is set
      if @api_client.config.client_side_validation && claim_audit_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_audit_detail_key' when calling ClaimAuditDetailResultsApi.get_claim_audit_detail_result"
      end
      # verify the required parameter 'claim_audit_detail_result_key' is set
      if @api_client.config.client_side_validation && claim_audit_detail_result_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_audit_detail_result_key' when calling ClaimAuditDetailResultsApi.get_claim_audit_detail_result"
      end
      # resource path
      local_var_path = '/claim-audit-details/{claimAuditDetailKey}/results/{claimAuditDetailResultKey}'.sub('{' + 'claimAuditDetailKey' + '}', CGI.escape(claim_audit_detail_key.to_s)).sub('{' + 'claimAuditDetailResultKey' + '}', CGI.escape(claim_audit_detail_result_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimAuditDetailResultVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAuditDetailResultsApi.get_claim_audit_detail_result",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAuditDetailResultsApi#get_claim_audit_detail_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimAuditDetailResult
    # Lists all ClaimAuditDetailResult for the given claimAuditDetailKey
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimAuditDetailResultListVBAResponse]
    def list_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, opts = {})
      data, _status_code, _headers = list_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, opts)
      data
    end

    # List ClaimAuditDetailResult
    # Lists all ClaimAuditDetailResult for the given claimAuditDetailKey
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimAuditDetailResultListVBAResponse, Integer, Hash)>] ClaimAuditDetailResultListVBAResponse data, response status code and response headers
    def list_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAuditDetailResultsApi.list_claim_audit_detail_result ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAuditDetailResultsApi.list_claim_audit_detail_result"
      end
      # verify the required parameter 'claim_audit_detail_key' is set
      if @api_client.config.client_side_validation && claim_audit_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_audit_detail_key' when calling ClaimAuditDetailResultsApi.list_claim_audit_detail_result"
      end
      # resource path
      local_var_path = '/claim-audit-details/{claimAuditDetailKey}/results'.sub('{' + 'claimAuditDetailKey' + '}', CGI.escape(claim_audit_detail_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimAuditDetailResultListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAuditDetailResultsApi.list_claim_audit_detail_result",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAuditDetailResultsApi#list_claim_audit_detail_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimAuditDetailResult
    # Create multiple ClaimAuditDetailResult at once.  If the entity exists, it will be updated. 
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param claim_audit_detail_result [Array<ClaimAuditDetailResult>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result, opts = {})
      data, _status_code, _headers = update_batch_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result, opts)
      data
    end

    # Create or Update Batch ClaimAuditDetailResult
    # Create multiple ClaimAuditDetailResult at once.  If the entity exists, it will be updated. 
    # @param vbasoftware_database [String] Target database
    # @param claim_audit_detail_key [Integer] ClaimAuditDetail Key
    # @param claim_audit_detail_result [Array<ClaimAuditDetailResult>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAuditDetailResultsApi.update_batch_claim_audit_detail_result ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAuditDetailResultsApi.update_batch_claim_audit_detail_result"
      end
      # verify the required parameter 'claim_audit_detail_key' is set
      if @api_client.config.client_side_validation && claim_audit_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_audit_detail_key' when calling ClaimAuditDetailResultsApi.update_batch_claim_audit_detail_result"
      end
      # verify the required parameter 'claim_audit_detail_result' is set
      if @api_client.config.client_side_validation && claim_audit_detail_result.nil?
        fail ArgumentError, "Missing the required parameter 'claim_audit_detail_result' when calling ClaimAuditDetailResultsApi.update_batch_claim_audit_detail_result"
      end
      # resource path
      local_var_path = '/claim-audit-details/{claimAuditDetailKey}/results-batch'.sub('{' + 'claimAuditDetailKey' + '}', CGI.escape(claim_audit_detail_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_audit_detail_result)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAuditDetailResultsApi.update_batch_claim_audit_detail_result",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAuditDetailResultsApi#update_batch_claim_audit_detail_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
