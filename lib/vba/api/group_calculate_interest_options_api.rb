=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class GroupCalculateInterestOptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Calculate Interest Options
    # List of key/value pairs for Calculate Interest Options
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [StringStaticOptionListVBAResponse]
    def list_calculate_interest_options(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_calculate_interest_options_with_http_info(vbasoftware_database, opts)
      data
    end

    # Calculate Interest Options
    # List of key/value pairs for Calculate Interest Options
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringStaticOptionListVBAResponse, Integer, Hash)>] StringStaticOptionListVBAResponse data, response status code and response headers
    def list_calculate_interest_options_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupCalculateInterestOptionsApi.list_calculate_interest_options ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupCalculateInterestOptionsApi.list_calculate_interest_options"
      end
      # resource path
      local_var_path = '/calculate-interest-options'

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
      return_type = opts[:debug_return_type] || 'StringStaticOptionListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupCalculateInterestOptionsApi.list_calculate_interest_options",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupCalculateInterestOptionsApi#list_calculate_interest_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
