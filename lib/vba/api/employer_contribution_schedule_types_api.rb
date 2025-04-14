=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class EmployerContributionScheduleTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Employer Contribution Schedule Types
    # List of key/value pairs for Employer Contribution Schedule
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [StringStaticOptionListVBAResponse]
    def list_employer_contribution_schedule(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_employer_contribution_schedule_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Employer Contribution Schedule Types
    # List of key/value pairs for Employer Contribution Schedule
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringStaticOptionListVBAResponse, Integer, Hash)>] StringStaticOptionListVBAResponse data, response status code and response headers
    def list_employer_contribution_schedule_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmployerContributionScheduleTypesApi.list_employer_contribution_schedule ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling EmployerContributionScheduleTypesApi.list_employer_contribution_schedule"
      end
      # resource path
      local_var_path = '/employer-contribution-schedule-types'

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
        :operation => :"EmployerContributionScheduleTypesApi.list_employer_contribution_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmployerContributionScheduleTypesApi#list_employer_contribution_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
