=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class FlexVendorPurseStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create FlexVendorPurseStatus
    # Creates a new FlexVendorPurseStatus
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param flex_vendor_purse_status [FlexVendorPurseStatus] 
    # @param [Hash] opts the optional parameters
    # @return [FlexVendorPurseStatusVBAResponse]
    def create_flex_vendor_purse_status(vbasoftware_database, flex_vendor, flex_vendor_purse_status, opts = {})
      data, _status_code, _headers = create_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_purse_status, opts)
      data
    end

    # Create FlexVendorPurseStatus
    # Creates a new FlexVendorPurseStatus
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param flex_vendor_purse_status [FlexVendorPurseStatus] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlexVendorPurseStatusVBAResponse, Integer, Hash)>] FlexVendorPurseStatusVBAResponse data, response status code and response headers
    def create_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_purse_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlexVendorPurseStatusApi.create_flex_vendor_purse_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FlexVendorPurseStatusApi.create_flex_vendor_purse_status"
      end
      # verify the required parameter 'flex_vendor' is set
      if @api_client.config.client_side_validation && flex_vendor.nil?
        fail ArgumentError, "Missing the required parameter 'flex_vendor' when calling FlexVendorPurseStatusApi.create_flex_vendor_purse_status"
      end
      # verify the required parameter 'flex_vendor_purse_status' is set
      if @api_client.config.client_side_validation && flex_vendor_purse_status.nil?
        fail ArgumentError, "Missing the required parameter 'flex_vendor_purse_status' when calling FlexVendorPurseStatusApi.create_flex_vendor_purse_status"
      end
      # resource path
      local_var_path = '/flex-vendors/{flexVendor}/purse-statuses'.sub('{' + 'flexVendor' + '}', CGI.escape(flex_vendor.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(flex_vendor_purse_status)

      # return_type
      return_type = opts[:debug_return_type] || 'FlexVendorPurseStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FlexVendorPurseStatusApi.create_flex_vendor_purse_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlexVendorPurseStatusApi#create_flex_vendor_purse_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FlexVendorPurseStatus
    # Deletes an FlexVendorPurseStatus
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param purse_status [String] Purse Status
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_flex_vendor_purse_status(vbasoftware_database, flex_vendor, purse_status, opts = {})
      delete_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status, opts)
      nil
    end

    # Delete FlexVendorPurseStatus
    # Deletes an FlexVendorPurseStatus
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param purse_status [String] Purse Status
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlexVendorPurseStatusApi.delete_flex_vendor_purse_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FlexVendorPurseStatusApi.delete_flex_vendor_purse_status"
      end
      # verify the required parameter 'flex_vendor' is set
      if @api_client.config.client_side_validation && flex_vendor.nil?
        fail ArgumentError, "Missing the required parameter 'flex_vendor' when calling FlexVendorPurseStatusApi.delete_flex_vendor_purse_status"
      end
      # verify the required parameter 'purse_status' is set
      if @api_client.config.client_side_validation && purse_status.nil?
        fail ArgumentError, "Missing the required parameter 'purse_status' when calling FlexVendorPurseStatusApi.delete_flex_vendor_purse_status"
      end
      # resource path
      local_var_path = '/flex-vendors/{flexVendor}/purse-statuses/{purseStatus}'.sub('{' + 'flexVendor' + '}', CGI.escape(flex_vendor.to_s)).sub('{' + 'purseStatus' + '}', CGI.escape(purse_status.to_s))

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
        :operation => :"FlexVendorPurseStatusApi.delete_flex_vendor_purse_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlexVendorPurseStatusApi#delete_flex_vendor_purse_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FlexVendorPurseStatus
    # Gets FlexVendorPurseStatus
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param purse_status [String] Purse Status
    # @param [Hash] opts the optional parameters
    # @return [FlexVendorPurseStatusVBAResponse]
    def get_flex_vendor_purse_status(vbasoftware_database, flex_vendor, purse_status, opts = {})
      data, _status_code, _headers = get_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status, opts)
      data
    end

    # Get FlexVendorPurseStatus
    # Gets FlexVendorPurseStatus
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param purse_status [String] Purse Status
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlexVendorPurseStatusVBAResponse, Integer, Hash)>] FlexVendorPurseStatusVBAResponse data, response status code and response headers
    def get_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlexVendorPurseStatusApi.get_flex_vendor_purse_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FlexVendorPurseStatusApi.get_flex_vendor_purse_status"
      end
      # verify the required parameter 'flex_vendor' is set
      if @api_client.config.client_side_validation && flex_vendor.nil?
        fail ArgumentError, "Missing the required parameter 'flex_vendor' when calling FlexVendorPurseStatusApi.get_flex_vendor_purse_status"
      end
      # verify the required parameter 'purse_status' is set
      if @api_client.config.client_side_validation && purse_status.nil?
        fail ArgumentError, "Missing the required parameter 'purse_status' when calling FlexVendorPurseStatusApi.get_flex_vendor_purse_status"
      end
      # resource path
      local_var_path = '/flex-vendors/{flexVendor}/purse-statuses/{purseStatus}'.sub('{' + 'flexVendor' + '}', CGI.escape(flex_vendor.to_s)).sub('{' + 'purseStatus' + '}', CGI.escape(purse_status.to_s))

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
      return_type = opts[:debug_return_type] || 'FlexVendorPurseStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FlexVendorPurseStatusApi.get_flex_vendor_purse_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlexVendorPurseStatusApi#get_flex_vendor_purse_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FlexVendorPurseStatus
    # Lists all FlexVendorPurseStatus for the given flexVendor
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [FlexVendorPurseStatusListVBAResponse]
    def list_flex_vendor_purse_status(vbasoftware_database, flex_vendor, opts = {})
      data, _status_code, _headers = list_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, opts)
      data
    end

    # List FlexVendorPurseStatus
    # Lists all FlexVendorPurseStatus for the given flexVendor
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(FlexVendorPurseStatusListVBAResponse, Integer, Hash)>] FlexVendorPurseStatusListVBAResponse data, response status code and response headers
    def list_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlexVendorPurseStatusApi.list_flex_vendor_purse_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FlexVendorPurseStatusApi.list_flex_vendor_purse_status"
      end
      # verify the required parameter 'flex_vendor' is set
      if @api_client.config.client_side_validation && flex_vendor.nil?
        fail ArgumentError, "Missing the required parameter 'flex_vendor' when calling FlexVendorPurseStatusApi.list_flex_vendor_purse_status"
      end
      # resource path
      local_var_path = '/flex-vendors/{flexVendor}/purse-statuses'.sub('{' + 'flexVendor' + '}', CGI.escape(flex_vendor.to_s))

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
      return_type = opts[:debug_return_type] || 'FlexVendorPurseStatusListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FlexVendorPurseStatusApi.list_flex_vendor_purse_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlexVendorPurseStatusApi#list_flex_vendor_purse_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch FlexVendorPurseStatus
    # Create or Update multiple FlexVendorPurseStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param flex_vendor_purse_status [Array<FlexVendorPurseStatus>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_flex_vendor_purse_status(vbasoftware_database, flex_vendor, flex_vendor_purse_status, opts = {})
      data, _status_code, _headers = update_batch_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_purse_status, opts)
      data
    end

    # Create or Update Batch FlexVendorPurseStatus
    # Create or Update multiple FlexVendorPurseStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param flex_vendor_purse_status [Array<FlexVendorPurseStatus>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_purse_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlexVendorPurseStatusApi.update_batch_flex_vendor_purse_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FlexVendorPurseStatusApi.update_batch_flex_vendor_purse_status"
      end
      # verify the required parameter 'flex_vendor' is set
      if @api_client.config.client_side_validation && flex_vendor.nil?
        fail ArgumentError, "Missing the required parameter 'flex_vendor' when calling FlexVendorPurseStatusApi.update_batch_flex_vendor_purse_status"
      end
      # verify the required parameter 'flex_vendor_purse_status' is set
      if @api_client.config.client_side_validation && flex_vendor_purse_status.nil?
        fail ArgumentError, "Missing the required parameter 'flex_vendor_purse_status' when calling FlexVendorPurseStatusApi.update_batch_flex_vendor_purse_status"
      end
      # resource path
      local_var_path = '/flex-vendors/{flexVendor}/purse-statuses-batch'.sub('{' + 'flexVendor' + '}', CGI.escape(flex_vendor.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(flex_vendor_purse_status)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FlexVendorPurseStatusApi.update_batch_flex_vendor_purse_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlexVendorPurseStatusApi#update_batch_flex_vendor_purse_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update FlexVendorPurseStatus
    # Updates a specific FlexVendorPurseStatus.
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param purse_status [String] Purse Status
    # @param flex_vendor_purse_status [FlexVendorPurseStatus] 
    # @param [Hash] opts the optional parameters
    # @return [FlexVendorPurseStatusVBAResponse]
    def update_flex_vendor_purse_status(vbasoftware_database, flex_vendor, purse_status, flex_vendor_purse_status, opts = {})
      data, _status_code, _headers = update_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status, flex_vendor_purse_status, opts)
      data
    end

    # Update FlexVendorPurseStatus
    # Updates a specific FlexVendorPurseStatus.
    # @param vbasoftware_database [String] Target database
    # @param flex_vendor [String] Flex Vendor
    # @param purse_status [String] Purse Status
    # @param flex_vendor_purse_status [FlexVendorPurseStatus] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlexVendorPurseStatusVBAResponse, Integer, Hash)>] FlexVendorPurseStatusVBAResponse data, response status code and response headers
    def update_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status, flex_vendor_purse_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlexVendorPurseStatusApi.update_flex_vendor_purse_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FlexVendorPurseStatusApi.update_flex_vendor_purse_status"
      end
      # verify the required parameter 'flex_vendor' is set
      if @api_client.config.client_side_validation && flex_vendor.nil?
        fail ArgumentError, "Missing the required parameter 'flex_vendor' when calling FlexVendorPurseStatusApi.update_flex_vendor_purse_status"
      end
      # verify the required parameter 'purse_status' is set
      if @api_client.config.client_side_validation && purse_status.nil?
        fail ArgumentError, "Missing the required parameter 'purse_status' when calling FlexVendorPurseStatusApi.update_flex_vendor_purse_status"
      end
      # verify the required parameter 'flex_vendor_purse_status' is set
      if @api_client.config.client_side_validation && flex_vendor_purse_status.nil?
        fail ArgumentError, "Missing the required parameter 'flex_vendor_purse_status' when calling FlexVendorPurseStatusApi.update_flex_vendor_purse_status"
      end
      # resource path
      local_var_path = '/flex-vendors/{flexVendor}/purse-statuses/{purseStatus}'.sub('{' + 'flexVendor' + '}', CGI.escape(flex_vendor.to_s)).sub('{' + 'purseStatus' + '}', CGI.escape(purse_status.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(flex_vendor_purse_status)

      # return_type
      return_type = opts[:debug_return_type] || 'FlexVendorPurseStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FlexVendorPurseStatusApi.update_flex_vendor_purse_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlexVendorPurseStatusApi#update_flex_vendor_purse_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
