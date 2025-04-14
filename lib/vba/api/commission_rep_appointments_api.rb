=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CommissionRepAppointmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CommissionRepAppoint
    # Creates a new CommissionRepAppoint
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param commission_rep_appoint [CommissionRepAppoint] 
    # @param [Hash] opts the optional parameters
    # @return [CommissionRepAppointVBAResponse]
    def create_commission_rep_appoint(vbasoftware_database, comm_rep_key, commission_rep_appoint, opts = {})
      data, _status_code, _headers = create_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_appoint, opts)
      data
    end

    # Create CommissionRepAppoint
    # Creates a new CommissionRepAppoint
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param commission_rep_appoint [CommissionRepAppoint] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommissionRepAppointVBAResponse, Integer, Hash)>] CommissionRepAppointVBAResponse data, response status code and response headers
    def create_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_appoint, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommissionRepAppointmentsApi.create_commission_rep_appoint ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CommissionRepAppointmentsApi.create_commission_rep_appoint"
      end
      # verify the required parameter 'comm_rep_key' is set
      if @api_client.config.client_side_validation && comm_rep_key.nil?
        fail ArgumentError, "Missing the required parameter 'comm_rep_key' when calling CommissionRepAppointmentsApi.create_commission_rep_appoint"
      end
      # verify the required parameter 'commission_rep_appoint' is set
      if @api_client.config.client_side_validation && commission_rep_appoint.nil?
        fail ArgumentError, "Missing the required parameter 'commission_rep_appoint' when calling CommissionRepAppointmentsApi.create_commission_rep_appoint"
      end
      # resource path
      local_var_path = '/commission-reps/{commRepKey}/commission-rep-appoints'.sub('{' + 'commRepKey' + '}', CGI.escape(comm_rep_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(commission_rep_appoint)

      # return_type
      return_type = opts[:debug_return_type] || 'CommissionRepAppointVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CommissionRepAppointmentsApi.create_commission_rep_appoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommissionRepAppointmentsApi#create_commission_rep_appoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CommissionRepAppoint
    # Deletes an CommissionRepAppoint
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param comm_rep_appoint_key [Integer] CommissionRepAppoint Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_commission_rep_appoint(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, opts = {})
      delete_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, opts)
      nil
    end

    # Delete CommissionRepAppoint
    # Deletes an CommissionRepAppoint
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param comm_rep_appoint_key [Integer] CommissionRepAppoint Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommissionRepAppointmentsApi.delete_commission_rep_appoint ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CommissionRepAppointmentsApi.delete_commission_rep_appoint"
      end
      # verify the required parameter 'comm_rep_key' is set
      if @api_client.config.client_side_validation && comm_rep_key.nil?
        fail ArgumentError, "Missing the required parameter 'comm_rep_key' when calling CommissionRepAppointmentsApi.delete_commission_rep_appoint"
      end
      # verify the required parameter 'comm_rep_appoint_key' is set
      if @api_client.config.client_side_validation && comm_rep_appoint_key.nil?
        fail ArgumentError, "Missing the required parameter 'comm_rep_appoint_key' when calling CommissionRepAppointmentsApi.delete_commission_rep_appoint"
      end
      # resource path
      local_var_path = '/commission-reps/{commRepKey}/commission-rep-appoints/{commRepAppointKey}'.sub('{' + 'commRepKey' + '}', CGI.escape(comm_rep_key.to_s)).sub('{' + 'commRepAppointKey' + '}', CGI.escape(comm_rep_appoint_key.to_s))

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
        :operation => :"CommissionRepAppointmentsApi.delete_commission_rep_appoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommissionRepAppointmentsApi#delete_commission_rep_appoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CommissionRepAppoint
    # Gets CommissionRepAppoint
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param comm_rep_appoint_key [Integer] CommissionRepAppoint Key
    # @param [Hash] opts the optional parameters
    # @return [CommissionRepAppointVBAResponse]
    def get_commission_rep_appoint(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, opts = {})
      data, _status_code, _headers = get_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, opts)
      data
    end

    # Get CommissionRepAppoint
    # Gets CommissionRepAppoint
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param comm_rep_appoint_key [Integer] CommissionRepAppoint Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommissionRepAppointVBAResponse, Integer, Hash)>] CommissionRepAppointVBAResponse data, response status code and response headers
    def get_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommissionRepAppointmentsApi.get_commission_rep_appoint ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CommissionRepAppointmentsApi.get_commission_rep_appoint"
      end
      # verify the required parameter 'comm_rep_key' is set
      if @api_client.config.client_side_validation && comm_rep_key.nil?
        fail ArgumentError, "Missing the required parameter 'comm_rep_key' when calling CommissionRepAppointmentsApi.get_commission_rep_appoint"
      end
      # verify the required parameter 'comm_rep_appoint_key' is set
      if @api_client.config.client_side_validation && comm_rep_appoint_key.nil?
        fail ArgumentError, "Missing the required parameter 'comm_rep_appoint_key' when calling CommissionRepAppointmentsApi.get_commission_rep_appoint"
      end
      # resource path
      local_var_path = '/commission-reps/{commRepKey}/commission-rep-appoints/{commRepAppointKey}'.sub('{' + 'commRepKey' + '}', CGI.escape(comm_rep_key.to_s)).sub('{' + 'commRepAppointKey' + '}', CGI.escape(comm_rep_appoint_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CommissionRepAppointVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CommissionRepAppointmentsApi.get_commission_rep_appoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommissionRepAppointmentsApi#get_commission_rep_appoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CommissionRepAppoint
    # Lists all CommissionRepAppoint for the given commRepKey
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CommissionRepAppointListVBAResponse]
    def list_commission_rep_appoint(vbasoftware_database, comm_rep_key, opts = {})
      data, _status_code, _headers = list_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, opts)
      data
    end

    # List CommissionRepAppoint
    # Lists all CommissionRepAppoint for the given commRepKey
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CommissionRepAppointListVBAResponse, Integer, Hash)>] CommissionRepAppointListVBAResponse data, response status code and response headers
    def list_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommissionRepAppointmentsApi.list_commission_rep_appoint ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CommissionRepAppointmentsApi.list_commission_rep_appoint"
      end
      # verify the required parameter 'comm_rep_key' is set
      if @api_client.config.client_side_validation && comm_rep_key.nil?
        fail ArgumentError, "Missing the required parameter 'comm_rep_key' when calling CommissionRepAppointmentsApi.list_commission_rep_appoint"
      end
      # resource path
      local_var_path = '/commission-reps/{commRepKey}/commission-rep-appoints'.sub('{' + 'commRepKey' + '}', CGI.escape(comm_rep_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CommissionRepAppointListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CommissionRepAppointmentsApi.list_commission_rep_appoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommissionRepAppointmentsApi#list_commission_rep_appoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CommissionRepAppoint
    # Create or Update multiple CommissionRepAppoint at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param commission_rep_appoint [Array<CommissionRepAppoint>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_commission_rep_appoint(vbasoftware_database, comm_rep_key, commission_rep_appoint, opts = {})
      data, _status_code, _headers = update_batch_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_appoint, opts)
      data
    end

    # Create or Update Batch CommissionRepAppoint
    # Create or Update multiple CommissionRepAppoint at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param commission_rep_appoint [Array<CommissionRepAppoint>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_appoint, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommissionRepAppointmentsApi.update_batch_commission_rep_appoint ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CommissionRepAppointmentsApi.update_batch_commission_rep_appoint"
      end
      # verify the required parameter 'comm_rep_key' is set
      if @api_client.config.client_side_validation && comm_rep_key.nil?
        fail ArgumentError, "Missing the required parameter 'comm_rep_key' when calling CommissionRepAppointmentsApi.update_batch_commission_rep_appoint"
      end
      # verify the required parameter 'commission_rep_appoint' is set
      if @api_client.config.client_side_validation && commission_rep_appoint.nil?
        fail ArgumentError, "Missing the required parameter 'commission_rep_appoint' when calling CommissionRepAppointmentsApi.update_batch_commission_rep_appoint"
      end
      # resource path
      local_var_path = '/commission-reps/{commRepKey}/commission-rep-appoints-batch'.sub('{' + 'commRepKey' + '}', CGI.escape(comm_rep_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(commission_rep_appoint)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CommissionRepAppointmentsApi.update_batch_commission_rep_appoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommissionRepAppointmentsApi#update_batch_commission_rep_appoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CommissionRepAppoint
    # Updates a specific CommissionRepAppoint.
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param comm_rep_appoint_key [Integer] CommissionRepAppoint Key
    # @param commission_rep_appoint [CommissionRepAppoint] 
    # @param [Hash] opts the optional parameters
    # @return [CommissionRepAppointVBAResponse]
    def update_commission_rep_appoint(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, commission_rep_appoint, opts = {})
      data, _status_code, _headers = update_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, commission_rep_appoint, opts)
      data
    end

    # Update CommissionRepAppoint
    # Updates a specific CommissionRepAppoint.
    # @param vbasoftware_database [String] Target database
    # @param comm_rep_key [Integer] CommissionRep Key
    # @param comm_rep_appoint_key [Integer] CommissionRepAppoint Key
    # @param commission_rep_appoint [CommissionRepAppoint] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommissionRepAppointVBAResponse, Integer, Hash)>] CommissionRepAppointVBAResponse data, response status code and response headers
    def update_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, commission_rep_appoint, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommissionRepAppointmentsApi.update_commission_rep_appoint ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CommissionRepAppointmentsApi.update_commission_rep_appoint"
      end
      # verify the required parameter 'comm_rep_key' is set
      if @api_client.config.client_side_validation && comm_rep_key.nil?
        fail ArgumentError, "Missing the required parameter 'comm_rep_key' when calling CommissionRepAppointmentsApi.update_commission_rep_appoint"
      end
      # verify the required parameter 'comm_rep_appoint_key' is set
      if @api_client.config.client_side_validation && comm_rep_appoint_key.nil?
        fail ArgumentError, "Missing the required parameter 'comm_rep_appoint_key' when calling CommissionRepAppointmentsApi.update_commission_rep_appoint"
      end
      # verify the required parameter 'commission_rep_appoint' is set
      if @api_client.config.client_side_validation && commission_rep_appoint.nil?
        fail ArgumentError, "Missing the required parameter 'commission_rep_appoint' when calling CommissionRepAppointmentsApi.update_commission_rep_appoint"
      end
      # resource path
      local_var_path = '/commission-reps/{commRepKey}/commission-rep-appoints/{commRepAppointKey}'.sub('{' + 'commRepKey' + '}', CGI.escape(comm_rep_key.to_s)).sub('{' + 'commRepAppointKey' + '}', CGI.escape(comm_rep_appoint_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(commission_rep_appoint)

      # return_type
      return_type = opts[:debug_return_type] || 'CommissionRepAppointVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CommissionRepAppointmentsApi.update_commission_rep_appoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommissionRepAppointmentsApi#update_commission_rep_appoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
