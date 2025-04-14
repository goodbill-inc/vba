=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CareCaseWorkLogSecondaryLogTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CareCaseWorkLogSecondaryLogTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::CareCaseWorkLogSecondaryLogTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CareCaseWorkLogSecondaryLogTypesApi' do
    it 'should create an instance of CareCaseWorkLogSecondaryLogTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::CareCaseWorkLogSecondaryLogTypesApi)
    end
  end

  # unit tests for create_care_case_work_secondary_log_type
  # Create CareCaseWorkSecondaryLogType
  # Creates a new CareCaseWorkSecondaryLogType
  # @param vbasoftware_database Target database
  # @param work_log_type WorkLog Type
  # @param care_case_work_secondary_log_type 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseWorkSecondaryLogTypeVBAResponse]
  describe 'create_care_case_work_secondary_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_care_case_work_secondary_log_type
  # Delete CareCaseWorkSecondaryLogType
  # Deletes an CareCaseWorkSecondaryLogType
  # @param vbasoftware_database Target database
  # @param work_log_type WorkLog Type
  # @param work_log_secondary_type WorkLog SecondaryType
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_care_case_work_secondary_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_care_case_work_secondary_log_type
  # Get CareCaseWorkSecondaryLogType
  # Gets CareCaseWorkSecondaryLogType
  # @param vbasoftware_database Target database
  # @param work_log_type WorkLog Type
  # @param work_log_secondary_type WorkLog SecondaryType
  # @param [Hash] opts the optional parameters
  # @return [CareCaseWorkSecondaryLogTypeVBAResponse]
  describe 'get_care_case_work_secondary_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_care_case_work_secondary_log_type
  # List CareCaseWorkSecondaryLogType
  # Lists all CareCaseWorkSecondaryLogType for the given workLogType
  # @param vbasoftware_database Target database
  # @param work_log_type WorkLog Type
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CareCaseWorkSecondaryLogTypeListVBAResponse]
  describe 'list_care_case_work_secondary_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_care_case_work_secondary_log_type
  # Create or Update Batch CareCaseWorkSecondaryLogType
  # Create or Update multiple CareCaseWorkSecondaryLogType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param work_log_type WorkLog Type
  # @param care_case_work_secondary_log_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_care_case_work_secondary_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_care_case_work_secondary_log_type
  # Update CareCaseWorkSecondaryLogType
  # Updates a specific CareCaseWorkSecondaryLogType.
  # @param vbasoftware_database Target database
  # @param work_log_type WorkLog Type
  # @param work_log_secondary_type WorkLog SecondaryType
  # @param care_case_work_secondary_log_type 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseWorkSecondaryLogTypeVBAResponse]
  describe 'update_care_case_work_secondary_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
