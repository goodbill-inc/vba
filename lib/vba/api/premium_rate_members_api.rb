=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PremiumRateMembersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PremRateMember
    # Creates a new PremRateMember
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_member [PremRateMember] 
    # @param [Hash] opts the optional parameters
    # @return [PremRateMemberVBAResponse]
    def create_prem_rate_member(vbasoftware_database, prem_rate_key, prem_rate_member, opts = {})
      data, _status_code, _headers = create_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_member, opts)
      data
    end

    # Create PremRateMember
    # Creates a new PremRateMember
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_member [PremRateMember] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateMemberVBAResponse, Integer, Hash)>] PremRateMemberVBAResponse data, response status code and response headers
    def create_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateMembersApi.create_prem_rate_member ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateMembersApi.create_prem_rate_member"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateMembersApi.create_prem_rate_member"
      end
      # verify the required parameter 'prem_rate_member' is set
      if @api_client.config.client_side_validation && prem_rate_member.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_member' when calling PremiumRateMembersApi.create_prem_rate_member"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}/members'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_member)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRateMemberVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateMembersApi.create_prem_rate_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateMembersApi#create_prem_rate_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PremRateMember
    # Deletes an PremRateMember
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_prem_rate_member(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, opts = {})
      delete_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, opts)
      nil
    end

    # Delete PremRateMember
    # Deletes an PremRateMember
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateMembersApi.delete_prem_rate_member ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateMembersApi.delete_prem_rate_member"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateMembersApi.delete_prem_rate_member"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling PremiumRateMembersApi.delete_prem_rate_member"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling PremiumRateMembersApi.delete_prem_rate_member"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling PremiumRateMembersApi.delete_prem_rate_member"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}/members/{subscriberID}/{memberSeq}/{effectiveDate}'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s)).sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
        :operation => :"PremiumRateMembersApi.delete_prem_rate_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateMembersApi#delete_prem_rate_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PremRateMember
    # Gets PremRateMember
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [PremRateMemberVBAResponse]
    def get_prem_rate_member(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, opts = {})
      data, _status_code, _headers = get_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, opts)
      data
    end

    # Get PremRateMember
    # Gets PremRateMember
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateMemberVBAResponse, Integer, Hash)>] PremRateMemberVBAResponse data, response status code and response headers
    def get_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateMembersApi.get_prem_rate_member ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateMembersApi.get_prem_rate_member"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateMembersApi.get_prem_rate_member"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling PremiumRateMembersApi.get_prem_rate_member"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling PremiumRateMembersApi.get_prem_rate_member"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling PremiumRateMembersApi.get_prem_rate_member"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}/members/{subscriberID}/{memberSeq}/{effectiveDate}'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s)).sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      return_type = opts[:debug_return_type] || 'PremRateMemberVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateMembersApi.get_prem_rate_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateMembersApi#get_prem_rate_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PremRateMember
    # Lists all PremRateMember for the given premRateKey
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PremRateMemberListVBAResponse]
    def list_prem_rate_member(vbasoftware_database, prem_rate_key, opts = {})
      data, _status_code, _headers = list_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, opts)
      data
    end

    # List PremRateMember
    # Lists all PremRateMember for the given premRateKey
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PremRateMemberListVBAResponse, Integer, Hash)>] PremRateMemberListVBAResponse data, response status code and response headers
    def list_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateMembersApi.list_prem_rate_member ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateMembersApi.list_prem_rate_member"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateMembersApi.list_prem_rate_member"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}/members'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s))

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
      return_type = opts[:debug_return_type] || 'PremRateMemberListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateMembersApi.list_prem_rate_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateMembersApi#list_prem_rate_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PremRateMember
    # Create or Update multiple PremRateMember at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_member [Array<PremRateMember>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_prem_rate_member(vbasoftware_database, prem_rate_key, prem_rate_member, opts = {})
      data, _status_code, _headers = update_batch_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_member, opts)
      data
    end

    # Create or Update Batch PremRateMember
    # Create or Update multiple PremRateMember at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param prem_rate_member [Array<PremRateMember>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateMembersApi.update_batch_prem_rate_member ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateMembersApi.update_batch_prem_rate_member"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateMembersApi.update_batch_prem_rate_member"
      end
      # verify the required parameter 'prem_rate_member' is set
      if @api_client.config.client_side_validation && prem_rate_member.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_member' when calling PremiumRateMembersApi.update_batch_prem_rate_member"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}/members-batch'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_member)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateMembersApi.update_batch_prem_rate_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateMembersApi#update_batch_prem_rate_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PremRateMember
    # Updates a specific PremRateMember.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param effective_date [Time] Effective Date
    # @param prem_rate_member [PremRateMember] 
    # @param [Hash] opts the optional parameters
    # @return [PremRateMemberVBAResponse]
    def update_prem_rate_member(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, prem_rate_member, opts = {})
      data, _status_code, _headers = update_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, prem_rate_member, opts)
      data
    end

    # Update PremRateMember
    # Updates a specific PremRateMember.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_key [Integer] PremRate Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param effective_date [Time] Effective Date
    # @param prem_rate_member [PremRateMember] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateMemberVBAResponse, Integer, Hash)>] PremRateMemberVBAResponse data, response status code and response headers
    def update_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, prem_rate_member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateMembersApi.update_prem_rate_member ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateMembersApi.update_prem_rate_member"
      end
      # verify the required parameter 'prem_rate_key' is set
      if @api_client.config.client_side_validation && prem_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_key' when calling PremiumRateMembersApi.update_prem_rate_member"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling PremiumRateMembersApi.update_prem_rate_member"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling PremiumRateMembersApi.update_prem_rate_member"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling PremiumRateMembersApi.update_prem_rate_member"
      end
      # verify the required parameter 'prem_rate_member' is set
      if @api_client.config.client_side_validation && prem_rate_member.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_member' when calling PremiumRateMembersApi.update_prem_rate_member"
      end
      # resource path
      local_var_path = '/premium-rates/{premRateKey}/members/{subscriberID}/{memberSeq}/{effectiveDate}'.sub('{' + 'premRateKey' + '}', CGI.escape(prem_rate_key.to_s)).sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_member)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRateMemberVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateMembersApi.update_prem_rate_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateMembersApi#update_prem_rate_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
