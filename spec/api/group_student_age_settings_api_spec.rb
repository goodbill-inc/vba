=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::GroupStudentAgeSettingsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GroupStudentAgeSettingsApi' do
  before do
    # run before each test
    @api_instance = Vba::GroupStudentAgeSettingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupStudentAgeSettingsApi' do
    it 'should create an instance of GroupStudentAgeSettingsApi' do
      expect(@api_instance).to be_instance_of(Vba::GroupStudentAgeSettingsApi)
    end
  end

  # unit tests for create_group_student_age
  # Create GroupStudentAge
  # Creates a new GroupStudentAge
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param group_student_age 
  # @param [Hash] opts the optional parameters
  # @return [GroupStudentAgeVBAResponse]
  describe 'create_group_student_age test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_group_student_age
  # Delete GroupStudentAge
  # Deletes an GroupStudentAge
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param group_student_age_key GroupStudentAge Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group_student_age test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_group_student_age
  # Get GroupStudentAge
  # Gets GroupStudentAge
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param group_student_age_key GroupStudentAge Key
  # @param [Hash] opts the optional parameters
  # @return [GroupStudentAgeVBAResponse]
  describe 'get_group_student_age test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_group_student_age
  # List GroupStudentAge
  # Lists all GroupStudentAge for the given groupID
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [GroupStudentAgeListVBAResponse]
  describe 'list_group_student_age test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_group_student_age
  # Create or Update Batch GroupStudentAge
  # Create or Update multiple GroupStudentAge at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param group_student_age 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_group_student_age test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_group_student_age
  # Update GroupStudentAge
  # Updates a specific GroupStudentAge.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param group_student_age_key GroupStudentAge Key
  # @param group_student_age 
  # @param [Hash] opts the optional parameters
  # @return [GroupStudentAgeVBAResponse]
  describe 'update_group_student_age test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
