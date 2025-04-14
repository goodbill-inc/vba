=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CareCaseEligibilityStatusesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CareCaseEligibilityStatus
    # Creates a new CareCaseEligibilityStatus
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status [CareCaseEligibilityStatus] 
    # @param [Hash] opts the optional parameters
    # @return [CareCaseEligibilityStatusVBAResponse]
    def create_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status, opts = {})
      data, _status_code, _headers = create_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status, opts)
      data
    end

    # Create CareCaseEligibilityStatus
    # Creates a new CareCaseEligibilityStatus
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status [CareCaseEligibilityStatus] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseEligibilityStatusVBAResponse, Integer, Hash)>] CareCaseEligibilityStatusVBAResponse data, response status code and response headers
    def create_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseEligibilityStatusesApi.create_care_case_eligibility_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseEligibilityStatusesApi.create_care_case_eligibility_status"
      end
      # verify the required parameter 'care_case_eligibility_status' is set
      if @api_client.config.client_side_validation && care_case_eligibility_status.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_eligibility_status' when calling CareCaseEligibilityStatusesApi.create_care_case_eligibility_status"
      end
      # resource path
      local_var_path = '/care-case-eligibility-statuses'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_eligibility_status)

      # return_type
      return_type = opts[:debug_return_type] || 'CareCaseEligibilityStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseEligibilityStatusesApi.create_care_case_eligibility_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseEligibilityStatusesApi#create_care_case_eligibility_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CareCaseEligibilityStatus
    # Deletes an CareCaseEligibilityStatus
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status_id [String] CareCaseEligibilityStatus ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status_id, opts = {})
      delete_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id, opts)
      nil
    end

    # Delete CareCaseEligibilityStatus
    # Deletes an CareCaseEligibilityStatus
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status_id [String] CareCaseEligibilityStatus ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseEligibilityStatusesApi.delete_care_case_eligibility_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseEligibilityStatusesApi.delete_care_case_eligibility_status"
      end
      # verify the required parameter 'care_case_eligibility_status_id' is set
      if @api_client.config.client_side_validation && care_case_eligibility_status_id.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_eligibility_status_id' when calling CareCaseEligibilityStatusesApi.delete_care_case_eligibility_status"
      end
      # resource path
      local_var_path = '/care-case-eligibility-statuses/{careCaseEligibilityStatusID}'.sub('{' + 'careCaseEligibilityStatusID' + '}', CGI.escape(care_case_eligibility_status_id.to_s))

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
        :operation => :"CareCaseEligibilityStatusesApi.delete_care_case_eligibility_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseEligibilityStatusesApi#delete_care_case_eligibility_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CareCaseEligibilityStatus
    # Gets CareCaseEligibilityStatus
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status_id [String] CareCaseEligibilityStatus ID
    # @param [Hash] opts the optional parameters
    # @return [CareCaseEligibilityStatusVBAResponse]
    def get_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status_id, opts = {})
      data, _status_code, _headers = get_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id, opts)
      data
    end

    # Get CareCaseEligibilityStatus
    # Gets CareCaseEligibilityStatus
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status_id [String] CareCaseEligibilityStatus ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseEligibilityStatusVBAResponse, Integer, Hash)>] CareCaseEligibilityStatusVBAResponse data, response status code and response headers
    def get_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseEligibilityStatusesApi.get_care_case_eligibility_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseEligibilityStatusesApi.get_care_case_eligibility_status"
      end
      # verify the required parameter 'care_case_eligibility_status_id' is set
      if @api_client.config.client_side_validation && care_case_eligibility_status_id.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_eligibility_status_id' when calling CareCaseEligibilityStatusesApi.get_care_case_eligibility_status"
      end
      # resource path
      local_var_path = '/care-case-eligibility-statuses/{careCaseEligibilityStatusID}'.sub('{' + 'careCaseEligibilityStatusID' + '}', CGI.escape(care_case_eligibility_status_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CareCaseEligibilityStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseEligibilityStatusesApi.get_care_case_eligibility_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseEligibilityStatusesApi#get_care_case_eligibility_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CareCaseEligibilityStatus
    # Lists all CareCaseEligibilityStatus
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CareCaseEligibilityStatusListVBAResponse]
    def list_care_case_eligibility_status(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_care_case_eligibility_status_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CareCaseEligibilityStatus
    # Lists all CareCaseEligibilityStatus
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CareCaseEligibilityStatusListVBAResponse, Integer, Hash)>] CareCaseEligibilityStatusListVBAResponse data, response status code and response headers
    def list_care_case_eligibility_status_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseEligibilityStatusesApi.list_care_case_eligibility_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseEligibilityStatusesApi.list_care_case_eligibility_status"
      end
      # resource path
      local_var_path = '/care-case-eligibility-statuses'

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
      return_type = opts[:debug_return_type] || 'CareCaseEligibilityStatusListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseEligibilityStatusesApi.list_care_case_eligibility_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseEligibilityStatusesApi#list_care_case_eligibility_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CareCaseEligibilityStatus
    # Create or Update multiple CareCaseEligibilityStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status [Array<CareCaseEligibilityStatus>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status, opts = {})
      data, _status_code, _headers = update_batch_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status, opts)
      data
    end

    # Create or Update Batch CareCaseEligibilityStatus
    # Create or Update multiple CareCaseEligibilityStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status [Array<CareCaseEligibilityStatus>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseEligibilityStatusesApi.update_batch_care_case_eligibility_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseEligibilityStatusesApi.update_batch_care_case_eligibility_status"
      end
      # verify the required parameter 'care_case_eligibility_status' is set
      if @api_client.config.client_side_validation && care_case_eligibility_status.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_eligibility_status' when calling CareCaseEligibilityStatusesApi.update_batch_care_case_eligibility_status"
      end
      # resource path
      local_var_path = '/care-case-eligibility-statuses-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_eligibility_status)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseEligibilityStatusesApi.update_batch_care_case_eligibility_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseEligibilityStatusesApi#update_batch_care_case_eligibility_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CareCaseEligibilityStatus
    # Updates a specific CareCaseEligibilityStatus.
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status_id [String] CareCaseEligibilityStatus ID
    # @param care_case_eligibility_status [CareCaseEligibilityStatus] 
    # @param [Hash] opts the optional parameters
    # @return [CareCaseEligibilityStatusVBAResponse]
    def update_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status_id, care_case_eligibility_status, opts = {})
      data, _status_code, _headers = update_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id, care_case_eligibility_status, opts)
      data
    end

    # Update CareCaseEligibilityStatus
    # Updates a specific CareCaseEligibilityStatus.
    # @param vbasoftware_database [String] Target database
    # @param care_case_eligibility_status_id [String] CareCaseEligibilityStatus ID
    # @param care_case_eligibility_status [CareCaseEligibilityStatus] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseEligibilityStatusVBAResponse, Integer, Hash)>] CareCaseEligibilityStatusVBAResponse data, response status code and response headers
    def update_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id, care_case_eligibility_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseEligibilityStatusesApi.update_care_case_eligibility_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseEligibilityStatusesApi.update_care_case_eligibility_status"
      end
      # verify the required parameter 'care_case_eligibility_status_id' is set
      if @api_client.config.client_side_validation && care_case_eligibility_status_id.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_eligibility_status_id' when calling CareCaseEligibilityStatusesApi.update_care_case_eligibility_status"
      end
      # verify the required parameter 'care_case_eligibility_status' is set
      if @api_client.config.client_side_validation && care_case_eligibility_status.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_eligibility_status' when calling CareCaseEligibilityStatusesApi.update_care_case_eligibility_status"
      end
      # resource path
      local_var_path = '/care-case-eligibility-statuses/{careCaseEligibilityStatusID}'.sub('{' + 'careCaseEligibilityStatusID' + '}', CGI.escape(care_case_eligibility_status_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_eligibility_status)

      # return_type
      return_type = opts[:debug_return_type] || 'CareCaseEligibilityStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseEligibilityStatusesApi.update_care_case_eligibility_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseEligibilityStatusesApi#update_care_case_eligibility_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
