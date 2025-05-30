=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::MemberPriorAccumulatorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MemberPriorAccumulatorsApi' do
  before do
    # run before each test
    @api_instance = Vba::MemberPriorAccumulatorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemberPriorAccumulatorsApi' do
    it 'should create an instance of MemberPriorAccumulatorsApi' do
      expect(@api_instance).to be_instance_of(Vba::MemberPriorAccumulatorsApi)
    end
  end

  # unit tests for create_member_prior_accum
  # Create MemberPriorAccum
  # Creates a new MemberPriorAccum
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_prior_accum 
  # @param [Hash] opts the optional parameters
  # @return [MemberPriorAccumVBAResponse]
  describe 'create_member_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_member_prior_accum
  # Delete MemberPriorAccum
  # Deletes an MemberPriorAccum
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param group_id Group ID
  # @param division_id Division ID
  # @param plan_year Plan Year
  # @param plan_type Plan Type
  # @param benefit_code Benefit Code
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_member_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_member_prior_accum
  # Get MemberPriorAccum
  # Gets MemberPriorAccum
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param group_id Group ID
  # @param division_id Division ID
  # @param plan_year Plan Year
  # @param plan_type Plan Type
  # @param benefit_code Benefit Code
  # @param [Hash] opts the optional parameters
  # @return [MemberPriorAccumVBAResponse]
  describe 'get_member_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_member_prior_accum
  # List MemberPriorAccum
  # Lists all MemberPriorAccum for the given subscriberID and memberSeq
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [MemberPriorAccumListVBAResponse]
  describe 'list_member_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_member_prior_accum
  # Create or Update Batch MemberPriorAccum
  # Create or Update multiple MemberPriorAccum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_prior_accum 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_member_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_member_prior_accum
  # Update MemberPriorAccum
  # Updates a specific MemberPriorAccum.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param group_id Group ID
  # @param division_id Division ID
  # @param plan_year Plan Year
  # @param plan_type Plan Type
  # @param benefit_code Benefit Code
  # @param member_prior_accum 
  # @param [Hash] opts the optional parameters
  # @return [MemberPriorAccumVBAResponse]
  describe 'update_member_prior_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
