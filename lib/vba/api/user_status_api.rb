=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class UserStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get User Status
    # Retrieves the current status of the user, including reminders and login status.
    # @param vbasoftware_database [String] Target database
    # @param user_id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [VBAUserStatusVBAResponse]
    def get_user_status(vbasoftware_database, user_id, opts = {})
      data, _status_code, _headers = get_user_status_with_http_info(vbasoftware_database, user_id, opts)
      data
    end

    # Get User Status
    # Retrieves the current status of the user, including reminders and login status.
    # @param vbasoftware_database [String] Target database
    # @param user_id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAUserStatusVBAResponse, Integer, Hash)>] VBAUserStatusVBAResponse data, response status code and response headers
    def get_user_status_with_http_info(vbasoftware_database, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserStatusApi.get_user_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling UserStatusApi.get_user_status"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserStatusApi.get_user_status"
      end
      # resource path
      local_var_path = '/users/{userId}/status'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'VBAUserStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"UserStatusApi.get_user_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserStatusApi#get_user_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
