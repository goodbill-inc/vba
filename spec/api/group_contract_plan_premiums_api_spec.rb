=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::GroupContractPlanPremiumsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GroupContractPlanPremiumsApi' do
  before do
    # run before each test
    @api_instance = Vba::GroupContractPlanPremiumsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupContractPlanPremiumsApi' do
    it 'should create an instance of GroupContractPlanPremiumsApi' do
      expect(@api_instance).to be_instance_of(Vba::GroupContractPlanPremiumsApi)
    end
  end

  # unit tests for create_group_contract_plan_premium
  # Create GroupContractPlanPremium
  # Creates a new GroupContractPlanPremium
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param plan_id Plan ID
  # @param group_contract_plan_premium 
  # @param [Hash] opts the optional parameters
  # @return [GroupContractPlanPremiumVBAResponse]
  describe 'create_group_contract_plan_premium test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_group_contract_plan_premium
  # Delete GroupContractPlanPremium
  # Deletes an GroupContractPlanPremium
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param plan_id Plan ID
  # @param group_contract_plan_premium_key GroupContractPlanPremium Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group_contract_plan_premium test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_group_contract_plan_premium
  # Get GroupContractPlanPremium
  # Gets GroupContractPlanPremium
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param plan_id Plan ID
  # @param group_contract_plan_premium_key GroupContractPlanPremium Key
  # @param [Hash] opts the optional parameters
  # @return [GroupContractPlanPremiumVBAResponse]
  describe 'get_group_contract_plan_premium test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_group_contract_plan_premium
  # List GroupContractPlanPremium
  # Lists all GroupContractPlanPremium for the given groupID and divisionID and coverageStart and planID
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param plan_id Plan ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [GroupContractPlanPremiumListVBAResponse]
  describe 'list_group_contract_plan_premium test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_group_contract_plan_premium
  # Create or Update Batch GroupContractPlanPremium
  # Create or Update multiple GroupContractPlanPremium at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param plan_id Plan ID
  # @param group_contract_plan_premium 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_group_contract_plan_premium test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_group_contract_plan_premium
  # Update GroupContractPlanPremium
  # Updates a specific GroupContractPlanPremium.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param plan_id Plan ID
  # @param group_contract_plan_premium_key GroupContractPlanPremium Key
  # @param group_contract_plan_premium 
  # @param [Hash] opts the optional parameters
  # @return [GroupContractPlanPremiumVBAResponse]
  describe 'update_group_contract_plan_premium test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
