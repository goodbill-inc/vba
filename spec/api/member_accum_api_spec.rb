=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::MemberAccumApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MemberAccumApi' do
  before do
    # run before each test
    @api_instance = Vba::MemberAccumApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemberAccumApi' do
    it 'should create an instance of MemberAccumApi' do
      expect(@api_instance).to be_instance_of(Vba::MemberAccumApi)
    end
  end

  # unit tests for create_member_accum
  # Create MemberAccum
  # Creates a new MemberAccum
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_accum 
  # @param [Hash] opts the optional parameters
  # @return [MemberAccumVBAResponse]
  describe 'create_member_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_member_accum
  # Delete MemberAccum
  # Deletes an MemberAccum
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param group_id Group ID
  # @param plan_year Plan Year
  # @param plan_type Plan Type
  # @param benefit_code Benefit Code
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_member_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_member_accum
  # Get MemberAccum
  # Gets MemberAccum
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param group_id Group ID
  # @param plan_year Plan Year
  # @param plan_type Plan Type
  # @param benefit_code Benefit Code
  # @param [Hash] opts the optional parameters
  # @return [MemberAccumVBAResponse]
  describe 'get_member_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_member_accum
  # List MemberAccum
  # Lists all MemberAccum for the given subscriberID and memberSeq
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [MemberAccumListVBAResponse]
  describe 'list_member_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_member_accum
  # Create or Update Batch MemberAccum
  # Create or Update multiple MemberAccum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_accum 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_member_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_member_accum
  # Update MemberAccum
  # Updates a specific MemberAccum.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param group_id Group ID
  # @param plan_year Plan Year
  # @param plan_type Plan Type
  # @param benefit_code Benefit Code
  # @param member_accum 
  # @param [Hash] opts the optional parameters
  # @return [MemberAccumVBAResponse]
  describe 'update_member_accum test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
