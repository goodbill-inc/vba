=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class MemberPreExDisclosedDiagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create MemberPreExDisclosedDiag
    # Creates a new MemberPreExDisclosedDiag
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag [MemberPreExDisclosedDiag] 
    # @param [Hash] opts the optional parameters
    # @return [MemberPreExDisclosedDiagVBAResponse]
    def create_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag, opts = {})
      data, _status_code, _headers = create_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag, opts)
      data
    end

    # Create MemberPreExDisclosedDiag
    # Creates a new MemberPreExDisclosedDiag
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag [MemberPreExDisclosedDiag] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberPreExDisclosedDiagVBAResponse, Integer, Hash)>] MemberPreExDisclosedDiagVBAResponse data, response status code and response headers
    def create_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPreExDisclosedDiagsApi.create_member_pre_ex_disclosed_diag ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPreExDisclosedDiagsApi.create_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPreExDisclosedDiagsApi.create_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPreExDisclosedDiagsApi.create_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_pre_ex_disclosed_diag' is set
      if @api_client.config.client_side_validation && member_pre_ex_disclosed_diag.nil?
        fail ArgumentError, "Missing the required parameter 'member_pre_ex_disclosed_diag' when calling MemberPreExDisclosedDiagsApi.create_member_pre_ex_disclosed_diag"
      end
      # resource path
      local_var_path = '/subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags'.sub('{' + 'Subscriber_ID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'Member_Seq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_pre_ex_disclosed_diag)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberPreExDisclosedDiagVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPreExDisclosedDiagsApi.create_member_pre_ex_disclosed_diag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPreExDisclosedDiagsApi#create_member_pre_ex_disclosed_diag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MemberPreExDisclosedDiag
    # Deletes an MemberPreExDisclosedDiag
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag_key [Integer] MemberPreExDisclosedDiag Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, opts = {})
      delete_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, opts)
      nil
    end

    # Delete MemberPreExDisclosedDiag
    # Deletes an MemberPreExDisclosedDiag
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag_key [Integer] MemberPreExDisclosedDiag Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPreExDisclosedDiagsApi.delete_member_pre_ex_disclosed_diag ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPreExDisclosedDiagsApi.delete_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPreExDisclosedDiagsApi.delete_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPreExDisclosedDiagsApi.delete_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_pre_ex_disclosed_diag_key' is set
      if @api_client.config.client_side_validation && member_pre_ex_disclosed_diag_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_pre_ex_disclosed_diag_key' when calling MemberPreExDisclosedDiagsApi.delete_member_pre_ex_disclosed_diag"
      end
      # resource path
      local_var_path = '/subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags/{MemberPreExDisclosedDiag_Key}'.sub('{' + 'Subscriber_ID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'Member_Seq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'MemberPreExDisclosedDiag_Key' + '}', CGI.escape(member_pre_ex_disclosed_diag_key.to_s))

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
        :operation => :"MemberPreExDisclosedDiagsApi.delete_member_pre_ex_disclosed_diag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPreExDisclosedDiagsApi#delete_member_pre_ex_disclosed_diag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MemberPreExDisclosedDiag
    # Gets MemberPreExDisclosedDiag
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag_key [Integer] MemberPreExDisclosedDiag Key
    # @param [Hash] opts the optional parameters
    # @return [MemberPreExDisclosedDiagVBAResponse]
    def get_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, opts = {})
      data, _status_code, _headers = get_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, opts)
      data
    end

    # Get MemberPreExDisclosedDiag
    # Gets MemberPreExDisclosedDiag
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag_key [Integer] MemberPreExDisclosedDiag Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberPreExDisclosedDiagVBAResponse, Integer, Hash)>] MemberPreExDisclosedDiagVBAResponse data, response status code and response headers
    def get_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPreExDisclosedDiagsApi.get_member_pre_ex_disclosed_diag ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPreExDisclosedDiagsApi.get_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPreExDisclosedDiagsApi.get_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPreExDisclosedDiagsApi.get_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_pre_ex_disclosed_diag_key' is set
      if @api_client.config.client_side_validation && member_pre_ex_disclosed_diag_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_pre_ex_disclosed_diag_key' when calling MemberPreExDisclosedDiagsApi.get_member_pre_ex_disclosed_diag"
      end
      # resource path
      local_var_path = '/subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags/{MemberPreExDisclosedDiag_Key}'.sub('{' + 'Subscriber_ID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'Member_Seq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'MemberPreExDisclosedDiag_Key' + '}', CGI.escape(member_pre_ex_disclosed_diag_key.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberPreExDisclosedDiagVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPreExDisclosedDiagsApi.get_member_pre_ex_disclosed_diag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPreExDisclosedDiagsApi#get_member_pre_ex_disclosed_diag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List MemberPreExDisclosedDiag
    # Lists all MemberPreExDisclosedDiag for the given Subscriber_ID and Member_Seq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [MemberPreExDisclosedDiagListVBAResponse]
    def list_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, opts = {})
      data, _status_code, _headers = list_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
      data
    end

    # List MemberPreExDisclosedDiag
    # Lists all MemberPreExDisclosedDiag for the given Subscriber_ID and Member_Seq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [Array<(MemberPreExDisclosedDiagListVBAResponse, Integer, Hash)>] MemberPreExDisclosedDiagListVBAResponse data, response status code and response headers
    def list_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPreExDisclosedDiagsApi.list_member_pre_ex_disclosed_diag ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPreExDisclosedDiagsApi.list_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPreExDisclosedDiagsApi.list_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPreExDisclosedDiagsApi.list_member_pre_ex_disclosed_diag"
      end
      # resource path
      local_var_path = '/subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags'.sub('{' + 'Subscriber_ID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'Member_Seq' + '}', CGI.escape(member_seq.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

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
      return_type = opts[:debug_return_type] || 'MemberPreExDisclosedDiagListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPreExDisclosedDiagsApi.list_member_pre_ex_disclosed_diag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPreExDisclosedDiagsApi#list_member_pre_ex_disclosed_diag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch MemberPreExDisclosedDiag
    # Create or Update multiple MemberPreExDisclosedDiag at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag [Array<MemberPreExDisclosedDiag>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag, opts = {})
      data, _status_code, _headers = update_batch_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag, opts)
      data
    end

    # Create or Update Batch MemberPreExDisclosedDiag
    # Create or Update multiple MemberPreExDisclosedDiag at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag [Array<MemberPreExDisclosedDiag>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPreExDisclosedDiagsApi.update_batch_member_pre_ex_disclosed_diag ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPreExDisclosedDiagsApi.update_batch_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPreExDisclosedDiagsApi.update_batch_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPreExDisclosedDiagsApi.update_batch_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_pre_ex_disclosed_diag' is set
      if @api_client.config.client_side_validation && member_pre_ex_disclosed_diag.nil?
        fail ArgumentError, "Missing the required parameter 'member_pre_ex_disclosed_diag' when calling MemberPreExDisclosedDiagsApi.update_batch_member_pre_ex_disclosed_diag"
      end
      # resource path
      local_var_path = '/subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags-batch'.sub('{' + 'Subscriber_ID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'Member_Seq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_pre_ex_disclosed_diag)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPreExDisclosedDiagsApi.update_batch_member_pre_ex_disclosed_diag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPreExDisclosedDiagsApi#update_batch_member_pre_ex_disclosed_diag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update MemberPreExDisclosedDiag
    # Updates a specific MemberPreExDisclosedDiag.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag_key [Integer] MemberPreExDisclosedDiag Key
    # @param member_pre_ex_disclosed_diag [MemberPreExDisclosedDiag] 
    # @param [Hash] opts the optional parameters
    # @return [MemberPreExDisclosedDiagVBAResponse]
    def update_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, member_pre_ex_disclosed_diag, opts = {})
      data, _status_code, _headers = update_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, member_pre_ex_disclosed_diag, opts)
      data
    end

    # Update MemberPreExDisclosedDiag
    # Updates a specific MemberPreExDisclosedDiag.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_pre_ex_disclosed_diag_key [Integer] MemberPreExDisclosedDiag Key
    # @param member_pre_ex_disclosed_diag [MemberPreExDisclosedDiag] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberPreExDisclosedDiagVBAResponse, Integer, Hash)>] MemberPreExDisclosedDiagVBAResponse data, response status code and response headers
    def update_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, member_pre_ex_disclosed_diag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberPreExDisclosedDiagsApi.update_member_pre_ex_disclosed_diag ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberPreExDisclosedDiagsApi.update_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberPreExDisclosedDiagsApi.update_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberPreExDisclosedDiagsApi.update_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_pre_ex_disclosed_diag_key' is set
      if @api_client.config.client_side_validation && member_pre_ex_disclosed_diag_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_pre_ex_disclosed_diag_key' when calling MemberPreExDisclosedDiagsApi.update_member_pre_ex_disclosed_diag"
      end
      # verify the required parameter 'member_pre_ex_disclosed_diag' is set
      if @api_client.config.client_side_validation && member_pre_ex_disclosed_diag.nil?
        fail ArgumentError, "Missing the required parameter 'member_pre_ex_disclosed_diag' when calling MemberPreExDisclosedDiagsApi.update_member_pre_ex_disclosed_diag"
      end
      # resource path
      local_var_path = '/subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags/{MemberPreExDisclosedDiag_Key}'.sub('{' + 'Subscriber_ID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'Member_Seq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'MemberPreExDisclosedDiag_Key' + '}', CGI.escape(member_pre_ex_disclosed_diag_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_pre_ex_disclosed_diag)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberPreExDisclosedDiagVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberPreExDisclosedDiagsApi.update_member_pre_ex_disclosed_diag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberPreExDisclosedDiagsApi#update_member_pre_ex_disclosed_diag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
