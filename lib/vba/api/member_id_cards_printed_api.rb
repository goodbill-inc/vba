=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class MemberIDCardsPrintedApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create MemberIDCardPrinted
    # Creates a new MemberIDCardPrinted
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_id_card_printed [MemberIDCardPrinted] 
    # @param [Hash] opts the optional parameters
    # @return [MemberIDCardPrintedVBAResponse]
    def create_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed, opts = {})
      data, _status_code, _headers = create_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed, opts)
      data
    end

    # Create MemberIDCardPrinted
    # Creates a new MemberIDCardPrinted
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_id_card_printed [MemberIDCardPrinted] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberIDCardPrintedVBAResponse, Integer, Hash)>] MemberIDCardPrintedVBAResponse data, response status code and response headers
    def create_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberIDCardsPrintedApi.create_member_id_card_printed ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberIDCardsPrintedApi.create_member_id_card_printed"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberIDCardsPrintedApi.create_member_id_card_printed"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberIDCardsPrintedApi.create_member_id_card_printed"
      end
      # verify the required parameter 'member_id_card_printed' is set
      if @api_client.config.client_side_validation && member_id_card_printed.nil?
        fail ArgumentError, "Missing the required parameter 'member_id_card_printed' when calling MemberIDCardsPrintedApi.create_member_id_card_printed"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_id_card_printed)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberIDCardPrintedVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberIDCardsPrintedApi.create_member_id_card_printed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberIDCardsPrintedApi#create_member_id_card_printed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MemberIDCardPrinted
    # Deletes an MemberIDCardPrinted
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param report_definition_key [Integer] ReportDefinition Key
    # @param printed_date [Time] Printed Date
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, opts = {})
      delete_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, opts)
      nil
    end

    # Delete MemberIDCardPrinted
    # Deletes an MemberIDCardPrinted
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param report_definition_key [Integer] ReportDefinition Key
    # @param printed_date [Time] Printed Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberIDCardsPrintedApi.delete_member_id_card_printed ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberIDCardsPrintedApi.delete_member_id_card_printed"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberIDCardsPrintedApi.delete_member_id_card_printed"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberIDCardsPrintedApi.delete_member_id_card_printed"
      end
      # verify the required parameter 'report_definition_key' is set
      if @api_client.config.client_side_validation && report_definition_key.nil?
        fail ArgumentError, "Missing the required parameter 'report_definition_key' when calling MemberIDCardsPrintedApi.delete_member_id_card_printed"
      end
      # verify the required parameter 'printed_date' is set
      if @api_client.config.client_side_validation && printed_date.nil?
        fail ArgumentError, "Missing the required parameter 'printed_date' when calling MemberIDCardsPrintedApi.delete_member_id_card_printed"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards/{reportDefinitionKey}/{printedDate}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'reportDefinitionKey' + '}', CGI.escape(report_definition_key.to_s)).sub('{' + 'printedDate' + '}', CGI.escape(printed_date.to_s))

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
        :operation => :"MemberIDCardsPrintedApi.delete_member_id_card_printed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberIDCardsPrintedApi#delete_member_id_card_printed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MemberIDCardPrinted
    # Gets MemberIDCardPrinted
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param report_definition_key [Integer] ReportDefinition Key
    # @param printed_date [Time] Printed Date
    # @param [Hash] opts the optional parameters
    # @return [MemberIDCardPrintedVBAResponse]
    def get_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, opts = {})
      data, _status_code, _headers = get_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, opts)
      data
    end

    # Get MemberIDCardPrinted
    # Gets MemberIDCardPrinted
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param report_definition_key [Integer] ReportDefinition Key
    # @param printed_date [Time] Printed Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberIDCardPrintedVBAResponse, Integer, Hash)>] MemberIDCardPrintedVBAResponse data, response status code and response headers
    def get_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberIDCardsPrintedApi.get_member_id_card_printed ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberIDCardsPrintedApi.get_member_id_card_printed"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberIDCardsPrintedApi.get_member_id_card_printed"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberIDCardsPrintedApi.get_member_id_card_printed"
      end
      # verify the required parameter 'report_definition_key' is set
      if @api_client.config.client_side_validation && report_definition_key.nil?
        fail ArgumentError, "Missing the required parameter 'report_definition_key' when calling MemberIDCardsPrintedApi.get_member_id_card_printed"
      end
      # verify the required parameter 'printed_date' is set
      if @api_client.config.client_side_validation && printed_date.nil?
        fail ArgumentError, "Missing the required parameter 'printed_date' when calling MemberIDCardsPrintedApi.get_member_id_card_printed"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards/{reportDefinitionKey}/{printedDate}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'reportDefinitionKey' + '}', CGI.escape(report_definition_key.to_s)).sub('{' + 'printedDate' + '}', CGI.escape(printed_date.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberIDCardPrintedVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberIDCardsPrintedApi.get_member_id_card_printed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberIDCardsPrintedApi#get_member_id_card_printed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List MemberIDCardPrinted
    # Lists all MemberIDCardPrinted for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [MemberIDCardPrintedListVBAResponse]
    def list_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, opts = {})
      data, _status_code, _headers = list_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
      data
    end

    # List MemberIDCardPrinted
    # Lists all MemberIDCardPrinted for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(MemberIDCardPrintedListVBAResponse, Integer, Hash)>] MemberIDCardPrintedListVBAResponse data, response status code and response headers
    def list_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberIDCardsPrintedApi.list_member_id_card_printed ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberIDCardsPrintedApi.list_member_id_card_printed"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberIDCardsPrintedApi.list_member_id_card_printed"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberIDCardsPrintedApi.list_member_id_card_printed"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberIDCardPrintedListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberIDCardsPrintedApi.list_member_id_card_printed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberIDCardsPrintedApi#list_member_id_card_printed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch MemberIDCardPrinted
    # Create or Update multiple MemberIDCardPrinted at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_id_card_printed [Array<MemberIDCardPrinted>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed, opts = {})
      data, _status_code, _headers = update_batch_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed, opts)
      data
    end

    # Create or Update Batch MemberIDCardPrinted
    # Create or Update multiple MemberIDCardPrinted at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_id_card_printed [Array<MemberIDCardPrinted>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberIDCardsPrintedApi.update_batch_member_id_card_printed ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberIDCardsPrintedApi.update_batch_member_id_card_printed"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberIDCardsPrintedApi.update_batch_member_id_card_printed"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberIDCardsPrintedApi.update_batch_member_id_card_printed"
      end
      # verify the required parameter 'member_id_card_printed' is set
      if @api_client.config.client_side_validation && member_id_card_printed.nil?
        fail ArgumentError, "Missing the required parameter 'member_id_card_printed' when calling MemberIDCardsPrintedApi.update_batch_member_id_card_printed"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards-batch'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_id_card_printed)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberIDCardsPrintedApi.update_batch_member_id_card_printed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberIDCardsPrintedApi#update_batch_member_id_card_printed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update MemberIDCardPrinted
    # Updates a specific MemberIDCardPrinted.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param report_definition_key [Integer] ReportDefinition Key
    # @param printed_date [Time] Printed Date
    # @param member_id_card_printed [MemberIDCardPrinted] 
    # @param [Hash] opts the optional parameters
    # @return [MemberIDCardPrintedVBAResponse]
    def update_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, member_id_card_printed, opts = {})
      data, _status_code, _headers = update_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, member_id_card_printed, opts)
      data
    end

    # Update MemberIDCardPrinted
    # Updates a specific MemberIDCardPrinted.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param report_definition_key [Integer] ReportDefinition Key
    # @param printed_date [Time] Printed Date
    # @param member_id_card_printed [MemberIDCardPrinted] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberIDCardPrintedVBAResponse, Integer, Hash)>] MemberIDCardPrintedVBAResponse data, response status code and response headers
    def update_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, member_id_card_printed, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberIDCardsPrintedApi.update_member_id_card_printed ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberIDCardsPrintedApi.update_member_id_card_printed"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberIDCardsPrintedApi.update_member_id_card_printed"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberIDCardsPrintedApi.update_member_id_card_printed"
      end
      # verify the required parameter 'report_definition_key' is set
      if @api_client.config.client_side_validation && report_definition_key.nil?
        fail ArgumentError, "Missing the required parameter 'report_definition_key' when calling MemberIDCardsPrintedApi.update_member_id_card_printed"
      end
      # verify the required parameter 'printed_date' is set
      if @api_client.config.client_side_validation && printed_date.nil?
        fail ArgumentError, "Missing the required parameter 'printed_date' when calling MemberIDCardsPrintedApi.update_member_id_card_printed"
      end
      # verify the required parameter 'member_id_card_printed' is set
      if @api_client.config.client_side_validation && member_id_card_printed.nil?
        fail ArgumentError, "Missing the required parameter 'member_id_card_printed' when calling MemberIDCardsPrintedApi.update_member_id_card_printed"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards/{reportDefinitionKey}/{printedDate}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'reportDefinitionKey' + '}', CGI.escape(report_definition_key.to_s)).sub('{' + 'printedDate' + '}', CGI.escape(printed_date.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_id_card_printed)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberIDCardPrintedVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberIDCardsPrintedApi.update_member_id_card_printed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberIDCardsPrintedApi#update_member_id_card_printed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
