=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ExplanationCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ExplanationCodes
    # Creates a new ExplanationCodes
    # @param vbasoftware_database [String] Target database
    # @param explanation_codes [ExplanationCodes] 
    # @param [Hash] opts the optional parameters
    # @return [ExplanationCodesVBAResponse]
    def create_explanation_codes(vbasoftware_database, explanation_codes, opts = {})
      data, _status_code, _headers = create_explanation_codes_with_http_info(vbasoftware_database, explanation_codes, opts)
      data
    end

    # Create ExplanationCodes
    # Creates a new ExplanationCodes
    # @param vbasoftware_database [String] Target database
    # @param explanation_codes [ExplanationCodes] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExplanationCodesVBAResponse, Integer, Hash)>] ExplanationCodesVBAResponse data, response status code and response headers
    def create_explanation_codes_with_http_info(vbasoftware_database, explanation_codes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplanationCodesApi.create_explanation_codes ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplanationCodesApi.create_explanation_codes"
      end
      # verify the required parameter 'explanation_codes' is set
      if @api_client.config.client_side_validation && explanation_codes.nil?
        fail ArgumentError, "Missing the required parameter 'explanation_codes' when calling ExplanationCodesApi.create_explanation_codes"
      end
      # resource path
      local_var_path = '/ex-codes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(explanation_codes)

      # return_type
      return_type = opts[:debug_return_type] || 'ExplanationCodesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplanationCodesApi.create_explanation_codes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplanationCodesApi#create_explanation_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ExplanationCodes
    # Deletes an ExplanationCodes
    # @param vbasoftware_database [String] Target database
    # @param ex_code [String] Ex Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_explanation_codes(vbasoftware_database, ex_code, opts = {})
      delete_explanation_codes_with_http_info(vbasoftware_database, ex_code, opts)
      nil
    end

    # Delete ExplanationCodes
    # Deletes an ExplanationCodes
    # @param vbasoftware_database [String] Target database
    # @param ex_code [String] Ex Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_explanation_codes_with_http_info(vbasoftware_database, ex_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplanationCodesApi.delete_explanation_codes ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplanationCodesApi.delete_explanation_codes"
      end
      # verify the required parameter 'ex_code' is set
      if @api_client.config.client_side_validation && ex_code.nil?
        fail ArgumentError, "Missing the required parameter 'ex_code' when calling ExplanationCodesApi.delete_explanation_codes"
      end
      # resource path
      local_var_path = '/ex-codes/{exCode}'.sub('{' + 'exCode' + '}', CGI.escape(ex_code.to_s))

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
        :operation => :"ExplanationCodesApi.delete_explanation_codes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplanationCodesApi#delete_explanation_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ExplanationCodes
    # Gets ExplanationCodes
    # @param vbasoftware_database [String] Target database
    # @param ex_code [String] Ex Code
    # @param [Hash] opts the optional parameters
    # @return [ExplanationCodesVBAResponse]
    def get_explanation_codes(vbasoftware_database, ex_code, opts = {})
      data, _status_code, _headers = get_explanation_codes_with_http_info(vbasoftware_database, ex_code, opts)
      data
    end

    # Get ExplanationCodes
    # Gets ExplanationCodes
    # @param vbasoftware_database [String] Target database
    # @param ex_code [String] Ex Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExplanationCodesVBAResponse, Integer, Hash)>] ExplanationCodesVBAResponse data, response status code and response headers
    def get_explanation_codes_with_http_info(vbasoftware_database, ex_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplanationCodesApi.get_explanation_codes ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplanationCodesApi.get_explanation_codes"
      end
      # verify the required parameter 'ex_code' is set
      if @api_client.config.client_side_validation && ex_code.nil?
        fail ArgumentError, "Missing the required parameter 'ex_code' when calling ExplanationCodesApi.get_explanation_codes"
      end
      # resource path
      local_var_path = '/ex-codes/{exCode}'.sub('{' + 'exCode' + '}', CGI.escape(ex_code.to_s))

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
      return_type = opts[:debug_return_type] || 'ExplanationCodesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplanationCodesApi.get_explanation_codes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplanationCodesApi#get_explanation_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ExplanationCodes
    # Lists all ExplanationCodes
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [ExplanationCodesListVBAResponse]
    def list_explanation_codes(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_explanation_codes_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ExplanationCodes
    # Lists all ExplanationCodes
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExplanationCodesListVBAResponse, Integer, Hash)>] ExplanationCodesListVBAResponse data, response status code and response headers
    def list_explanation_codes_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplanationCodesApi.list_explanation_codes ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplanationCodesApi.list_explanation_codes"
      end
      # resource path
      local_var_path = '/ex-codes'

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
      return_type = opts[:debug_return_type] || 'ExplanationCodesListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplanationCodesApi.list_explanation_codes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplanationCodesApi#list_explanation_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ExplanationCodes
    # Create or Update multiple ExplanationCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param explanation_codes [Array<ExplanationCodes>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_explanation_codes(vbasoftware_database, explanation_codes, opts = {})
      data, _status_code, _headers = update_batch_explanation_codes_with_http_info(vbasoftware_database, explanation_codes, opts)
      data
    end

    # Create or Update Batch ExplanationCodes
    # Create or Update multiple ExplanationCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param explanation_codes [Array<ExplanationCodes>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_explanation_codes_with_http_info(vbasoftware_database, explanation_codes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplanationCodesApi.update_batch_explanation_codes ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplanationCodesApi.update_batch_explanation_codes"
      end
      # verify the required parameter 'explanation_codes' is set
      if @api_client.config.client_side_validation && explanation_codes.nil?
        fail ArgumentError, "Missing the required parameter 'explanation_codes' when calling ExplanationCodesApi.update_batch_explanation_codes"
      end
      # resource path
      local_var_path = '/ex-codes-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(explanation_codes)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplanationCodesApi.update_batch_explanation_codes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplanationCodesApi#update_batch_explanation_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ExplanationCodes
    # Updates a specific ExplanationCodes.
    # @param vbasoftware_database [String] Target database
    # @param ex_code [String] Ex Code
    # @param explanation_codes [ExplanationCodes] 
    # @param [Hash] opts the optional parameters
    # @return [ExplanationCodesVBAResponse]
    def update_explanation_codes(vbasoftware_database, ex_code, explanation_codes, opts = {})
      data, _status_code, _headers = update_explanation_codes_with_http_info(vbasoftware_database, ex_code, explanation_codes, opts)
      data
    end

    # Update ExplanationCodes
    # Updates a specific ExplanationCodes.
    # @param vbasoftware_database [String] Target database
    # @param ex_code [String] Ex Code
    # @param explanation_codes [ExplanationCodes] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExplanationCodesVBAResponse, Integer, Hash)>] ExplanationCodesVBAResponse data, response status code and response headers
    def update_explanation_codes_with_http_info(vbasoftware_database, ex_code, explanation_codes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExplanationCodesApi.update_explanation_codes ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ExplanationCodesApi.update_explanation_codes"
      end
      # verify the required parameter 'ex_code' is set
      if @api_client.config.client_side_validation && ex_code.nil?
        fail ArgumentError, "Missing the required parameter 'ex_code' when calling ExplanationCodesApi.update_explanation_codes"
      end
      # verify the required parameter 'explanation_codes' is set
      if @api_client.config.client_side_validation && explanation_codes.nil?
        fail ArgumentError, "Missing the required parameter 'explanation_codes' when calling ExplanationCodesApi.update_explanation_codes"
      end
      # resource path
      local_var_path = '/ex-codes/{exCode}'.sub('{' + 'exCode' + '}', CGI.escape(ex_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(explanation_codes)

      # return_type
      return_type = opts[:debug_return_type] || 'ExplanationCodesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ExplanationCodesApi.update_explanation_codes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExplanationCodesApi#update_explanation_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
