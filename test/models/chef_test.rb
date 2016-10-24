require 'test_helper'

class ChefTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(chefname: "McDonald", email: "McDonald@example.com")
  end

  test "chefname must be present" do
    @chef.chefname = " "
    assert_not @chef.valid?
  end

  test "chefname must be not less than 3 chars" do
    @chef.chefname = "aa"
    assert_not @chef.valid?
  end

  test "chefname must me not more than 40 chars" do
    @chef.chefname = "a" * 41
    assert_not @chef.valid?
  end

  test "email must be present" do
    @chef.email = " "
    assert_not @chef.valid?
  end

  test "email must ne unique" do
    chef_2 = @chef.dup
    chef_2.email = @chef.email.upcase
    @chef.save
    assert_not chef_2.valid?
  end

  test "email must be valid" do

  end

end