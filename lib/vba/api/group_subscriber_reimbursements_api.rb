=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class GroupSubscriberReimbursementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create SubscriberReimbursement
    # Creates a new SubscriberReimbursement
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement [SubscriberReimbursement] 
    # @param [Hash] opts the optional parameters
    # @return [SubscriberReimbursementVBAResponse]
    def create_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement, opts = {})
      data, _status_code, _headers = create_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement, opts)
      data
    end

    # Create SubscriberReimbursement
    # Creates a new SubscriberReimbursement
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement [SubscriberReimbursement] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriberReimbursementVBAResponse, Integer, Hash)>] SubscriberReimbursementVBAResponse data, response status code and response headers
    def create_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupSubscriberReimbursementsApi.create_subscriber_reimbursement ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupSubscriberReimbursementsApi.create_subscriber_reimbursement"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupSubscriberReimbursementsApi.create_subscriber_reimbursement"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling GroupSubscriberReimbursementsApi.create_subscriber_reimbursement"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling GroupSubscriberReimbursementsApi.create_subscriber_reimbursement"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling GroupSubscriberReimbursementsApi.create_subscriber_reimbursement"
      end
      # verify the required parameter 'subscriber_reimbursement' is set
      if @api_client.config.client_side_validation && subscriber_reimbursement.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_reimbursement' when calling GroupSubscriberReimbursementsApi.create_subscriber_reimbursement"
      end
      # resource path
      local_var_path = '/groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscriber_reimbursement)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriberReimbursementVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupSubscriberReimbursementsApi.create_subscriber_reimbursement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupSubscriberReimbursementsApi#create_subscriber_reimbursement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete SubscriberReimbursement
    # Deletes an SubscriberReimbursement
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement_key [Integer] SubscriberReimbursement Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, opts = {})
      delete_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, opts)
      nil
    end

    # Delete SubscriberReimbursement
    # Deletes an SubscriberReimbursement
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement_key [Integer] SubscriberReimbursement Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupSubscriberReimbursementsApi.delete_subscriber_reimbursement ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupSubscriberReimbursementsApi.delete_subscriber_reimbursement"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupSubscriberReimbursementsApi.delete_subscriber_reimbursement"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling GroupSubscriberReimbursementsApi.delete_subscriber_reimbursement"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling GroupSubscriberReimbursementsApi.delete_subscriber_reimbursement"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling GroupSubscriberReimbursementsApi.delete_subscriber_reimbursement"
      end
      # verify the required parameter 'subscriber_reimbursement_key' is set
      if @api_client.config.client_side_validation && subscriber_reimbursement_key.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_reimbursement_key' when calling GroupSubscriberReimbursementsApi.delete_subscriber_reimbursement"
      end
      # resource path
      local_var_path = '/groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements/{subscriberReimbursementKey}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s)).sub('{' + 'subscriberReimbursementKey' + '}', CGI.escape(subscriber_reimbursement_key.to_s))

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
        :operation => :"GroupSubscriberReimbursementsApi.delete_subscriber_reimbursement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupSubscriberReimbursementsApi#delete_subscriber_reimbursement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get SubscriberReimbursement
    # Gets SubscriberReimbursement
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement_key [Integer] SubscriberReimbursement Key
    # @param [Hash] opts the optional parameters
    # @return [SubscriberReimbursementVBAResponse]
    def get_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, opts = {})
      data, _status_code, _headers = get_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, opts)
      data
    end

    # Get SubscriberReimbursement
    # Gets SubscriberReimbursement
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement_key [Integer] SubscriberReimbursement Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriberReimbursementVBAResponse, Integer, Hash)>] SubscriberReimbursementVBAResponse data, response status code and response headers
    def get_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupSubscriberReimbursementsApi.get_subscriber_reimbursement ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupSubscriberReimbursementsApi.get_subscriber_reimbursement"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupSubscriberReimbursementsApi.get_subscriber_reimbursement"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling GroupSubscriberReimbursementsApi.get_subscriber_reimbursement"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling GroupSubscriberReimbursementsApi.get_subscriber_reimbursement"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling GroupSubscriberReimbursementsApi.get_subscriber_reimbursement"
      end
      # verify the required parameter 'subscriber_reimbursement_key' is set
      if @api_client.config.client_side_validation && subscriber_reimbursement_key.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_reimbursement_key' when calling GroupSubscriberReimbursementsApi.get_subscriber_reimbursement"
      end
      # resource path
      local_var_path = '/groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements/{subscriberReimbursementKey}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s)).sub('{' + 'subscriberReimbursementKey' + '}', CGI.escape(subscriber_reimbursement_key.to_s))

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
      return_type = opts[:debug_return_type] || 'SubscriberReimbursementVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupSubscriberReimbursementsApi.get_subscriber_reimbursement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupSubscriberReimbursementsApi#get_subscriber_reimbursement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List SubscriberReimbursement
    # Lists all SubscriberReimbursement for the given groupID and planID and benefitCode and maxID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [SubscriberReimbursementListVBAResponse]
    def list_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, opts = {})
      data, _status_code, _headers = list_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, opts)
      data
    end

    # List SubscriberReimbursement
    # Lists all SubscriberReimbursement for the given groupID and planID and benefitCode and maxID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(SubscriberReimbursementListVBAResponse, Integer, Hash)>] SubscriberReimbursementListVBAResponse data, response status code and response headers
    def list_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupSubscriberReimbursementsApi.list_subscriber_reimbursement ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupSubscriberReimbursementsApi.list_subscriber_reimbursement"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupSubscriberReimbursementsApi.list_subscriber_reimbursement"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling GroupSubscriberReimbursementsApi.list_subscriber_reimbursement"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling GroupSubscriberReimbursementsApi.list_subscriber_reimbursement"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling GroupSubscriberReimbursementsApi.list_subscriber_reimbursement"
      end
      # resource path
      local_var_path = '/groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s))

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
      return_type = opts[:debug_return_type] || 'SubscriberReimbursementListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupSubscriberReimbursementsApi.list_subscriber_reimbursement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupSubscriberReimbursementsApi#list_subscriber_reimbursement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch SubscriberReimbursement
    # Create or Update multiple SubscriberReimbursement at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement [Array<SubscriberReimbursement>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement, opts = {})
      data, _status_code, _headers = update_batch_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement, opts)
      data
    end

    # Create or Update Batch SubscriberReimbursement
    # Create or Update multiple SubscriberReimbursement at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement [Array<SubscriberReimbursement>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupSubscriberReimbursementsApi.update_batch_subscriber_reimbursement ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupSubscriberReimbursementsApi.update_batch_subscriber_reimbursement"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupSubscriberReimbursementsApi.update_batch_subscriber_reimbursement"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling GroupSubscriberReimbursementsApi.update_batch_subscriber_reimbursement"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling GroupSubscriberReimbursementsApi.update_batch_subscriber_reimbursement"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling GroupSubscriberReimbursementsApi.update_batch_subscriber_reimbursement"
      end
      # verify the required parameter 'subscriber_reimbursement' is set
      if @api_client.config.client_side_validation && subscriber_reimbursement.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_reimbursement' when calling GroupSubscriberReimbursementsApi.update_batch_subscriber_reimbursement"
      end
      # resource path
      local_var_path = '/groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements-batch'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscriber_reimbursement)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupSubscriberReimbursementsApi.update_batch_subscriber_reimbursement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupSubscriberReimbursementsApi#update_batch_subscriber_reimbursement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update SubscriberReimbursement
    # Updates a specific SubscriberReimbursement.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement_key [Integer] SubscriberReimbursement Key
    # @param subscriber_reimbursement [SubscriberReimbursement] 
    # @param [Hash] opts the optional parameters
    # @return [SubscriberReimbursementVBAResponse]
    def update_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, subscriber_reimbursement, opts = {})
      data, _status_code, _headers = update_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, subscriber_reimbursement, opts)
      data
    end

    # Update SubscriberReimbursement
    # Updates a specific SubscriberReimbursement.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param subscriber_reimbursement_key [Integer] SubscriberReimbursement Key
    # @param subscriber_reimbursement [SubscriberReimbursement] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriberReimbursementVBAResponse, Integer, Hash)>] SubscriberReimbursementVBAResponse data, response status code and response headers
    def update_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, subscriber_reimbursement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupSubscriberReimbursementsApi.update_subscriber_reimbursement ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupSubscriberReimbursementsApi.update_subscriber_reimbursement"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupSubscriberReimbursementsApi.update_subscriber_reimbursement"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling GroupSubscriberReimbursementsApi.update_subscriber_reimbursement"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling GroupSubscriberReimbursementsApi.update_subscriber_reimbursement"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling GroupSubscriberReimbursementsApi.update_subscriber_reimbursement"
      end
      # verify the required parameter 'subscriber_reimbursement_key' is set
      if @api_client.config.client_side_validation && subscriber_reimbursement_key.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_reimbursement_key' when calling GroupSubscriberReimbursementsApi.update_subscriber_reimbursement"
      end
      # verify the required parameter 'subscriber_reimbursement' is set
      if @api_client.config.client_side_validation && subscriber_reimbursement.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_reimbursement' when calling GroupSubscriberReimbursementsApi.update_subscriber_reimbursement"
      end
      # resource path
      local_var_path = '/groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements/{subscriberReimbursementKey}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s)).sub('{' + 'subscriberReimbursementKey' + '}', CGI.escape(subscriber_reimbursement_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscriber_reimbursement)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriberReimbursementVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupSubscriberReimbursementsApi.update_subscriber_reimbursement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupSubscriberReimbursementsApi#update_subscriber_reimbursement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
