=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PremiumRatesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PremiumRatesApi' do
  before do
    # run before each test
    @api_instance = Vba::PremiumRatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PremiumRatesApi' do
    it 'should create an instance of PremiumRatesApi' do
      expect(@api_instance).to be_instance_of(Vba::PremiumRatesApi)
    end
  end

  # unit tests for add_prem_rate_from_template
  # Add Rate from Template
  # Create a new Premium Rate based on the selected Template Rate.
  # @param vbasoftware_database Target database
  # @param prem_rate_key PremRate Key
  # @param billing_add_rate_from_template_config 
  # @param [Hash] opts the optional parameters
  # @return [PremRateVBAResponse]
  describe 'add_prem_rate_from_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for billing_rate_change
  # Change Premium Rates
  # Take a list of Rates and a set of configuration options and change those rates.
  # @param vbasoftware_database Target database
  # @param billing_rate_modify_config 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'billing_rate_change test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for billing_rate_copy
  # Copy Premium Rates
  # Take a list of Rates and a set of configuration options and copy those rates.
  # @param vbasoftware_database Target database
  # @param billing_rate_modify_config 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'billing_rate_copy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_prem_rate
  # Create PremRate
  # Creates a new PremRate
  # @param vbasoftware_database Target database
  # @param prem_rate 
  # @param [Hash] opts the optional parameters
  # @return [PremRateVBAResponse]
  describe 'create_prem_rate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_prem_rate
  # Delete PremRate
  # Deletes an PremRate
  # @param vbasoftware_database Target database
  # @param prem_rate_key PremRate Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_prem_rate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_prem_rate
  # Get PremRate
  # Gets PremRate
  # @param vbasoftware_database Target database
  # @param prem_rate_key PremRate Key
  # @param [Hash] opts the optional parameters
  # @return [PremRateVBAResponse]
  describe 'get_prem_rate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_included_prem_rates
  # List Included PremRate
  # Lists all PremRate included in the specified Group ID and Division ID.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :division_id Division ID
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [PremRateListVBAResponse]
  describe 'list_included_prem_rates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_prem_rate
  # List PremRate
  # Lists all PremRate
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :prem_rate_type PremRate_Type
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [PremRateListVBAResponse]
  describe 'list_prem_rate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_prem_rate_nested
  # List Premium Rates nested by Division/Plan/Category/Basis
  # Lists all Premium Rates for the given groupID and have it nested by Division, then by Plan, then by Rate Category, then by Rate Basis.
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :prem_rate_type PremRate_Type
  # @option opts [String] :group_id Group ID
  # @return [PremRateNestedListVBAResponse]
  describe 'list_prem_rate_nested test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_prem_rate
  # Create or Update Batch PremRate
  # Create or Update multiple PremRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param prem_rate 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_prem_rate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_prem_rate
  # Update PremRate
  # Updates a specific PremRate.
  # @param vbasoftware_database Target database
  # @param prem_rate_key PremRate Key
  # @param prem_rate 
  # @param [Hash] opts the optional parameters
  # @return [PremRateVBAResponse]
  describe 'update_prem_rate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
