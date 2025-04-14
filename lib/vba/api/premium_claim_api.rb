=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PremiumClaimApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Recalculates Authorizations
    # Recalculates all Authorizations for the specified Batch ID and Claim ID
    # @param vbasoftware_database [String] Target database
    # @param batch_id [Integer] Batch Id
    # @param claim_id [Integer] Claim Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def recalculate_auths(vbasoftware_database, batch_id, claim_id, opts = {})
      recalculate_auths_with_http_info(vbasoftware_database, batch_id, claim_id, opts)
      nil
    end

    # Recalculates Authorizations
    # Recalculates all Authorizations for the specified Batch ID and Claim ID
    # @param vbasoftware_database [String] Target database
    # @param batch_id [Integer] Batch Id
    # @param claim_id [Integer] Claim Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def recalculate_auths_with_http_info(vbasoftware_database, batch_id, claim_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumClaimApi.recalculate_auths ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumClaimApi.recalculate_auths"
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling PremiumClaimApi.recalculate_auths"
      end
      # verify the required parameter 'claim_id' is set
      if @api_client.config.client_side_validation && claim_id.nil?
        fail ArgumentError, "Missing the required parameter 'claim_id' when calling PremiumClaimApi.recalculate_auths"
      end
      # resource path
      local_var_path = '/batches/{batchID}/claims/{claimID}/recalculate-auths'.sub('{' + 'batchID' + '}', CGI.escape(batch_id.to_s)).sub('{' + 'claimID' + '}', CGI.escape(claim_id.to_s))

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
        :operation => :"PremiumClaimApi.recalculate_auths",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumClaimApi#recalculate_auths\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
