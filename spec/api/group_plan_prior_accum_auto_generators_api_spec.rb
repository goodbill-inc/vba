=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::GroupPlanPriorAccumAutoGeneratorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GroupPlanPriorAccumAutoGeneratorsApi' do
  before do
    # run before each test
    @api_instance = Vba::GroupPlanPriorAccumAutoGeneratorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupPlanPriorAccumAutoGeneratorsApi' do
    it 'should create an instance of GroupPlanPriorAccumAutoGeneratorsApi' do
      expect(@api_instance).to be_instance_of(Vba::GroupPlanPriorAccumAutoGeneratorsApi)
    end
  end

  # unit tests for create_group_plan_year_auto_prior_accum
  # Create GroupPlanYearAutoPriorAccum
  # Creates a new GroupPlanYearAutoPriorAccum
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param plan_year Plan Year
  # @param group_plan_year_auto_prior_accum 
  # @param [Hash] opts the optional parameters
  # @return [GroupPlanYearAutoPriorAccumVBAResponse]
  describe 'create_group_plan_year_auto_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_group_plan_year_auto_prior_accum
  # Delete GroupPlanYearAutoPriorAccum
  # Deletes an GroupPlanYearAutoPriorAccum
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param plan_year Plan Year
  # @param group_plan_year_auto_prior_accum_key GroupPlanYearAutoPriorAccum Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group_plan_year_auto_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_group_plan_year_auto_prior_accum
  # Get GroupPlanYearAutoPriorAccum
  # Gets GroupPlanYearAutoPriorAccum
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param plan_year Plan Year
  # @param group_plan_year_auto_prior_accum_key GroupPlanYearAutoPriorAccum Key
  # @param [Hash] opts the optional parameters
  # @return [GroupPlanYearAutoPriorAccumVBAResponse]
  describe 'get_group_plan_year_auto_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_group_plan_year_auto_prior_accum
  # List GroupPlanYearAutoPriorAccum
  # Lists all GroupPlanYearAutoPriorAccum for the given groupID and divisionID and planYear
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param plan_year Plan Year
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [GroupPlanYearAutoPriorAccumListVBAResponse]
  describe 'list_group_plan_year_auto_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_group_plan_year_auto_prior_accum
  # Create or Update Batch GroupPlanYearAutoPriorAccum
  # Create or Update multiple GroupPlanYearAutoPriorAccum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param plan_year Plan Year
  # @param group_plan_year_auto_prior_accum 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_group_plan_year_auto_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_group_plan_year_auto_prior_accum
  # Update GroupPlanYearAutoPriorAccum
  # Updates a specific GroupPlanYearAutoPriorAccum.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param plan_year Plan Year
  # @param group_plan_year_auto_prior_accum_key GroupPlanYearAutoPriorAccum Key
  # @param group_plan_year_auto_prior_accum 
  # @param [Hash] opts the optional parameters
  # @return [GroupPlanYearAutoPriorAccumVBAResponse]
  describe 'update_group_plan_year_auto_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
