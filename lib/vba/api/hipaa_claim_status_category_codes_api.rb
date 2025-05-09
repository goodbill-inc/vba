=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class HIPAAClaimStatusCategoryCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create HIPAAClaimStatusCategoryCode
    # Creates a new HIPAAClaimStatusCategoryCode
    # @param vbasoftware_database [String] Target database
    # @param hipaa_claim_status_category_code [HIPAAClaimStatusCategoryCode] 
    # @param [Hash] opts the optional parameters
    # @return [HIPAAClaimStatusCategoryCodeVBAResponse]
    def create_hipaa_claim_status_category_code(vbasoftware_database, hipaa_claim_status_category_code, opts = {})
      data, _status_code, _headers = create_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, hipaa_claim_status_category_code, opts)
      data
    end

    # Create HIPAAClaimStatusCategoryCode
    # Creates a new HIPAAClaimStatusCategoryCode
    # @param vbasoftware_database [String] Target database
    # @param hipaa_claim_status_category_code [HIPAAClaimStatusCategoryCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(HIPAAClaimStatusCategoryCodeVBAResponse, Integer, Hash)>] HIPAAClaimStatusCategoryCodeVBAResponse data, response status code and response headers
    def create_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, hipaa_claim_status_category_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAAClaimStatusCategoryCodesApi.create_hipaa_claim_status_category_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAAClaimStatusCategoryCodesApi.create_hipaa_claim_status_category_code"
      end
      # verify the required parameter 'hipaa_claim_status_category_code' is set
      if @api_client.config.client_side_validation && hipaa_claim_status_category_code.nil?
        fail ArgumentError, "Missing the required parameter 'hipaa_claim_status_category_code' when calling HIPAAClaimStatusCategoryCodesApi.create_hipaa_claim_status_category_code"
      end
      # resource path
      local_var_path = '/hipaa-claim-status-category-codes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(hipaa_claim_status_category_code)

      # return_type
      return_type = opts[:debug_return_type] || 'HIPAAClaimStatusCategoryCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAAClaimStatusCategoryCodesApi.create_hipaa_claim_status_category_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAAClaimStatusCategoryCodesApi#create_hipaa_claim_status_category_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete HIPAAClaimStatusCategoryCode
    # Deletes an HIPAAClaimStatusCategoryCode
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_hipaa_claim_status_category_code(vbasoftware_database, h_ipaa_code, opts = {})
      delete_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code, opts)
      nil
    end

    # Delete HIPAAClaimStatusCategoryCode
    # Deletes an HIPAAClaimStatusCategoryCode
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAAClaimStatusCategoryCodesApi.delete_hipaa_claim_status_category_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAAClaimStatusCategoryCodesApi.delete_hipaa_claim_status_category_code"
      end
      # verify the required parameter 'h_ipaa_code' is set
      if @api_client.config.client_side_validation && h_ipaa_code.nil?
        fail ArgumentError, "Missing the required parameter 'h_ipaa_code' when calling HIPAAClaimStatusCategoryCodesApi.delete_hipaa_claim_status_category_code"
      end
      # resource path
      local_var_path = '/hipaa-claim-status-category-codes/{hIPAACode}'.sub('{' + 'hIPAACode' + '}', CGI.escape(h_ipaa_code.to_s))

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
        :operation => :"HIPAAClaimStatusCategoryCodesApi.delete_hipaa_claim_status_category_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAAClaimStatusCategoryCodesApi#delete_hipaa_claim_status_category_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get HIPAAClaimStatusCategoryCode
    # Gets HIPAAClaimStatusCategoryCode
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param [Hash] opts the optional parameters
    # @return [HIPAAClaimStatusCategoryCodeVBAResponse]
    def get_hipaa_claim_status_category_code(vbasoftware_database, h_ipaa_code, opts = {})
      data, _status_code, _headers = get_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code, opts)
      data
    end

    # Get HIPAAClaimStatusCategoryCode
    # Gets HIPAAClaimStatusCategoryCode
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(HIPAAClaimStatusCategoryCodeVBAResponse, Integer, Hash)>] HIPAAClaimStatusCategoryCodeVBAResponse data, response status code and response headers
    def get_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAAClaimStatusCategoryCodesApi.get_hipaa_claim_status_category_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAAClaimStatusCategoryCodesApi.get_hipaa_claim_status_category_code"
      end
      # verify the required parameter 'h_ipaa_code' is set
      if @api_client.config.client_side_validation && h_ipaa_code.nil?
        fail ArgumentError, "Missing the required parameter 'h_ipaa_code' when calling HIPAAClaimStatusCategoryCodesApi.get_hipaa_claim_status_category_code"
      end
      # resource path
      local_var_path = '/hipaa-claim-status-category-codes/{hIPAACode}'.sub('{' + 'hIPAACode' + '}', CGI.escape(h_ipaa_code.to_s))

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
      return_type = opts[:debug_return_type] || 'HIPAAClaimStatusCategoryCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAAClaimStatusCategoryCodesApi.get_hipaa_claim_status_category_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAAClaimStatusCategoryCodesApi#get_hipaa_claim_status_category_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List HIPAAClaimStatusCategoryCode
    # Lists all HIPAAClaimStatusCategoryCode given a specific 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [HIPAAClaimStatusCategoryCodeListVBAResponse]
    def list_hipaa_claim_status_category_code(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, opts)
      data
    end

    # List HIPAAClaimStatusCategoryCode
    # Lists all HIPAAClaimStatusCategoryCode given a specific 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(HIPAAClaimStatusCategoryCodeListVBAResponse, Integer, Hash)>] HIPAAClaimStatusCategoryCodeListVBAResponse data, response status code and response headers
    def list_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAAClaimStatusCategoryCodesApi.list_hipaa_claim_status_category_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAAClaimStatusCategoryCodesApi.list_hipaa_claim_status_category_code"
      end
      # resource path
      local_var_path = '/hipaa-claim-status-category-codes'

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
      return_type = opts[:debug_return_type] || 'HIPAAClaimStatusCategoryCodeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAAClaimStatusCategoryCodesApi.list_hipaa_claim_status_category_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAAClaimStatusCategoryCodesApi#list_hipaa_claim_status_category_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch HIPAAClaimStatusCategoryCode
    # Create or Update multiple HIPAAClaimStatusCategoryCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param hipaa_claim_status_category_code [Array<HIPAAClaimStatusCategoryCode>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_hipaa_claim_status_category_code(vbasoftware_database, hipaa_claim_status_category_code, opts = {})
      data, _status_code, _headers = update_batch_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, hipaa_claim_status_category_code, opts)
      data
    end

    # Create or Update Batch HIPAAClaimStatusCategoryCode
    # Create or Update multiple HIPAAClaimStatusCategoryCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param hipaa_claim_status_category_code [Array<HIPAAClaimStatusCategoryCode>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, hipaa_claim_status_category_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAAClaimStatusCategoryCodesApi.update_batch_hipaa_claim_status_category_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAAClaimStatusCategoryCodesApi.update_batch_hipaa_claim_status_category_code"
      end
      # verify the required parameter 'hipaa_claim_status_category_code' is set
      if @api_client.config.client_side_validation && hipaa_claim_status_category_code.nil?
        fail ArgumentError, "Missing the required parameter 'hipaa_claim_status_category_code' when calling HIPAAClaimStatusCategoryCodesApi.update_batch_hipaa_claim_status_category_code"
      end
      # resource path
      local_var_path = '/hipaa-claim-status-category-codes-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(hipaa_claim_status_category_code)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAAClaimStatusCategoryCodesApi.update_batch_hipaa_claim_status_category_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAAClaimStatusCategoryCodesApi#update_batch_hipaa_claim_status_category_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update HIPAAClaimStatusCategoryCode
    # Updates a specific HIPAAClaimStatusCategoryCode.
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param hipaa_claim_status_category_code [HIPAAClaimStatusCategoryCode] 
    # @param [Hash] opts the optional parameters
    # @return [HIPAAClaimStatusCategoryCodeVBAResponse]
    def update_hipaa_claim_status_category_code(vbasoftware_database, h_ipaa_code, hipaa_claim_status_category_code, opts = {})
      data, _status_code, _headers = update_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_claim_status_category_code, opts)
      data
    end

    # Update HIPAAClaimStatusCategoryCode
    # Updates a specific HIPAAClaimStatusCategoryCode.
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param hipaa_claim_status_category_code [HIPAAClaimStatusCategoryCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(HIPAAClaimStatusCategoryCodeVBAResponse, Integer, Hash)>] HIPAAClaimStatusCategoryCodeVBAResponse data, response status code and response headers
    def update_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_claim_status_category_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAAClaimStatusCategoryCodesApi.update_hipaa_claim_status_category_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAAClaimStatusCategoryCodesApi.update_hipaa_claim_status_category_code"
      end
      # verify the required parameter 'h_ipaa_code' is set
      if @api_client.config.client_side_validation && h_ipaa_code.nil?
        fail ArgumentError, "Missing the required parameter 'h_ipaa_code' when calling HIPAAClaimStatusCategoryCodesApi.update_hipaa_claim_status_category_code"
      end
      # verify the required parameter 'hipaa_claim_status_category_code' is set
      if @api_client.config.client_side_validation && hipaa_claim_status_category_code.nil?
        fail ArgumentError, "Missing the required parameter 'hipaa_claim_status_category_code' when calling HIPAAClaimStatusCategoryCodesApi.update_hipaa_claim_status_category_code"
      end
      # resource path
      local_var_path = '/hipaa-claim-status-category-codes/{hIPAACode}'.sub('{' + 'hIPAACode' + '}', CGI.escape(h_ipaa_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(hipaa_claim_status_category_code)

      # return_type
      return_type = opts[:debug_return_type] || 'HIPAAClaimStatusCategoryCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAAClaimStatusCategoryCodesApi.update_hipaa_claim_status_category_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAAClaimStatusCategoryCodesApi#update_hipaa_claim_status_category_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
