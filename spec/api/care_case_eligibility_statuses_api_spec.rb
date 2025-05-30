=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CareCaseEligibilityStatusesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CareCaseEligibilityStatusesApi' do
  before do
    # run before each test
    @api_instance = Vba::CareCaseEligibilityStatusesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CareCaseEligibilityStatusesApi' do
    it 'should create an instance of CareCaseEligibilityStatusesApi' do
      expect(@api_instance).to be_instance_of(Vba::CareCaseEligibilityStatusesApi)
    end
  end

  # unit tests for create_care_case_eligibility_status
  # Create CareCaseEligibilityStatus
  # Creates a new CareCaseEligibilityStatus
  # @param vbasoftware_database Target database
  # @param care_case_eligibility_status 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseEligibilityStatusVBAResponse]
  describe 'create_care_case_eligibility_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_care_case_eligibility_status
  # Delete CareCaseEligibilityStatus
  # Deletes an CareCaseEligibilityStatus
  # @param vbasoftware_database Target database
  # @param care_case_eligibility_status_id CareCaseEligibilityStatus ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_care_case_eligibility_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_care_case_eligibility_status
  # Get CareCaseEligibilityStatus
  # Gets CareCaseEligibilityStatus
  # @param vbasoftware_database Target database
  # @param care_case_eligibility_status_id CareCaseEligibilityStatus ID
  # @param [Hash] opts the optional parameters
  # @return [CareCaseEligibilityStatusVBAResponse]
  describe 'get_care_case_eligibility_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_care_case_eligibility_status
  # List CareCaseEligibilityStatus
  # Lists all CareCaseEligibilityStatus
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CareCaseEligibilityStatusListVBAResponse]
  describe 'list_care_case_eligibility_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_care_case_eligibility_status
  # Create or Update Batch CareCaseEligibilityStatus
  # Create or Update multiple CareCaseEligibilityStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param care_case_eligibility_status 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_care_case_eligibility_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_care_case_eligibility_status
  # Update CareCaseEligibilityStatus
  # Updates a specific CareCaseEligibilityStatus.
  # @param vbasoftware_database Target database
  # @param care_case_eligibility_status_id CareCaseEligibilityStatus ID
  # @param care_case_eligibility_status 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseEligibilityStatusVBAResponse]
  describe 'update_care_case_eligibility_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
