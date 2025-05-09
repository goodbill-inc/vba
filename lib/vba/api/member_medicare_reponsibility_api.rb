=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class MemberMedicareReponsibilityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create MemberMedicareResp
    # Creates a new MemberMedicareResp
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp [MemberMedicareResp] 
    # @param [Hash] opts the optional parameters
    # @return [MemberMedicareRespVBAResponse]
    def create_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp, opts = {})
      data, _status_code, _headers = create_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp, opts)
      data
    end

    # Create MemberMedicareResp
    # Creates a new MemberMedicareResp
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp [MemberMedicareResp] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberMedicareRespVBAResponse, Integer, Hash)>] MemberMedicareRespVBAResponse data, response status code and response headers
    def create_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberMedicareReponsibilityApi.create_member_medicare_resp ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberMedicareReponsibilityApi.create_member_medicare_resp"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberMedicareReponsibilityApi.create_member_medicare_resp"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberMedicareReponsibilityApi.create_member_medicare_resp"
      end
      # verify the required parameter 'member_medicare_resp' is set
      if @api_client.config.client_side_validation && member_medicare_resp.nil?
        fail ArgumentError, "Missing the required parameter 'member_medicare_resp' when calling MemberMedicareReponsibilityApi.create_member_medicare_resp"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_medicare_resp)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberMedicareRespVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberMedicareReponsibilityApi.create_member_medicare_resp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberMedicareReponsibilityApi#create_member_medicare_resp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MemberMedicareResp
    # Deletes an MemberMedicareResp
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp_key [Integer] MemberMedicareResp Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, opts = {})
      delete_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, opts)
      nil
    end

    # Delete MemberMedicareResp
    # Deletes an MemberMedicareResp
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp_key [Integer] MemberMedicareResp Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberMedicareReponsibilityApi.delete_member_medicare_resp ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberMedicareReponsibilityApi.delete_member_medicare_resp"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberMedicareReponsibilityApi.delete_member_medicare_resp"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberMedicareReponsibilityApi.delete_member_medicare_resp"
      end
      # verify the required parameter 'member_medicare_resp_key' is set
      if @api_client.config.client_side_validation && member_medicare_resp_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_medicare_resp_key' when calling MemberMedicareReponsibilityApi.delete_member_medicare_resp"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities/{memberMedicareRespKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberMedicareRespKey' + '}', CGI.escape(member_medicare_resp_key.to_s))

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
        :operation => :"MemberMedicareReponsibilityApi.delete_member_medicare_resp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberMedicareReponsibilityApi#delete_member_medicare_resp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MemberMedicareResp
    # Gets MemberMedicareResp
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp_key [Integer] MemberMedicareResp Key
    # @param [Hash] opts the optional parameters
    # @return [MemberMedicareRespVBAResponse]
    def get_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, opts = {})
      data, _status_code, _headers = get_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, opts)
      data
    end

    # Get MemberMedicareResp
    # Gets MemberMedicareResp
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp_key [Integer] MemberMedicareResp Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberMedicareRespVBAResponse, Integer, Hash)>] MemberMedicareRespVBAResponse data, response status code and response headers
    def get_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberMedicareReponsibilityApi.get_member_medicare_resp ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberMedicareReponsibilityApi.get_member_medicare_resp"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberMedicareReponsibilityApi.get_member_medicare_resp"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberMedicareReponsibilityApi.get_member_medicare_resp"
      end
      # verify the required parameter 'member_medicare_resp_key' is set
      if @api_client.config.client_side_validation && member_medicare_resp_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_medicare_resp_key' when calling MemberMedicareReponsibilityApi.get_member_medicare_resp"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities/{memberMedicareRespKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberMedicareRespKey' + '}', CGI.escape(member_medicare_resp_key.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberMedicareRespVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberMedicareReponsibilityApi.get_member_medicare_resp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberMedicareReponsibilityApi#get_member_medicare_resp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List MemberMedicareResp
    # Lists all MemberMedicareResp for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [MemberMedicareRespListVBAResponse]
    def list_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, opts = {})
      data, _status_code, _headers = list_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
      data
    end

    # List MemberMedicareResp
    # Lists all MemberMedicareResp for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(MemberMedicareRespListVBAResponse, Integer, Hash)>] MemberMedicareRespListVBAResponse data, response status code and response headers
    def list_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberMedicareReponsibilityApi.list_member_medicare_resp ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberMedicareReponsibilityApi.list_member_medicare_resp"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberMedicareReponsibilityApi.list_member_medicare_resp"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberMedicareReponsibilityApi.list_member_medicare_resp"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberMedicareRespListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberMedicareReponsibilityApi.list_member_medicare_resp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberMedicareReponsibilityApi#list_member_medicare_resp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch MemberMedicareResp
    # Create or Update multiple MemberMedicareResp at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp [Array<MemberMedicareResp>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp, opts = {})
      data, _status_code, _headers = update_batch_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp, opts)
      data
    end

    # Create or Update Batch MemberMedicareResp
    # Create or Update multiple MemberMedicareResp at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp [Array<MemberMedicareResp>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberMedicareReponsibilityApi.update_batch_member_medicare_resp ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberMedicareReponsibilityApi.update_batch_member_medicare_resp"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberMedicareReponsibilityApi.update_batch_member_medicare_resp"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberMedicareReponsibilityApi.update_batch_member_medicare_resp"
      end
      # verify the required parameter 'member_medicare_resp' is set
      if @api_client.config.client_side_validation && member_medicare_resp.nil?
        fail ArgumentError, "Missing the required parameter 'member_medicare_resp' when calling MemberMedicareReponsibilityApi.update_batch_member_medicare_resp"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities-batch'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_medicare_resp)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberMedicareReponsibilityApi.update_batch_member_medicare_resp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberMedicareReponsibilityApi#update_batch_member_medicare_resp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update MemberMedicareResp
    # Updates a specific MemberMedicareResp.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp_key [Integer] MemberMedicareResp Key
    # @param member_medicare_resp [MemberMedicareResp] 
    # @param [Hash] opts the optional parameters
    # @return [MemberMedicareRespVBAResponse]
    def update_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, member_medicare_resp, opts = {})
      data, _status_code, _headers = update_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, member_medicare_resp, opts)
      data
    end

    # Update MemberMedicareResp
    # Updates a specific MemberMedicareResp.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_medicare_resp_key [Integer] MemberMedicareResp Key
    # @param member_medicare_resp [MemberMedicareResp] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberMedicareRespVBAResponse, Integer, Hash)>] MemberMedicareRespVBAResponse data, response status code and response headers
    def update_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, member_medicare_resp, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberMedicareReponsibilityApi.update_member_medicare_resp ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberMedicareReponsibilityApi.update_member_medicare_resp"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberMedicareReponsibilityApi.update_member_medicare_resp"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberMedicareReponsibilityApi.update_member_medicare_resp"
      end
      # verify the required parameter 'member_medicare_resp_key' is set
      if @api_client.config.client_side_validation && member_medicare_resp_key.nil?
        fail ArgumentError, "Missing the required parameter 'member_medicare_resp_key' when calling MemberMedicareReponsibilityApi.update_member_medicare_resp"
      end
      # verify the required parameter 'member_medicare_resp' is set
      if @api_client.config.client_side_validation && member_medicare_resp.nil?
        fail ArgumentError, "Missing the required parameter 'member_medicare_resp' when calling MemberMedicareReponsibilityApi.update_member_medicare_resp"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities/{memberMedicareRespKey}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'memberMedicareRespKey' + '}', CGI.escape(member_medicare_resp_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_medicare_resp)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberMedicareRespVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberMedicareReponsibilityApi.update_member_medicare_resp",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberMedicareReponsibilityApi#update_member_medicare_resp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
