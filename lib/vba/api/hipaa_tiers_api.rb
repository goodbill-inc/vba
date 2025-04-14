=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class HIPAATiersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create HIPAATier
    # Creates a new HIPAATier
    # @param vbasoftware_database [String] Target database
    # @param hipaa_tier [HIPAATier] 
    # @param [Hash] opts the optional parameters
    # @return [HIPAATierVBAResponse]
    def create_hipaa_tier(vbasoftware_database, hipaa_tier, opts = {})
      data, _status_code, _headers = create_hipaa_tier_with_http_info(vbasoftware_database, hipaa_tier, opts)
      data
    end

    # Create HIPAATier
    # Creates a new HIPAATier
    # @param vbasoftware_database [String] Target database
    # @param hipaa_tier [HIPAATier] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(HIPAATierVBAResponse, Integer, Hash)>] HIPAATierVBAResponse data, response status code and response headers
    def create_hipaa_tier_with_http_info(vbasoftware_database, hipaa_tier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAATiersApi.create_hipaa_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAATiersApi.create_hipaa_tier"
      end
      # verify the required parameter 'hipaa_tier' is set
      if @api_client.config.client_side_validation && hipaa_tier.nil?
        fail ArgumentError, "Missing the required parameter 'hipaa_tier' when calling HIPAATiersApi.create_hipaa_tier"
      end
      # resource path
      local_var_path = '/hipaa-tiers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(hipaa_tier)

      # return_type
      return_type = opts[:debug_return_type] || 'HIPAATierVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAATiersApi.create_hipaa_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAATiersApi#create_hipaa_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete HIPAATier
    # Deletes an HIPAATier
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_hipaa_tier(vbasoftware_database, h_ipaa_code, opts = {})
      delete_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code, opts)
      nil
    end

    # Delete HIPAATier
    # Deletes an HIPAATier
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAATiersApi.delete_hipaa_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAATiersApi.delete_hipaa_tier"
      end
      # verify the required parameter 'h_ipaa_code' is set
      if @api_client.config.client_side_validation && h_ipaa_code.nil?
        fail ArgumentError, "Missing the required parameter 'h_ipaa_code' when calling HIPAATiersApi.delete_hipaa_tier"
      end
      # resource path
      local_var_path = '/hipaa-tiers/{hIPAACode}'.sub('{' + 'hIPAACode' + '}', CGI.escape(h_ipaa_code.to_s))

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
        :operation => :"HIPAATiersApi.delete_hipaa_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAATiersApi#delete_hipaa_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get HIPAATier
    # Gets HIPAATier
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param [Hash] opts the optional parameters
    # @return [HIPAATierVBAResponse]
    def get_hipaa_tier(vbasoftware_database, h_ipaa_code, opts = {})
      data, _status_code, _headers = get_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code, opts)
      data
    end

    # Get HIPAATier
    # Gets HIPAATier
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(HIPAATierVBAResponse, Integer, Hash)>] HIPAATierVBAResponse data, response status code and response headers
    def get_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAATiersApi.get_hipaa_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAATiersApi.get_hipaa_tier"
      end
      # verify the required parameter 'h_ipaa_code' is set
      if @api_client.config.client_side_validation && h_ipaa_code.nil?
        fail ArgumentError, "Missing the required parameter 'h_ipaa_code' when calling HIPAATiersApi.get_hipaa_tier"
      end
      # resource path
      local_var_path = '/hipaa-tiers/{hIPAACode}'.sub('{' + 'hIPAACode' + '}', CGI.escape(h_ipaa_code.to_s))

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
      return_type = opts[:debug_return_type] || 'HIPAATierVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAATiersApi.get_hipaa_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAATiersApi#get_hipaa_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List HIPAATier
    # Lists all HIPAATier given a specific 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [HIPAATierListVBAResponse]
    def list_hipaa_tier(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_hipaa_tier_with_http_info(vbasoftware_database, opts)
      data
    end

    # List HIPAATier
    # Lists all HIPAATier given a specific 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(HIPAATierListVBAResponse, Integer, Hash)>] HIPAATierListVBAResponse data, response status code and response headers
    def list_hipaa_tier_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAATiersApi.list_hipaa_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAATiersApi.list_hipaa_tier"
      end
      # resource path
      local_var_path = '/hipaa-tiers'

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
      return_type = opts[:debug_return_type] || 'HIPAATierListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAATiersApi.list_hipaa_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAATiersApi#list_hipaa_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch HIPAATier
    # Create or Update multiple HIPAATier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param hipaa_tier [Array<HIPAATier>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_hipaa_tier(vbasoftware_database, hipaa_tier, opts = {})
      data, _status_code, _headers = update_batch_hipaa_tier_with_http_info(vbasoftware_database, hipaa_tier, opts)
      data
    end

    # Create or Update Batch HIPAATier
    # Create or Update multiple HIPAATier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param hipaa_tier [Array<HIPAATier>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_hipaa_tier_with_http_info(vbasoftware_database, hipaa_tier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAATiersApi.update_batch_hipaa_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAATiersApi.update_batch_hipaa_tier"
      end
      # verify the required parameter 'hipaa_tier' is set
      if @api_client.config.client_side_validation && hipaa_tier.nil?
        fail ArgumentError, "Missing the required parameter 'hipaa_tier' when calling HIPAATiersApi.update_batch_hipaa_tier"
      end
      # resource path
      local_var_path = '/hipaa-tiers-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(hipaa_tier)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAATiersApi.update_batch_hipaa_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAATiersApi#update_batch_hipaa_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update HIPAATier
    # Updates a specific HIPAATier.
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param hipaa_tier [HIPAATier] 
    # @param [Hash] opts the optional parameters
    # @return [HIPAATierVBAResponse]
    def update_hipaa_tier(vbasoftware_database, h_ipaa_code, hipaa_tier, opts = {})
      data, _status_code, _headers = update_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_tier, opts)
      data
    end

    # Update HIPAATier
    # Updates a specific HIPAATier.
    # @param vbasoftware_database [String] Target database
    # @param h_ipaa_code [String] HIPAA Code
    # @param hipaa_tier [HIPAATier] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(HIPAATierVBAResponse, Integer, Hash)>] HIPAATierVBAResponse data, response status code and response headers
    def update_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_tier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HIPAATiersApi.update_hipaa_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling HIPAATiersApi.update_hipaa_tier"
      end
      # verify the required parameter 'h_ipaa_code' is set
      if @api_client.config.client_side_validation && h_ipaa_code.nil?
        fail ArgumentError, "Missing the required parameter 'h_ipaa_code' when calling HIPAATiersApi.update_hipaa_tier"
      end
      # verify the required parameter 'hipaa_tier' is set
      if @api_client.config.client_side_validation && hipaa_tier.nil?
        fail ArgumentError, "Missing the required parameter 'hipaa_tier' when calling HIPAATiersApi.update_hipaa_tier"
      end
      # resource path
      local_var_path = '/hipaa-tiers/{hIPAACode}'.sub('{' + 'hIPAACode' + '}', CGI.escape(h_ipaa_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(hipaa_tier)

      # return_type
      return_type = opts[:debug_return_type] || 'HIPAATierVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"HIPAATiersApi.update_hipaa_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HIPAATiersApi#update_hipaa_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
