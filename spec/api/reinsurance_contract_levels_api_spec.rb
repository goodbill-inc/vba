=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ReinsuranceContractLevelsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReinsuranceContractLevelsApi' do
  before do
    # run before each test
    @api_instance = Vba::ReinsuranceContractLevelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReinsuranceContractLevelsApi' do
    it 'should create an instance of ReinsuranceContractLevelsApi' do
      expect(@api_instance).to be_instance_of(Vba::ReinsuranceContractLevelsApi)
    end
  end

  # unit tests for create_reins_level
  # Create ReinsLevel
  # Creates a new ReinsLevel
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_level 
  # @param [Hash] opts the optional parameters
  # @return [ReinsLevelVBAResponse]
  describe 'create_reins_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_reins_level
  # Delete ReinsLevel
  # Deletes an ReinsLevel
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_level_seq ReinsLevel Seq
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_reins_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_reins_level_trans
  # Generate ReinsLevel Transactions
  # Creates new Reinsurance Transactions based on Reinsurance Level configurations.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param [Hash] opts the optional parameters
  # @return [Int32VBAResponse]
  describe 'generate_reins_level_trans test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_reins_level
  # Get ReinsLevel
  # Gets ReinsLevel
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_level_seq ReinsLevel Seq
  # @param [Hash] opts the optional parameters
  # @return [ReinsLevelVBAResponse]
  describe 'get_reins_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_reins_level
  # List ReinsLevel
  # Lists all ReinsLevel for the given reinsContractKey
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ReinsLevelListVBAResponse]
  describe 'list_reins_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_reins_level
  # Create or Update Batch ReinsLevel
  # Create or Update multiple ReinsLevel at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_level 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_reins_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_reins_level
  # Update ReinsLevel
  # Updates a specific ReinsLevel.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_level_seq ReinsLevel Seq
  # @param reins_level 
  # @param [Hash] opts the optional parameters
  # @return [ReinsLevelVBAResponse]
  describe 'update_reins_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
