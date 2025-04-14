=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class GroupDisenrollAffectedClaimsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Affected Claims for Disrolling Group ID
    # List Affected Claims for Disrolling Group ID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param disenroll_date [Time] Disenroll Date
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [VBAGroupDisenrollAffectedClaimsListVBAResponse]
    def list_group_disenroll_affected_claims(vbasoftware_database, group_id, disenroll_date, opts = {})
      data, _status_code, _headers = list_group_disenroll_affected_claims_with_http_info(vbasoftware_database, group_id, disenroll_date, opts)
      data
    end

    # Get Affected Claims for Disrolling Group ID
    # List Affected Claims for Disrolling Group ID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param disenroll_date [Time] Disenroll Date
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(VBAGroupDisenrollAffectedClaimsListVBAResponse, Integer, Hash)>] VBAGroupDisenrollAffectedClaimsListVBAResponse data, response status code and response headers
    def list_group_disenroll_affected_claims_with_http_info(vbasoftware_database, group_id, disenroll_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupDisenrollAffectedClaimsApi.list_group_disenroll_affected_claims ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupDisenrollAffectedClaimsApi.list_group_disenroll_affected_claims"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupDisenrollAffectedClaimsApi.list_group_disenroll_affected_claims"
      end
      # verify the required parameter 'disenroll_date' is set
      if @api_client.config.client_side_validation && disenroll_date.nil?
        fail ArgumentError, "Missing the required parameter 'disenroll_date' when calling GroupDisenrollAffectedClaimsApi.list_group_disenroll_affected_claims"
      end
      # resource path
      local_var_path = '/groups/{groupID}/disenroll-affected-claims'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'disenrollDate'] = disenroll_date
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
      return_type = opts[:debug_return_type] || 'VBAGroupDisenrollAffectedClaimsListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupDisenrollAffectedClaimsApi.list_group_disenroll_affected_claims",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupDisenrollAffectedClaimsApi#list_group_disenroll_affected_claims\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
