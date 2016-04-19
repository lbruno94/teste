require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(nome: 'Example User', email: 'user@example.com', nivel_conta: 1)
  end

  test "should be valid?" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "    "
    asset_not @user.valid?
  end
end
