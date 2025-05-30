=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanBenefitPlacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanBenCodePlace
    # Creates a new PlanBenCodePlace
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_place [PlanBenCodePlace] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodePlaceVBAResponse]
    def create_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place, opts = {})
      data, _status_code, _headers = create_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place, opts)
      data
    end

    # Create PlanBenCodePlace
    # Creates a new PlanBenCodePlace
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_place [PlanBenCodePlace] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodePlaceVBAResponse, Integer, Hash)>] PlanBenCodePlaceVBAResponse data, response status code and response headers
    def create_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlacesApi.create_plan_ben_code_place ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlacesApi.create_plan_ben_code_place"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlacesApi.create_plan_ben_code_place"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlacesApi.create_plan_ben_code_place"
      end
      # verify the required parameter 'plan_ben_code_place' is set
      if @api_client.config.client_side_validation && plan_ben_code_place.nil?
        fail ArgumentError, "Missing the required parameter 'plan_ben_code_place' when calling PlanBenefitPlacesApi.create_plan_ben_code_place"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/places'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_ben_code_place)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenCodePlaceVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlacesApi.create_plan_ben_code_place",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlacesApi#create_plan_ben_code_place\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanBenCodePlace
    # Deletes an PlanBenCodePlace
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, place_code, opts = {})
      delete_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, opts)
      nil
    end

    # Delete PlanBenCodePlace
    # Deletes an PlanBenCodePlace
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlacesApi.delete_plan_ben_code_place ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlacesApi.delete_plan_ben_code_place"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlacesApi.delete_plan_ben_code_place"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlacesApi.delete_plan_ben_code_place"
      end
      # verify the required parameter 'place_code' is set
      if @api_client.config.client_side_validation && place_code.nil?
        fail ArgumentError, "Missing the required parameter 'place_code' when calling PlanBenefitPlacesApi.delete_plan_ben_code_place"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/places/{placeCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'placeCode' + '}', CGI.escape(place_code.to_s))

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
        :operation => :"PlanBenefitPlacesApi.delete_plan_ben_code_place",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlacesApi#delete_plan_ben_code_place\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanBenCodePlace
    # Gets PlanBenCodePlace
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodePlaceVBAResponse]
    def get_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, place_code, opts = {})
      data, _status_code, _headers = get_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, opts)
      data
    end

    # Get PlanBenCodePlace
    # Gets PlanBenCodePlace
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodePlaceVBAResponse, Integer, Hash)>] PlanBenCodePlaceVBAResponse data, response status code and response headers
    def get_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlacesApi.get_plan_ben_code_place ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlacesApi.get_plan_ben_code_place"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlacesApi.get_plan_ben_code_place"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlacesApi.get_plan_ben_code_place"
      end
      # verify the required parameter 'place_code' is set
      if @api_client.config.client_side_validation && place_code.nil?
        fail ArgumentError, "Missing the required parameter 'place_code' when calling PlanBenefitPlacesApi.get_plan_ben_code_place"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/places/{placeCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'placeCode' + '}', CGI.escape(place_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenCodePlaceVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlacesApi.get_plan_ben_code_place",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlacesApi#get_plan_ben_code_place\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanBenCodePlace
    # Lists all PlanBenCodePlace for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodePlaceListVBAResponse]
    def list_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, opts = {})
      data, _status_code, _headers = list_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, opts)
      data
    end

    # List PlanBenCodePlace
    # Lists all PlanBenCodePlace for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodePlaceListVBAResponse, Integer, Hash)>] PlanBenCodePlaceListVBAResponse data, response status code and response headers
    def list_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlacesApi.list_plan_ben_code_place ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlacesApi.list_plan_ben_code_place"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlacesApi.list_plan_ben_code_place"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlacesApi.list_plan_ben_code_place"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/places'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenCodePlaceListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlacesApi.list_plan_ben_code_place",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlacesApi#list_plan_ben_code_place\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanBenCodePlace
    # Create or Update multiple PlanBenCodePlace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_place [Array<PlanBenCodePlace>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place, opts = {})
      data, _status_code, _headers = update_batch_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place, opts)
      data
    end

    # Create or Update Batch PlanBenCodePlace
    # Create or Update multiple PlanBenCodePlace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_place [Array<PlanBenCodePlace>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlacesApi.update_batch_plan_ben_code_place ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlacesApi.update_batch_plan_ben_code_place"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlacesApi.update_batch_plan_ben_code_place"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlacesApi.update_batch_plan_ben_code_place"
      end
      # verify the required parameter 'plan_ben_code_place' is set
      if @api_client.config.client_side_validation && plan_ben_code_place.nil?
        fail ArgumentError, "Missing the required parameter 'plan_ben_code_place' when calling PlanBenefitPlacesApi.update_batch_plan_ben_code_place"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/places-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_ben_code_place)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlacesApi.update_batch_plan_ben_code_place",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlacesApi#update_batch_plan_ben_code_place\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PlanBenCodePlace
    # Updates a specific PlanBenCodePlace.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param plan_ben_code_place [PlanBenCodePlace] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodePlaceVBAResponse]
    def update_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, place_code, plan_ben_code_place, opts = {})
      data, _status_code, _headers = update_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_ben_code_place, opts)
      data
    end

    # Update PlanBenCodePlace
    # Updates a specific PlanBenCodePlace.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param plan_ben_code_place [PlanBenCodePlace] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodePlaceVBAResponse, Integer, Hash)>] PlanBenCodePlaceVBAResponse data, response status code and response headers
    def update_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_ben_code_place, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlacesApi.update_plan_ben_code_place ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlacesApi.update_plan_ben_code_place"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlacesApi.update_plan_ben_code_place"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlacesApi.update_plan_ben_code_place"
      end
      # verify the required parameter 'place_code' is set
      if @api_client.config.client_side_validation && place_code.nil?
        fail ArgumentError, "Missing the required parameter 'place_code' when calling PlanBenefitPlacesApi.update_plan_ben_code_place"
      end
      # verify the required parameter 'plan_ben_code_place' is set
      if @api_client.config.client_side_validation && plan_ben_code_place.nil?
        fail ArgumentError, "Missing the required parameter 'plan_ben_code_place' when calling PlanBenefitPlacesApi.update_plan_ben_code_place"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/places/{placeCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'placeCode' + '}', CGI.escape(place_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_ben_code_place)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenCodePlaceVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlacesApi.update_plan_ben_code_place",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlacesApi#update_plan_ben_code_place\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
