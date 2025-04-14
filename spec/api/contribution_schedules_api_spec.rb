=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ContributionSchedulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContributionSchedulesApi' do
  before do
    # run before each test
    @api_instance = Vba::ContributionSchedulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContributionSchedulesApi' do
    it 'should create an instance of ContributionSchedulesApi' do
      expect(@api_instance).to be_instance_of(Vba::ContributionSchedulesApi)
    end
  end

  # unit tests for create_contribution_schedule
  # Create ContributionSchedule
  # Creates a new ContributionSchedule
  # @param vbasoftware_database Target database
  # @param contribution_schedule 
  # @param [Hash] opts the optional parameters
  # @return [ContributionScheduleVBAResponse]
  describe 'create_contribution_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_contribution_schedule
  # Delete ContributionSchedule
  # Deletes an ContributionSchedule
  # @param vbasoftware_database Target database
  # @param contribution_schedule Contribution Schedule
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_contribution_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_contribution_schedule
  # Get ContributionSchedule
  # Gets ContributionSchedule
  # @param vbasoftware_database Target database
  # @param contribution_schedule Contribution Schedule
  # @param [Hash] opts the optional parameters
  # @return [ContributionScheduleVBAResponse]
  describe 'get_contribution_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_contribution_schedule
  # List ContributionSchedule
  # Lists all ContributionSchedule
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ContributionScheduleListVBAResponse]
  describe 'list_contribution_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_contribution_schedule
  # Create or Update Batch ContributionSchedule
  # Create or Update multiple ContributionSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param contribution_schedule 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_contribution_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_contribution_schedule
  # Update ContributionSchedule
  # Updates a specific ContributionSchedule.
  # @param vbasoftware_database Target database
  # @param contribution_schedule Contribution Schedule
  # @param contribution_schedule2 
  # @param [Hash] opts the optional parameters
  # @return [ContributionScheduleVBAResponse]
  describe 'update_contribution_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
