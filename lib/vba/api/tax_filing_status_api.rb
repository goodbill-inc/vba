=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class TaxFilingStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create TaxFilingStatus
    # Creates a new TaxFilingStatus
    # @param vbasoftware_database [String] Target database
    # @param tax_filing_status [TaxFilingStatus] 
    # @param [Hash] opts the optional parameters
    # @return [TaxFilingStatusVBAResponse]
    def create_tax_filing_status(vbasoftware_database, tax_filing_status, opts = {})
      data, _status_code, _headers = create_tax_filing_status_with_http_info(vbasoftware_database, tax_filing_status, opts)
      data
    end

    # Create TaxFilingStatus
    # Creates a new TaxFilingStatus
    # @param vbasoftware_database [String] Target database
    # @param tax_filing_status [TaxFilingStatus] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxFilingStatusVBAResponse, Integer, Hash)>] TaxFilingStatusVBAResponse data, response status code and response headers
    def create_tax_filing_status_with_http_info(vbasoftware_database, tax_filing_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxFilingStatusApi.create_tax_filing_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TaxFilingStatusApi.create_tax_filing_status"
      end
      # verify the required parameter 'tax_filing_status' is set
      if @api_client.config.client_side_validation && tax_filing_status.nil?
        fail ArgumentError, "Missing the required parameter 'tax_filing_status' when calling TaxFilingStatusApi.create_tax_filing_status"
      end
      # resource path
      local_var_path = '/tax-filing-statuses'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tax_filing_status)

      # return_type
      return_type = opts[:debug_return_type] || 'TaxFilingStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TaxFilingStatusApi.create_tax_filing_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxFilingStatusApi#create_tax_filing_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete TaxFilingStatus
    # Deletes an TaxFilingStatus
    # @param vbasoftware_database [String] Target database
    # @param filing_status [Integer] Filing Status
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tax_filing_status(vbasoftware_database, filing_status, opts = {})
      delete_tax_filing_status_with_http_info(vbasoftware_database, filing_status, opts)
      nil
    end

    # Delete TaxFilingStatus
    # Deletes an TaxFilingStatus
    # @param vbasoftware_database [String] Target database
    # @param filing_status [Integer] Filing Status
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tax_filing_status_with_http_info(vbasoftware_database, filing_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxFilingStatusApi.delete_tax_filing_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TaxFilingStatusApi.delete_tax_filing_status"
      end
      # verify the required parameter 'filing_status' is set
      if @api_client.config.client_side_validation && filing_status.nil?
        fail ArgumentError, "Missing the required parameter 'filing_status' when calling TaxFilingStatusApi.delete_tax_filing_status"
      end
      # resource path
      local_var_path = '/tax-filing-statuses/{filingStatus}'.sub('{' + 'filingStatus' + '}', CGI.escape(filing_status.to_s))

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
        :operation => :"TaxFilingStatusApi.delete_tax_filing_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxFilingStatusApi#delete_tax_filing_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get TaxFilingStatus
    # Gets TaxFilingStatus
    # @param vbasoftware_database [String] Target database
    # @param filing_status [Integer] Filing Status
    # @param [Hash] opts the optional parameters
    # @return [TaxFilingStatusVBAResponse]
    def get_tax_filing_status(vbasoftware_database, filing_status, opts = {})
      data, _status_code, _headers = get_tax_filing_status_with_http_info(vbasoftware_database, filing_status, opts)
      data
    end

    # Get TaxFilingStatus
    # Gets TaxFilingStatus
    # @param vbasoftware_database [String] Target database
    # @param filing_status [Integer] Filing Status
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxFilingStatusVBAResponse, Integer, Hash)>] TaxFilingStatusVBAResponse data, response status code and response headers
    def get_tax_filing_status_with_http_info(vbasoftware_database, filing_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxFilingStatusApi.get_tax_filing_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TaxFilingStatusApi.get_tax_filing_status"
      end
      # verify the required parameter 'filing_status' is set
      if @api_client.config.client_side_validation && filing_status.nil?
        fail ArgumentError, "Missing the required parameter 'filing_status' when calling TaxFilingStatusApi.get_tax_filing_status"
      end
      # resource path
      local_var_path = '/tax-filing-statuses/{filingStatus}'.sub('{' + 'filingStatus' + '}', CGI.escape(filing_status.to_s))

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
      return_type = opts[:debug_return_type] || 'TaxFilingStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TaxFilingStatusApi.get_tax_filing_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxFilingStatusApi#get_tax_filing_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List TaxFilingStatus
    # Lists all TaxFilingStatus
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [TaxFilingStatusListVBAResponse]
    def list_tax_filing_status(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_tax_filing_status_with_http_info(vbasoftware_database, opts)
      data
    end

    # List TaxFilingStatus
    # Lists all TaxFilingStatus
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(TaxFilingStatusListVBAResponse, Integer, Hash)>] TaxFilingStatusListVBAResponse data, response status code and response headers
    def list_tax_filing_status_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxFilingStatusApi.list_tax_filing_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TaxFilingStatusApi.list_tax_filing_status"
      end
      # resource path
      local_var_path = '/tax-filing-statuses'

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
      return_type = opts[:debug_return_type] || 'TaxFilingStatusListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TaxFilingStatusApi.list_tax_filing_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxFilingStatusApi#list_tax_filing_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch TaxFilingStatus
    # Create or Update multiple TaxFilingStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param tax_filing_status [Array<TaxFilingStatus>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_tax_filing_status(vbasoftware_database, tax_filing_status, opts = {})
      data, _status_code, _headers = update_batch_tax_filing_status_with_http_info(vbasoftware_database, tax_filing_status, opts)
      data
    end

    # Create or Update Batch TaxFilingStatus
    # Create or Update multiple TaxFilingStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param tax_filing_status [Array<TaxFilingStatus>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_tax_filing_status_with_http_info(vbasoftware_database, tax_filing_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxFilingStatusApi.update_batch_tax_filing_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TaxFilingStatusApi.update_batch_tax_filing_status"
      end
      # verify the required parameter 'tax_filing_status' is set
      if @api_client.config.client_side_validation && tax_filing_status.nil?
        fail ArgumentError, "Missing the required parameter 'tax_filing_status' when calling TaxFilingStatusApi.update_batch_tax_filing_status"
      end
      # resource path
      local_var_path = '/tax-filing-statuses-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tax_filing_status)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TaxFilingStatusApi.update_batch_tax_filing_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxFilingStatusApi#update_batch_tax_filing_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update TaxFilingStatus
    # Updates a specific TaxFilingStatus.
    # @param vbasoftware_database [String] Target database
    # @param filing_status [Integer] Filing Status
    # @param tax_filing_status [TaxFilingStatus] 
    # @param [Hash] opts the optional parameters
    # @return [TaxFilingStatusVBAResponse]
    def update_tax_filing_status(vbasoftware_database, filing_status, tax_filing_status, opts = {})
      data, _status_code, _headers = update_tax_filing_status_with_http_info(vbasoftware_database, filing_status, tax_filing_status, opts)
      data
    end

    # Update TaxFilingStatus
    # Updates a specific TaxFilingStatus.
    # @param vbasoftware_database [String] Target database
    # @param filing_status [Integer] Filing Status
    # @param tax_filing_status [TaxFilingStatus] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxFilingStatusVBAResponse, Integer, Hash)>] TaxFilingStatusVBAResponse data, response status code and response headers
    def update_tax_filing_status_with_http_info(vbasoftware_database, filing_status, tax_filing_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxFilingStatusApi.update_tax_filing_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TaxFilingStatusApi.update_tax_filing_status"
      end
      # verify the required parameter 'filing_status' is set
      if @api_client.config.client_side_validation && filing_status.nil?
        fail ArgumentError, "Missing the required parameter 'filing_status' when calling TaxFilingStatusApi.update_tax_filing_status"
      end
      # verify the required parameter 'tax_filing_status' is set
      if @api_client.config.client_side_validation && tax_filing_status.nil?
        fail ArgumentError, "Missing the required parameter 'tax_filing_status' when calling TaxFilingStatusApi.update_tax_filing_status"
      end
      # resource path
      local_var_path = '/tax-filing-statuses/{filingStatus}'.sub('{' + 'filingStatus' + '}', CGI.escape(filing_status.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tax_filing_status)

      # return_type
      return_type = opts[:debug_return_type] || 'TaxFilingStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TaxFilingStatusApi.update_tax_filing_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxFilingStatusApi#update_tax_filing_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
