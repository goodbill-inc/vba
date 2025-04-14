=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CareCaseClinicalTrialArmsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CareCaseClinicalTrialArm
    # Creates a new CareCaseClinicalTrialArm
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm [CareCaseClinicalTrialArm] 
    # @param [Hash] opts the optional parameters
    # @return [CareCaseClinicalTrialArmVBAResponse]
    def create_care_case_clinical_trial_arm(vbasoftware_database, care_case_clinical_trial_arm, opts = {})
      data, _status_code, _headers = create_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm, opts)
      data
    end

    # Create CareCaseClinicalTrialArm
    # Creates a new CareCaseClinicalTrialArm
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm [CareCaseClinicalTrialArm] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseClinicalTrialArmVBAResponse, Integer, Hash)>] CareCaseClinicalTrialArmVBAResponse data, response status code and response headers
    def create_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseClinicalTrialArmsApi.create_care_case_clinical_trial_arm ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseClinicalTrialArmsApi.create_care_case_clinical_trial_arm"
      end
      # verify the required parameter 'care_case_clinical_trial_arm' is set
      if @api_client.config.client_side_validation && care_case_clinical_trial_arm.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_clinical_trial_arm' when calling CareCaseClinicalTrialArmsApi.create_care_case_clinical_trial_arm"
      end
      # resource path
      local_var_path = '/care-case-clinical-trial-arms'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_clinical_trial_arm)

      # return_type
      return_type = opts[:debug_return_type] || 'CareCaseClinicalTrialArmVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseClinicalTrialArmsApi.create_care_case_clinical_trial_arm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseClinicalTrialArmsApi#create_care_case_clinical_trial_arm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CareCaseClinicalTrialArm
    # Deletes an CareCaseClinicalTrialArm
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm_id [String] CareCaseClinicalTrialArm ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_care_case_clinical_trial_arm(vbasoftware_database, care_case_clinical_trial_arm_id, opts = {})
      delete_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm_id, opts)
      nil
    end

    # Delete CareCaseClinicalTrialArm
    # Deletes an CareCaseClinicalTrialArm
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm_id [String] CareCaseClinicalTrialArm ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseClinicalTrialArmsApi.delete_care_case_clinical_trial_arm ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseClinicalTrialArmsApi.delete_care_case_clinical_trial_arm"
      end
      # verify the required parameter 'care_case_clinical_trial_arm_id' is set
      if @api_client.config.client_side_validation && care_case_clinical_trial_arm_id.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_clinical_trial_arm_id' when calling CareCaseClinicalTrialArmsApi.delete_care_case_clinical_trial_arm"
      end
      # resource path
      local_var_path = '/care-case-clinical-trial-arms/{careCaseClinicalTrialArmID}'.sub('{' + 'careCaseClinicalTrialArmID' + '}', CGI.escape(care_case_clinical_trial_arm_id.to_s))

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
        :operation => :"CareCaseClinicalTrialArmsApi.delete_care_case_clinical_trial_arm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseClinicalTrialArmsApi#delete_care_case_clinical_trial_arm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CareCaseClinicalTrialArm
    # Gets CareCaseClinicalTrialArm
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm_id [String] CareCaseClinicalTrialArm ID
    # @param [Hash] opts the optional parameters
    # @return [CareCaseClinicalTrialArmVBAResponse]
    def get_care_case_clinical_trial_arm(vbasoftware_database, care_case_clinical_trial_arm_id, opts = {})
      data, _status_code, _headers = get_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm_id, opts)
      data
    end

    # Get CareCaseClinicalTrialArm
    # Gets CareCaseClinicalTrialArm
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm_id [String] CareCaseClinicalTrialArm ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseClinicalTrialArmVBAResponse, Integer, Hash)>] CareCaseClinicalTrialArmVBAResponse data, response status code and response headers
    def get_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseClinicalTrialArmsApi.get_care_case_clinical_trial_arm ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseClinicalTrialArmsApi.get_care_case_clinical_trial_arm"
      end
      # verify the required parameter 'care_case_clinical_trial_arm_id' is set
      if @api_client.config.client_side_validation && care_case_clinical_trial_arm_id.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_clinical_trial_arm_id' when calling CareCaseClinicalTrialArmsApi.get_care_case_clinical_trial_arm"
      end
      # resource path
      local_var_path = '/care-case-clinical-trial-arms/{careCaseClinicalTrialArmID}'.sub('{' + 'careCaseClinicalTrialArmID' + '}', CGI.escape(care_case_clinical_trial_arm_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CareCaseClinicalTrialArmVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseClinicalTrialArmsApi.get_care_case_clinical_trial_arm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseClinicalTrialArmsApi#get_care_case_clinical_trial_arm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CareCaseClinicalTrialArm
    # Lists all CareCaseClinicalTrialArm
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CareCaseClinicalTrialArmListVBAResponse]
    def list_care_case_clinical_trial_arm(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CareCaseClinicalTrialArm
    # Lists all CareCaseClinicalTrialArm
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CareCaseClinicalTrialArmListVBAResponse, Integer, Hash)>] CareCaseClinicalTrialArmListVBAResponse data, response status code and response headers
    def list_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseClinicalTrialArmsApi.list_care_case_clinical_trial_arm ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseClinicalTrialArmsApi.list_care_case_clinical_trial_arm"
      end
      # resource path
      local_var_path = '/care-case-clinical-trial-arms'

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
      return_type = opts[:debug_return_type] || 'CareCaseClinicalTrialArmListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseClinicalTrialArmsApi.list_care_case_clinical_trial_arm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseClinicalTrialArmsApi#list_care_case_clinical_trial_arm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CareCaseClinicalTrialArm
    # Create or Update multiple CareCaseClinicalTrialArm at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm [Array<CareCaseClinicalTrialArm>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_care_case_clinical_trial_arm(vbasoftware_database, care_case_clinical_trial_arm, opts = {})
      data, _status_code, _headers = update_batch_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm, opts)
      data
    end

    # Create or Update Batch CareCaseClinicalTrialArm
    # Create or Update multiple CareCaseClinicalTrialArm at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm [Array<CareCaseClinicalTrialArm>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseClinicalTrialArmsApi.update_batch_care_case_clinical_trial_arm ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseClinicalTrialArmsApi.update_batch_care_case_clinical_trial_arm"
      end
      # verify the required parameter 'care_case_clinical_trial_arm' is set
      if @api_client.config.client_side_validation && care_case_clinical_trial_arm.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_clinical_trial_arm' when calling CareCaseClinicalTrialArmsApi.update_batch_care_case_clinical_trial_arm"
      end
      # resource path
      local_var_path = '/care-case-clinical-trial-arms-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_clinical_trial_arm)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseClinicalTrialArmsApi.update_batch_care_case_clinical_trial_arm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseClinicalTrialArmsApi#update_batch_care_case_clinical_trial_arm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CareCaseClinicalTrialArm
    # Updates a specific CareCaseClinicalTrialArm.
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm_id [String] CareCaseClinicalTrialArm ID
    # @param care_case_clinical_trial_arm [CareCaseClinicalTrialArm] 
    # @param [Hash] opts the optional parameters
    # @return [CareCaseClinicalTrialArmVBAResponse]
    def update_care_case_clinical_trial_arm(vbasoftware_database, care_case_clinical_trial_arm_id, care_case_clinical_trial_arm, opts = {})
      data, _status_code, _headers = update_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm_id, care_case_clinical_trial_arm, opts)
      data
    end

    # Update CareCaseClinicalTrialArm
    # Updates a specific CareCaseClinicalTrialArm.
    # @param vbasoftware_database [String] Target database
    # @param care_case_clinical_trial_arm_id [String] CareCaseClinicalTrialArm ID
    # @param care_case_clinical_trial_arm [CareCaseClinicalTrialArm] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseClinicalTrialArmVBAResponse, Integer, Hash)>] CareCaseClinicalTrialArmVBAResponse data, response status code and response headers
    def update_care_case_clinical_trial_arm_with_http_info(vbasoftware_database, care_case_clinical_trial_arm_id, care_case_clinical_trial_arm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseClinicalTrialArmsApi.update_care_case_clinical_trial_arm ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseClinicalTrialArmsApi.update_care_case_clinical_trial_arm"
      end
      # verify the required parameter 'care_case_clinical_trial_arm_id' is set
      if @api_client.config.client_side_validation && care_case_clinical_trial_arm_id.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_clinical_trial_arm_id' when calling CareCaseClinicalTrialArmsApi.update_care_case_clinical_trial_arm"
      end
      # verify the required parameter 'care_case_clinical_trial_arm' is set
      if @api_client.config.client_side_validation && care_case_clinical_trial_arm.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_clinical_trial_arm' when calling CareCaseClinicalTrialArmsApi.update_care_case_clinical_trial_arm"
      end
      # resource path
      local_var_path = '/care-case-clinical-trial-arms/{careCaseClinicalTrialArmID}'.sub('{' + 'careCaseClinicalTrialArmID' + '}', CGI.escape(care_case_clinical_trial_arm_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_clinical_trial_arm)

      # return_type
      return_type = opts[:debug_return_type] || 'CareCaseClinicalTrialArmVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseClinicalTrialArmsApi.update_care_case_clinical_trial_arm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseClinicalTrialArmsApi#update_care_case_clinical_trial_arm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
