=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class MemberPlanYearsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create MemberPlanYear
    # Creates a new MemberPlanYear
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year [MemberPlanYear] 
    # @param [Hash] opts the optional parameters
    # @return [MemberPlanYearVBAResponse]
    def create_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year, opts = {})
      data, _status_code, _headers = create_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year, opts)
      data
    end

    # Create MemberPlanYear
    # Creates a new MemberPlanYear
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year [MemberPlanYear] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberPlanYearVBAResponse, Integer, Hash)>] MemberPlanYearVBAResponse data, response status code and response headers
    def create_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPlanYearsApi.create_member_plan_year ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPlanYearsApi.create_member_plan_year"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPlanYearsApi.create_member_plan_year"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPlanYearsApi.create_member_plan_year"
      end
      # verify the required parameter 'member_plan_year' is set
      if @api_client.config.client_side_validation && member_plan_year.nil?
        fail ArgumentError, "Missing the required parameter 'member_plan_year' when calling MemberPlanYearsApi.create_member_plan_year"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/plan-years'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_plan_year)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberPlanYearVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPlanYearsApi.create_member_plan_year",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPlanYearsApi#create_member_plan_year\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MemberPlanYear
    # Deletes an MemberPlanYear
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year_key [Integer] MemberPlanYear Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, opts = {})
      delete_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, opts)
      nil
    end

    # Delete MemberPlanYear
    # Deletes an MemberPlanYear
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year_key [Integer] MemberPlanYear Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPlanYearsApi.delete_member_plan_year ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPlanYearsApi.delete_member_plan_year"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPlanYearsApi.delete_member_plan_year"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPlanYearsApi.delete_member_plan_year"
      end
      # verify the required parameter 'member_plan_year_key' is set
      if @api_client.config.client_side_validation && member_plan_year_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_plan_year_key' when calling MemberPlanYearsApi.delete_member_plan_year"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/plan-years/{memberPlanYearKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberPlanYearKey' + '}', CGI.escape(member_plan_year_key.to_s))

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
        :operation => :"MemberPlanYearsApi.delete_member_plan_year",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPlanYearsApi#delete_member_plan_year\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MemberPlanYear
    # Gets MemberPlanYear
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year_key [Integer] MemberPlanYear Key
    # @param [Hash] opts the optional parameters
    # @return [MemberPlanYearVBAResponse]
    def get_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, opts = {})
      data, _status_code, _headers = get_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, opts)
      data
    end

    # Get MemberPlanYear
    # Gets MemberPlanYear
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year_key [Integer] MemberPlanYear Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberPlanYearVBAResponse, Integer, Hash)>] MemberPlanYearVBAResponse data, response status code and response headers
    def get_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPlanYearsApi.get_member_plan_year ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPlanYearsApi.get_member_plan_year"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPlanYearsApi.get_member_plan_year"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPlanYearsApi.get_member_plan_year"
      end
      # verify the required parameter 'member_plan_year_key' is set
      if @api_client.config.client_side_validation && member_plan_year_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_plan_year_key' when calling MemberPlanYearsApi.get_member_plan_year"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/plan-years/{memberPlanYearKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberPlanYearKey' + '}', CGI.escape(member_plan_year_key.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberPlanYearVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPlanYearsApi.get_member_plan_year",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPlanYearsApi#get_member_plan_year\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List MemberPlanYear
    # Lists all MemberPlanYear for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [MemberPlanYearListVBAResponse]
    def list_member_plan_year(vbasoftware_database, subscriber_id, member_seq, opts = {})
      data, _status_code, _headers = list_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
      data
    end

    # List MemberPlanYear
    # Lists all MemberPlanYear for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(MemberPlanYearListVBAResponse, Integer, Hash)>] MemberPlanYearListVBAResponse data, response status code and response headers
    def list_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPlanYearsApi.list_member_plan_year ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPlanYearsApi.list_member_plan_year"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPlanYearsApi.list_member_plan_year"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPlanYearsApi.list_member_plan_year"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/plan-years'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberPlanYearListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPlanYearsApi.list_member_plan_year",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPlanYearsApi#list_member_plan_year\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch MemberPlanYear
    # Create or Update multiple MemberPlanYear at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year [Array<MemberPlanYear>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year, opts = {})
      data, _status_code, _headers = update_batch_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year, opts)
      data
    end

    # Create or Update Batch MemberPlanYear
    # Create or Update multiple MemberPlanYear at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year [Array<MemberPlanYear>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPlanYearsApi.update_batch_member_plan_year ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPlanYearsApi.update_batch_member_plan_year"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPlanYearsApi.update_batch_member_plan_year"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPlanYearsApi.update_batch_member_plan_year"
      end
      # verify the required parameter 'member_plan_year' is set
      if @api_client.config.client_side_validation && member_plan_year.nil?
        fail ArgumentError, "Missing the required parameter 'member_plan_year' when calling MemberPlanYearsApi.update_batch_member_plan_year"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/plan-years-batch'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_plan_year)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPlanYearsApi.update_batch_member_plan_year",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPlanYearsApi#update_batch_member_plan_year\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update MemberPlanYear
    # Updates a specific MemberPlanYear.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year_key [Integer] MemberPlanYear Key
    # @param member_plan_year [MemberPlanYear] 
    # @param [Hash] opts the optional parameters
    # @return [MemberPlanYearVBAResponse]
    def update_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, member_plan_year, opts = {})
      data, _status_code, _headers = update_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, member_plan_year, opts)
      data
    end

    # Update MemberPlanYear
    # Updates a specific MemberPlanYear.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_plan_year_key [Integer] MemberPlanYear Key
    # @param member_plan_year [MemberPlanYear] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberPlanYearVBAResponse, Integer, Hash)>] MemberPlanYearVBAResponse data, response status code and response headers
    def update_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, member_plan_year, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPlanYearsApi.update_member_plan_year ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPlanYearsApi.update_member_plan_year"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPlanYearsApi.update_member_plan_year"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPlanYearsApi.update_member_plan_year"
      end
      # verify the required parameter 'member_plan_year_key' is set
      if @api_client.config.client_side_validation && member_plan_year_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_plan_year_key' when calling MemberPlanYearsApi.update_member_plan_year"
      end
      # verify the required parameter 'member_plan_year' is set
      if @api_client.config.client_side_validation && member_plan_year.nil?
        fail ArgumentError, "Missing the required parameter 'member_plan_year' when calling MemberPlanYearsApi.update_member_plan_year"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/plan-years/{memberPlanYearKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberPlanYearKey' + '}', CGI.escape(member_plan_year_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_plan_year)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberPlanYearVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPlanYearsApi.update_member_plan_year",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPlanYearsApi#update_member_plan_year\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
