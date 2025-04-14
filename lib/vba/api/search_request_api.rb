=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class SearchRequestApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Run a search
    # Runs a search usng the provided Search Request
    # @param vbasoftware_database [String] Target database
    # @param search_request [SearchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SearchResultVBAResponse]
    def search_request(vbasoftware_database, search_request, opts = {})
      data, _status_code, _headers = search_request_with_http_info(vbasoftware_database, search_request, opts)
      data
    end

    # Run a search
    # Runs a search usng the provided Search Request
    # @param vbasoftware_database [String] Target database
    # @param search_request [SearchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchResultVBAResponse, Integer, Hash)>] SearchResultVBAResponse data, response status code and response headers
    def search_request_with_http_info(vbasoftware_database, search_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SearchRequestApi.search_request ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SearchRequestApi.search_request"
      end
      # verify the required parameter 'search_request' is set
      if @api_client.config.client_side_validation && search_request.nil?
        fail ArgumentError, "Missing the required parameter 'search_request' when calling SearchRequestApi.search_request"
      end
      # resource path
      local_var_path = '/search'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(search_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SearchResultVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SearchRequestApi.search_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchRequestApi#search_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
