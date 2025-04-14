=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PlanLineageDetailsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PlanLineageDetailsApi' do
  before do
    # run before each test
    @api_instance = Vba::PlanLineageDetailsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlanLineageDetailsApi' do
    it 'should create an instance of PlanLineageDetailsApi' do
      expect(@api_instance).to be_instance_of(Vba::PlanLineageDetailsApi)
    end
  end

  # unit tests for create_plan_lineage_detail
  # Create PlanLineageDetail
  # Creates a new PlanLineageDetail
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param plan_lineage_id Plan Lineage ID
  # @param plan_lineage_detail 
  # @param [Hash] opts the optional parameters
  # @return [PlanLineageDetailVBAResponse]
  describe 'create_plan_lineage_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_plan_lineage_detail
  # Delete PlanLineageDetail
  # Deletes an PlanLineageDetail
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param plan_lineage_id Plan Lineage ID
  # @param plan_lineage_detail_key PlanLineageDetail Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_plan_lineage_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_plan_lineage_detail
  # Get PlanLineageDetail
  # Gets PlanLineageDetail
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param plan_lineage_id Plan Lineage ID
  # @param plan_lineage_detail_key PlanLineageDetail Key
  # @param [Hash] opts the optional parameters
  # @return [PlanLineageDetailVBAResponse]
  describe 'get_plan_lineage_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_plan_lineage_detail
  # List PlanLineageDetail
  # Lists all PlanLineageDetail for the given planID and planLineageID
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param plan_lineage_id Plan Lineage ID
  # @param [Hash] opts the optional parameters
  # @return [PlanLineageDetailListVBAResponse]
  describe 'list_plan_lineage_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_plan_lineage_detail
  # Create or Update Batch PlanLineageDetail
  # Create or Update multiple PlanLineageDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param plan_lineage_id Plan Lineage ID
  # @param plan_lineage_detail 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_plan_lineage_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_plan_lineage_detail
  # Update PlanLineageDetail
  # Updates a specific PlanLineageDetail.
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param plan_lineage_id Plan Lineage ID
  # @param plan_lineage_detail_key PlanLineageDetail Key
  # @param plan_lineage_detail 
  # @param [Hash] opts the optional parameters
  # @return [PlanLineageDetailVBAResponse]
  describe 'update_plan_lineage_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
