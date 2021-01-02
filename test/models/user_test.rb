require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Example', email: 'example@example.com', password: 'foobar', password_confirmation: 'foobar')
  end

  test 'user should be valid' do
    @user.name = '  '
    assert_not @user.valid?
  end

  test 'name should not be too lengthy' do
    @user.name = 'a' * 51
    assert_not @user.valid?
  end

  test 'email should be present' do
    @user.email = ' '
    assert_not @user.valid?
  end

  test 'email should not be too lengthy' do
    @user.email = 'a' * 251 + '@example.com'
    assert_not @user.valid?
  end
end
